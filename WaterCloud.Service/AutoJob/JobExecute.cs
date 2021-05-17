using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Reflection;
using System.Threading.Tasks;
using Quartz;
using Quartz.Impl.Triggers;
using Quartz.Spi;
using SqlSugar;
using WaterCloud.Code;
using WaterCloud.DataBase;
using WaterCloud.Domain.SystemSecurity;
using WaterCloud.Service.SystemSecurity;

namespace WaterCloud.Service.AutoJob
{
    public class JobExecute : IJob
    {
        private IScheduler _scheduler;
        private ISchedulerFactory _schedulerFactory;
        private IJobFactory _iocJobfactory;
        private readonly IHttpClientFactory _httpClient;
        private readonly IUnitOfWork _unitOfWork;

        public JobExecute(ISchedulerFactory schedulerFactory, IJobFactory iocJobfactory, IHttpClientFactory httpClient,IUnitOfWork unitOfWork)
        {
            _scheduler = schedulerFactory.GetScheduler().GetAwaiter().GetResult();
            _scheduler.JobFactory = iocJobfactory;
            _schedulerFactory = schedulerFactory;
            _iocJobfactory = iocJobfactory;
            _httpClient = httpClient;
            _unitOfWork = unitOfWork;
        }

        public Task Execute(IJobExecutionContext context)
        {
            return Task.Run(async () =>
            {
                string jobId="";
                JobDataMap jobData = null;
                OpenJobEntity dbJobEntity = null;
                DateTime now = DateTime.Now;
                try
                {
                    jobData = context.JobDetail.JobDataMap;
                    jobId = jobData["F_Id"].ToString();
                    OpenJobsService autoJobService = new OpenJobsService(_unitOfWork, _schedulerFactory, _iocJobfactory,_httpClient);
                    // 获取数据库中的任务
                    dbJobEntity = await autoJobService.GetForm(jobId);
                    if (dbJobEntity != null)
                    {
                        if (dbJobEntity.F_EnabledMark == true)
                        {
                            CronTriggerImpl trigger = context.Trigger as CronTriggerImpl;
                            if (trigger != null)
                            {
                                if (trigger.CronExpressionString != dbJobEntity.F_CronExpress)
                                {
                                    // 更新任务周期
                                    trigger.CronExpressionString = dbJobEntity.F_CronExpress;
                                    await _scheduler.RescheduleJob(trigger.Key, trigger);
                                    return;
                                }
                                #region 执行任务
                                OpenJobLogEntity log = new OpenJobLogEntity();
                                log.F_Id = Utils.GuId();
                                log.F_JobId = jobId;
                                log.F_JobName = dbJobEntity.F_JobName;
                                log.F_CreatorTime = now;
                                _unitOfWork.CurrentBeginTrans();
                                AlwaysResult result = new AlwaysResult();
                                if (dbJobEntity.F_JobType == 0)
                                {
                                    //反射执行就行
                                    var path = AppDomain.CurrentDomain.RelativeSearchPath ?? AppDomain.CurrentDomain.BaseDirectory;
                                    //反射取指定前后缀的dll
                                    var referencedAssemblies = Directory.GetFiles(path, "WaterCloud.*.dll").Select(Assembly.LoadFrom).ToArray();
                                    var types = referencedAssemblies
                                        .SelectMany(a => a.GetTypes().Where(t => t.GetInterfaces()
                                        .Contains(typeof(IJobTask)))).ToArray();
                                    string filename = dbJobEntity.F_FileName;
                                    var implementType = types.Where(x => x.IsClass && x.FullName == filename).FirstOrDefault();
                                    var obj = System.Activator.CreateInstance(implementType, _unitOfWork);       // 创建实例(带参数)
                                    MethodInfo method = implementType.GetMethod("Start", new Type[] { });      // 获取方法信息
                                    object[] parameters = null;
                                    result = ((Task<AlwaysResult>)method.Invoke(obj, parameters)).GetAwaiter().GetResult();     // 调用方法，参数为空
                                    if (result.state.ToString() == ResultType.success.ToString())
                                    {
                                        log.F_EnabledMark = true;
                                        log.F_Description = "执行成功，" + result.message.ToString();
                                    }
                                    else
                                    {
                                        log.F_EnabledMark = false;
                                        log.F_Description = "执行失败，" + result.message.ToString();
                                    }
                                }
                                else
                                {
                                    HttpMethod method = HttpMethod.Get;
                                    switch (dbJobEntity.F_JobType)
                                    {
                                        case 1:
                                            method = HttpMethod.Get;
                                            break;
                                        case 2:
                                            method = HttpMethod.Post;
                                            break;
                                        case 3:
                                            method = HttpMethod.Put;
                                            break;
                                        case 4:
                                            method = HttpMethod.Delete;
                                            break;
                                    }
                                    var dic = dbJobEntity.F_RequestHeaders.ToObject<Dictionary<string, string>>();
                                    try
                                    {
                                        var temp = await new HttpWebClient(_httpClient).ExecuteAsync(dbJobEntity.F_RequestUrl, method, dbJobEntity.F_RequestString, dic);
                                        log.F_EnabledMark = true;
                                        log.F_Description = "执行成功。";
                                    }
                                    catch (Exception ex)
                                    {
                                        log.F_EnabledMark = false;
                                        log.F_Description = "执行失败，" + ex.Message.ToString();
                                    }
                                }
                                #endregion
                                await _unitOfWork.GetDbClient().Updateable<OpenJobEntity>(t => new OpenJobEntity
                                {
                                    F_LastRunTime = now
                                }).Where(t => t.F_Id == dbJobEntity.F_Id).ExecuteCommandAsync();
                                string HandleLogProvider = GlobalContext.SystemConfig.HandleLogProvider;
                                if (HandleLogProvider != Define.CACHEPROVIDER_REDIS)
                                {
                                    _unitOfWork.GetDbClient().Insertable(log).ExecuteCommand();
                                }
                                else
                                {
                                    await HandleLogHelper.HSetAsync(log.F_JobId, log.F_Id, log);
                                }
                                _unitOfWork.CurrentCommit();
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    _unitOfWork.CurrentRollback();
                    LogHelper.WriteWithTime(ex);
                }
            });
        }
    }
}
