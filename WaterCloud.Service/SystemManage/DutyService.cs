﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Code;
using WaterCloud.Domain.SystemManage;
using WaterCloud.Repository.SystemManage;
using System.Collections.Generic;
using System.Linq;
using System;

namespace WaterCloud.Service.SystemManage
{
    public class DutyService: IDenpendency
    {
        private IUserRepository userservice = new UserRepository();
        private IRoleRepository service = new RoleRepository();
        /// <summary>
        /// 缓存操作类
        /// </summary>
        private string cacheKey = "watercloud_dutydata_";// 岗位

        public List<RoleEntity> GetList(string keyword = "")
        {
            var cachedata = service.CheckCacheList(cacheKey + "list");
            cachedata = cachedata.Where(t => t.F_Category == 2).ToList();
            if (!string.IsNullOrEmpty(keyword))
            {
                cachedata = cachedata.Where(t => t.F_FullName.Contains(keyword) || t.F_EnCode.Contains(keyword)).ToList();
            }
            return cachedata.OrderBy(t => t.F_SortCode).ToList();
        }
        public List<RoleEntity> GetList(Pagination pagination, string keyword = "")
        {
            var expression = ExtLinq.True<RoleEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.F_FullName.Contains(keyword));
                expression = expression.Or(t => t.F_EnCode.Contains(keyword));
            }
            expression = expression.And(t => t.F_Category == 2);
            return service.FindList(expression, pagination);
        }
        public RoleEntity GetForm(string keyValue)
        {
            var cachedata = service.CheckCache(cacheKey, keyValue);
            return cachedata;
        }
        public void DeleteForm(string keyValue)
        {
            if (userservice.IQueryable(a => a.F_DutyId == keyValue).Count() > 0)
            {
                throw new Exception("岗位使用中，无法删除");
            }
            service.Delete(t => t.F_Id == keyValue);
            RedisHelper.Del(cacheKey + keyValue);
            RedisHelper.Del(cacheKey + "list");
        }
        public void SubmitForm(RoleEntity roleEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                roleEntity.Modify(keyValue);
                service.Update(roleEntity);
                RedisHelper.Del(cacheKey + keyValue);
                RedisHelper.Del(cacheKey + "list");
            }
            else
            {
                roleEntity.Create();
                roleEntity.F_Category = 2;
                service.Insert(roleEntity);
                RedisHelper.Del(cacheKey + "list");
            }
        }
    }
}
