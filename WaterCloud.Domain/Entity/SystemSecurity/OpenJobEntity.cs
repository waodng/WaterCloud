//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated by a CodeSmith Template.
//
//     DO NOT MODIFY contents of this file. Changes to this
//     file will be lost if the code is regenerated.
//     Author:Yubao Li
// </autogenerated>
//------------------------------------------------------------------------------
using System;
using System.ComponentModel;
using SqlSugar;
using System.ComponentModel.DataAnnotations;
using AutoMapper.Configuration.Annotations;

namespace WaterCloud.Domain.SystemSecurity
{
    /// <summary>
	/// 定时任务
	/// </summary>
    [SugarTable("sys_openjob")]
    [Tenant("0")]
    public partial class OpenJobEntity : IEntity<OpenJobEntity>, ICreationAudited, IDeleteAudited, IModificationAudited
    {
        [SugarColumn(ColumnName ="Id", IsPrimaryKey = true,ColumnDescription ="主键Id")]
        public string Id { get; set; }
        /// <summary>
        /// 任务名称
        /// </summary>
        [Description("任务名称")]
        [Required(ErrorMessage = "任务名称不能为空")]
        [SugarColumn(IsNullable = true, ColumnName = "JobName", ColumnDataType = "nvarchar(50)", ColumnDescription = "任务名称")]
        public string JobName { get; set; }
        /// <summary>
        /// 任务组别
        /// </summary>
        [Description("任务组别")]
        [Required(ErrorMessage = "任务组别不能为空")]
        [SugarColumn(IsNullable = true, ColumnName = "JobGroup",ColumnDataType = "nvarchar(50)", ColumnDescription = "任务组别")]
        public string JobGroup { get; set; }
        /// <summary>
        /// 文件名称
        /// </summary>
        [Description("文件名称")]
        [SugarColumn(IsNullable = true, ColumnName = "FileName", ColumnDataType = "nvarchar(100)", ColumnDescription = "文件名称")]
        public string FileName { get; set; }
        /// <summary>
        /// 开始时间
        /// </summary>
        [Description("开始时间")]
        [SugarColumn(IsNullable = true,ColumnDescription = "开始时间")]
        public System.DateTime? StarRunTime { get; set; }
        /// <summary>
        /// 结束时间
        /// </summary>
        [Description("结束时间")]
        [SugarColumn(IsNullable = true,ColumnDescription = "结束时间")]
        public System.DateTime? EndRunTime { get; set; }
        /// <summary>
        /// 最近执行时间
        /// </summary>
        [Description("最近执行时间")]
        [SugarColumn(IsNullable = true, ColumnDescription = "最近执行时间")]
        public System.DateTime? LastRunTime { get; set; }

        /// <summary>
        /// 最近执行状态
        /// </summary>
        [Description("最近执行状态")]
        [SugarColumn(IsNullable = true, ColumnDescription = "最近执行状态")]
        public bool? LastRunMark { get; set; }
        /// <summary>
        /// 上次发生错误时间
        /// </summary>
        [Description("上次发生错误时间")]
        [SugarColumn(IsNullable = true, ColumnDescription = "上次发生错误时间")]
        public DateTime? LastRunErrTime { get; set; }
        /// <summary>
        /// 上次发生错误信息
        /// </summary>
        [Description("上次发生错误信息")]
        [SugarColumn(IsNullable = true, ColumnDescription = "上次发生错误信息")]
        public string LastRunErrMsg { get; set; }
        /// <summary>
        /// CRON表达式
        /// </summary>
        [Description("CRON表达式")]
        [Required(ErrorMessage = "CRON表达式不能为空")]
        [SugarColumn(IsNullable = true, ColumnName = "CronExpress",ColumnDataType = "nvarchar(50)", ColumnDescription = "CRON表达式")]
        public string CronExpress { get; set; }
        /// <summary>
        /// 删除标记
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnDescription = "删除标记")]
        public bool? DeleteMark { get; set; }
        /// <summary>
        /// 有效标记
        /// </summary>
        [SugarColumn(IsNullable = true,ColumnDescription = "有效标记")]
        public bool? EnabledMark { get; set; }
        /// <summary>
        /// 备注
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "Description", ColumnDataType = "longtext", ColumnDescription = "备注")]
        public string Description { get; set; }
        /// <summary>
        /// 创建时间
        /// </summary>
        [SugarColumn(IsNullable = true,ColumnDescription = "公司Id")]
        public DateTime? CreatorTime { get; set; }
        /// <summary>
        /// 创建人Id
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "CreatorUserId",ColumnDataType = "nvarchar(50)", ColumnDescription = "创建人Id")]
        public string CreatorUserId { get; set; }
        /// <summary>
        /// 修改时间
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnDescription = "修改时间")]
        public DateTime? LastModifyTime { get; set; }
        /// <summary>
        /// 修改人Id
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "LastModifyUserId",ColumnDataType = "nvarchar(50)", ColumnDescription = "修改人Id")]
        public string LastModifyUserId { get; set; }
        /// <summary>
        /// 删除时间
        /// </summary>
        [SugarColumn(IsNullable = true,ColumnDescription = "删除时间")]
        public DateTime? DeleteTime { get; set; }
        /// <summary>
        /// 删除人Id
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "DeleteUserId", ColumnDataType = "nvarchar(50)", ColumnDescription = "删除人Id")]
        public string DeleteUserId { get; set; }
        /// <summary>
        /// 任务类型
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnDescription = "任务类型")]
        public int? JobType { get; set; }
        /// <summary>
        /// 请求头
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "RequestHeaders", ColumnDataType = "longtext", ColumnDescription = "请求头")]
        public string RequestHeaders { get; set; }
        /// <summary>
        /// 请求内容
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "RequestString", ColumnDataType = "longtext", ColumnDescription = "请求内容")]
        public string RequestString { get; set; }
        /// <summary>
        /// 请求url
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "RequestUrl", ColumnDataType = "longtext", ColumnDescription = "请求url")]
        public string RequestUrl { get; set; }
        /// <summary>
        /// 立即执行
        /// </summary>
        [SugarColumn(IsIgnore =true)]
        public bool? DoItNow { get; set; }
        /// <summary>
        /// 数据库序号
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "DbNumber",ColumnDataType = "nvarchar(50)", ColumnDescription = "数据库序号")]
        public string DbNumber { get; set; }
        /// <summary>
        /// 下次执行时间
        /// </summary>
        [SugarColumn(IsIgnore = true)]
        public DateTime? NextValidTimeAfter { get; set; }
        /// <summary>
        /// 是否记录日志
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "IsLog", ColumnDataType = "nvarchar(50)", ColumnDescription = "是否记录日志")]
        public string IsLog { get; set; }
        /// <summary>
        /// 执行数据库
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "JobDBProvider", ColumnDataType = "longtext", ColumnDescription = "执行数据库")]
        public string JobDBProvider { get; set; }
        /// <summary>
        /// 执行sql
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "JobSql", ColumnDataType = "longtext", ColumnDescription = "执行sql")]
        public string JobSql { get; set; }
        /// <summary>
        /// 执行sql参数
        /// </summary>
        [SugarColumn(IsNullable = true, ColumnName = "JobSqlParm", ColumnDataType = "longtext", ColumnDescription = "执行sql参数")]
        public string JobSqlParm { get; set; }
    }
}