﻿using System;
using System.Linq;
using System.Threading.Tasks;
using System.Collections.Generic;
using WaterCloud.Code;
using WaterCloud.Domain.ContentManage;
using WaterCloud.Repository.ContentManage;
using Chloe;

namespace WaterCloud.Service.ContentManage
{
    /// <summary>
    /// 创 建：超级管理员
    /// 日 期：2020-06-09 19:42
    /// 描 述：新闻类别服务类
    /// </summary>
    public class ArticleCategoryService : DataFilterService<ArticleCategoryEntity>, IDenpendency
    {
        private IArticleCategoryRepository service;
        public ArticleCategoryService(IDbContext context) : base(context)
        {
            var currentuser = OperatorProvider.Provider.GetCurrent();
            service = currentuser != null && !(currentuser.DBProvider == GlobalContext.SystemConfig.DBProvider && currentuser.DbString == GlobalContext.SystemConfig.DBConnectionString) ? new ArticleCategoryRepository(currentuser.DbString, currentuser.DBProvider) : new ArticleCategoryRepository(context);

        }

        private string cacheKey = "watercloud_cms_articlecategorydata_";
        private string className = System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.FullName.Split('.')[3];
        #region 获取数据
        public async Task<List<ArticleCategoryEntity>> GetList(string keyword = "")
        {
            var cachedata = await service.CheckCacheList(cacheKey + "list");
            if (!string.IsNullOrEmpty(keyword))
            {
                //此处需修改
                cachedata = cachedata.Where(t => t.F_FullName.Contains(keyword) || t.F_Description.Contains(keyword)).ToList();
            }
            return cachedata.Where(t => t.F_DeleteMark == false).OrderByDescending(t => t.F_CreatorTime).ToList();
        }

        public async Task<List<ArticleCategoryEntity>> GetLookList(string keyword = "")
        {
            var list =new List<ArticleCategoryEntity>();
            if (!CheckDataPrivilege(className.Substring(0, className.Length - 7)))
            {
                list = await service.CheckCacheList(cacheKey + "list");
            }
            else
            {
                var forms = GetDataPrivilege("u", className.Substring(0, className.Length - 7));
                list = forms.ToList();
            }
            if (!string.IsNullOrEmpty(keyword))
            {
                //此处需修改
                list = list.Where(u => u.F_FullName.Contains(keyword) || u.F_Description.Contains(keyword)).ToList();
            }
            return GetFieldsFilterData(list.Where(t => t.F_DeleteMark == false).OrderByDescending(t => t.F_CreatorTime).ToList(),className.Substring(0, className.Length - 7));
        }

        public async Task<List<ArticleCategoryEntity>> GetLookList(Pagination pagination,string keyword = "")
        {
            //获取数据权限
            var list = GetDataPrivilege("u", className.Substring(0, className.Length - 7));
            if (!string.IsNullOrEmpty(keyword))
            {
                //此处需修改
                list = list.Where(u => u.F_FullName.Contains(keyword) || u.F_Description.Contains(keyword));
            }
            list = list.Where(u => u.F_DeleteMark==false);
            return GetFieldsFilterData(await service.OrderList(list, pagination),className.Substring(0, className.Length - 7));
        }

        public async Task<ArticleCategoryEntity> GetForm(string keyValue)
        {
            var cachedata = await service.CheckCache(cacheKey, keyValue);
            return cachedata;
        }
        #endregion

        public async Task<ArticleCategoryEntity> GetLookForm(string keyValue)
        {
            var cachedata = await service.CheckCache(cacheKey, keyValue);
            return GetFieldsFilterData(cachedata,className.Substring(0, className.Length - 7));
        }

        #region 提交数据
        public async Task SubmitForm(ArticleCategoryEntity entity, string keyValue)
        {
            if (string.IsNullOrEmpty(keyValue))
            {
                    //此处需修改
                entity.Create();
                await service.Insert(entity);
                await CacheHelper.Remove(cacheKey + "list");
            }
            else
            {
                    //此处需修改
                entity.Modify(keyValue); 
                await service.Update(entity);
                await CacheHelper.Remove(cacheKey + keyValue);
                await CacheHelper.Remove(cacheKey + "list");
            }
        }

        public async Task DeleteForm(string keyValue)
        {
            await service.Delete(t => t.F_Id == keyValue);
            await CacheHelper.Remove(cacheKey + keyValue);
            await CacheHelper.Remove(cacheKey + "list");
        }
        #endregion

    }
}