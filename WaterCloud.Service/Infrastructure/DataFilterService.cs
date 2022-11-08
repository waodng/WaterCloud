﻿using SqlSugar;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using WaterCloud.Code;
using WaterCloud.DataBase;
using WaterCloud.Domain.SystemManage;
using WaterCloud.Domain.SystemOrganize;

namespace WaterCloud.Service
{
    public class DataFilterService<T>: RepositoryBase<T> where T : class, new()
    {
        // 用户信息
        public OperatorModel currentuser;
        // 用于当前表操作
        protected IRepositoryBase<T> repository;
        // 用于其他表操作
        protected IUnitOfWork unitofwork;
        public DataFilterService(IUnitOfWork unitOfWork):base(unitOfWork)
        {
            currentuser = OperatorProvider.Provider.GetCurrent();
            unitofwork = unitOfWork;
            repository = this;
            if (currentuser == null)
            {
                currentuser = new OperatorModel();
            }
        }
        /// <summary>
        ///  获取当前登录用户的数据访问权限(单表)
        /// </summary>
        /// <param name=""parameterName>linq表达式参数的名称，如u=>u.name中的"u"</param>
        /// <param name=""moduleName>菜单名称</param>
        /// <param name=""query>查询</param>
        /// <returns></returns>
        protected ISugarQueryable<T> GetDataPrivilege(string parametername, string moduleName = "", ISugarQueryable<T> query = null)
        {
            moduleName = string.IsNullOrEmpty(moduleName) ? ReflectionHelper.GetModuleName() : moduleName;
            if (query == null)
            {
                query = repository.IQueryable();
            }
            if (!CheckDataPrivilege(moduleName))
            {
                return GetFieldsFilterDataNew(parametername,query, moduleName);
            }
            var rule = repository.Db.Queryable<DataPrivilegeRuleEntity>().WithCache().First(u => u.ModuleCode == moduleName && u.EnabledMark == true && u.DeleteMark == false);
            if (rule.PrivilegeRules.Contains(Define.DATAPRIVILEGE_LOGINUSER) ||
                                             rule.PrivilegeRules.Contains(Define.DATAPRIVILEGE_LOGINROLE) ||
                                             rule.PrivilegeRules.Contains(Define.DATAPRIVILEGE_LOGINORG))
            {

                //即把{loginUser} =='xxxxxxx'换为 loginUser.User.Id =='xxxxxxx'，从而把当前登录的用户名与当时设计规则时选定的用户id对比
                rule.PrivilegeRules = rule.PrivilegeRules.Replace(Define.DATAPRIVILEGE_LOGINUSER, currentuser.UserId);
                var roles = currentuser.RoleId;
                //var roles = loginUser.Roles.Select(u => u.Id).ToList();//多角色
                //roles.Sort();
                rule.PrivilegeRules = rule.PrivilegeRules.Replace(Define.DATAPRIVILEGE_LOGINROLE,
                    roles);
                var orgs = currentuser.DepartmentId;
                //var orgs = loginUser.Orgs.Select(u => u.Id).ToList();//多部门
                //orgs.Sort();
                rule.PrivilegeRules = rule.PrivilegeRules.Replace(Define.DATAPRIVILEGE_LOGINORG,
                    orgs);
            }
            query = query.GenerateFilter(parametername,
                JsonHelper.ToObject<List<FilterList>>(rule.PrivilegeRules));
            return GetFieldsFilterDataNew(parametername,query, moduleName);
        }
        /// <summary>
        ///  获取当前登录用户的数据访问权限(复杂查询)
        /// </summary>
        /// <param name=""parameterName>linq表达式参数的名称，如u=>u.name中的"u"</param>
        /// <param name=""moduleName>菜单名称</param>
        /// <param name=""query>查询</param>
        /// <returns></returns>
        protected ISugarQueryable<TEntity> GetDataPrivilege<TEntity>(string parametername, string moduleName = "", ISugarQueryable<TEntity> query = null)
        {
            moduleName = string.IsNullOrEmpty(moduleName) ? ReflectionHelper.GetModuleName() : moduleName;
            if (!CheckDataPrivilege(moduleName))
            {
                return GetFieldsFilterDataNew(parametername,query, moduleName);
            }
            var rule = repository.Db.Queryable<DataPrivilegeRuleEntity>().WithCache().First(u => u.ModuleCode == moduleName && u.EnabledMark == true && u.DeleteMark == false);
            if (rule.PrivilegeRules.Contains(Define.DATAPRIVILEGE_LOGINUSER) ||
                                             rule.PrivilegeRules.Contains(Define.DATAPRIVILEGE_LOGINROLE) ||
                                             rule.PrivilegeRules.Contains(Define.DATAPRIVILEGE_LOGINORG))
            {

                //即把{loginUser} =='xxxxxxx'换为 loginUser.User.Id =='xxxxxxx'，从而把当前登录的用户名与当时设计规则时选定的用户id对比
                rule.PrivilegeRules = rule.PrivilegeRules.Replace(Define.DATAPRIVILEGE_LOGINUSER, currentuser.UserId);
                var roles = currentuser.RoleId;
                rule.PrivilegeRules = rule.PrivilegeRules.Replace(Define.DATAPRIVILEGE_LOGINROLE,
                    roles);
                var orgs = currentuser.DepartmentId;
                rule.PrivilegeRules = rule.PrivilegeRules.Replace(Define.DATAPRIVILEGE_LOGINORG,
                    orgs);
            }
            query = query.GenerateFilter(parametername,
                JsonHelper.ToObject<List<FilterList>>(rule.PrivilegeRules));
            return GetFieldsFilterDataNew(parametername,query, moduleName);
        }
        /// <summary>
        ///  获取当前登录用户是否需要数据控制
        /// </summary>
        /// <param name=""moduleName>菜单名称</param>
        /// <returns></returns>
        protected bool CheckDataPrivilege(string moduleName = "")
        {
            moduleName = string.IsNullOrEmpty(moduleName) ? ReflectionHelper.GetModuleName() : moduleName;
            if (currentuser.IsAdmin) return false;  //超级管理员特权
            var rule = repository.Db.Queryable<DataPrivilegeRuleEntity>().WithCache().First(u => u.ModuleCode == moduleName && u.EnabledMark == true && u.DeleteMark == false);
            ////系统菜单也不需要数据权限 跟字段重合取消这样处理
            //var module = UnitWork.FindEntity<ModuleEntity>(u => u.EnCode == moduleName).GetAwaiter().GetResult();
            if (rule == null)
            {
                return false; //没有设置数据规则，那么视为该资源允许被任何主体查看
            }
            //if (rule == null|| module.IsPublic==true)
            //{
            //    return false; //没有设置数据规则，那么视为该资源允许被任何主体查看
            //}
            return true;
        }
        /// <summary>
        ///  soul数据反向模板化
        /// </summary>
        /// <param name=""dic>集合</param>
        /// <param name=""pagination>分页</param>
        /// <returns></returns>
        protected SoulPage<TEntity> ChangeSoulData<TEntity>(Dictionary<string, Dictionary<string, string>> dic, SoulPage<TEntity> pagination)
        {
            List<FilterSo> filterSos = pagination.getFilterSos();
            filterSos = FormatData(dic, filterSos);
            pagination.filterSos = filterSos.ToJson();
            return pagination;
        }
        protected List<FilterSo> FormatData(Dictionary<string, Dictionary<string, string>> dic, List<FilterSo> filterSos)
        {
            foreach (var item in filterSos)
            {
                if (item.mode == "condition" && dic.ContainsKey(item.field) && dic[item.field].Values.Contains(item.value))
                {
                    item.value = dic[item.field].FirstOrDefault(a=>a.Value== item.value).Key;
                }
                if (item.children != null && item.children.Count > 0)
                {
                    item.children = FormatData(dic, item.children);
                }
            }
            return filterSos;
        }
        /// <summary>
        ///  字段权限处理
        /// </summary>
        ///<param name=""list>数据列表</param>
        /// <param name=""moduleName>菜单名称</param>
        /// <returns></returns>
        protected List<TEntity> GetFieldsFilterData<TEntity>(List<TEntity> list, string moduleName = "")
        {
            moduleName = string.IsNullOrEmpty(moduleName) ? ReflectionHelper.GetModuleName() : moduleName;
            //管理员跳过
            if (currentuser.IsAdmin)
            {
                return list;
            }
            //系统菜单跳过
            var module = repository.Db.Queryable<ModuleEntity>().First(u => u.EnCode == moduleName);
            //判断是否需要字段权限
            if (module == null || module.IsFields == false)
            {
                return list;
            }
            //空list直接返回
            if (list.Count == 0)
            {
                return list;
            }
            var rolelist = currentuser.RoleId.Split(',');
            var rule = repository.Db.Queryable<RoleAuthorizeEntity>().Where(u => rolelist.Contains(u.ObjectId) && u.ItemType == 3).Select(a => a.ItemId).Distinct().ToList();
            var fieldsList = repository.Db.Queryable<ModuleFieldsEntity>().Where(u => (rule.Contains(u.Id) || u.IsPublic == true) && u.EnabledMark == true && u.ModuleId == module.Id).Select(u => u.EnCode).ToList();
            //反射获取主键
            PropertyInfo pkProp = typeof(TEntity).GetProperties().Where(p => p.GetCustomAttributes(typeof(SugarColumn), false).Length > 0).First();
            var idName = "Id";
            if (pkProp != null)
            {
                idName = pkProp.Name;
            }
            fieldsList.Add(idName);
            fieldsList = fieldsList.Distinct().ToList();
            return DataTableHelper.ListFilter(list, fieldsList);
        }
        /// <summary>
        ///  字段权限处理
        /// </summary>
        ///<param name=""entity>数据</param>
        /// <param name=""moduleName>菜单名称</param>
        /// <returns></returns>
        protected TEntity GetFieldsFilterData<TEntity>(TEntity entity, string moduleName = "")
        {
            moduleName = string.IsNullOrEmpty(moduleName) ? ReflectionHelper.GetModuleName() : moduleName;
            //管理员跳过
            if (currentuser.IsAdmin)
            {
                return entity;
            }
            //系统菜单跳过
            var module = repository.Db.Queryable<ModuleEntity>().First(u => u.EnCode == moduleName);
            //判断是否需要字段权限
            if (module == null || module.IsFields == false)
            {
                return entity;
            }
            //空对象直接返回
            if (entity == null)
            {
                return entity;
            }
            var rolelist = currentuser.RoleId.Split(',');
            var rule = repository.Db.Queryable<RoleAuthorizeEntity>().Where(u => rolelist.Contains(u.ObjectId) && u.ItemType == 3).Select(a => a.ItemId).Distinct().ToList();
            var fieldsList = repository.Db.Queryable<ModuleFieldsEntity>().Where(u => (rule.Contains(u.Id) || u.IsPublic == true) && u.EnabledMark == true && u.ModuleId == module.Id).Select(u => u.EnCode).ToList();
            //反射获取主键
            PropertyInfo pkProp = typeof(TEntity).GetProperties().Where(p => p.GetCustomAttributes(typeof(SugarColumn), false).Length > 0).First();
            var idName = "Id";
            if (pkProp != null)
            {
                idName = pkProp.Name;
            }
            fieldsList.Add(idName);
            fieldsList = fieldsList.Distinct().ToList();
            List<TEntity> list = new List<TEntity>();
            list.Add(entity);
            return DataTableHelper.ListFilter(list, fieldsList)[0];
        }
        /// <summary>
        ///  字段权限处理
        /// </summary>
        ///<param name=""query>数据列表</param>
        /// <param name=""moduleName>菜单名称</param>
        /// <returns></returns>
        protected ISugarQueryable<TEntity> GetFieldsFilterDataNew<TEntity>(string parametername, ISugarQueryable<TEntity> query, string moduleName = "")
        {
            moduleName = string.IsNullOrEmpty(moduleName) ? ReflectionHelper.GetModuleName() : moduleName;
            //管理员跳过
            if (currentuser.IsAdmin)
            {
                return query;
            }
            //系统菜单跳过
            var module = repository.Db.Queryable<ModuleEntity>().First(u => u.EnCode == moduleName);
            //判断是否需要字段权限
            if (module == null || module.IsFields == false)
            {
                return query;
            }
            var rolelist = currentuser.RoleId.Split(',');
            var rule = repository.Db.Queryable<RoleAuthorizeEntity>().Where(u => rolelist.Contains(u.ObjectId) && u.ItemType == 3).Select(a => a.ItemId).Distinct().ToList();
            var fieldsList = repository.Db.Queryable<ModuleFieldsEntity>().Where(u => (rule.Contains(u.Id) || u.IsPublic == true) && u.EnabledMark == true && u.ModuleId == module.Id).Select(u => u.EnCode).ToList();
            //反射获取主键
            PropertyInfo pkProp = typeof(TEntity).GetProperties().Where(p => p.GetCustomAttributes(typeof(SugarColumn), false).Length > 0).First();
            var idName = "Id";
            if (pkProp != null)
            {
                idName = pkProp.Name;
            }
            fieldsList.Add(idName);
            fieldsList = fieldsList.Distinct().ToList();
			//可以构建lambda
			var parameter = Expression.Parameter(typeof(TEntity), parametername);
			var bindings = fieldsList
			.Select(name => name.Trim())
			.Select(name => Expression.Bind(
			typeof(TEntity).GetProperty(name),
			Expression.Property(parameter, name)
			));
			var newT = Expression.MemberInit(Expression.New(typeof(TEntity)), bindings);
			var lambda = Expression.Lambda<Func<TEntity, TEntity>>(newT, parameter);
			query = query.Select(lambda);
            //chloe扩展方法
			//List<string> ignoreList = new List<string>();
   //         foreach (var item in typeof(TEntity).GetProperties())
   //         {
   //             if (!fieldsList.Contains(item.Name))
   //             {
   //                 ignoreList.Add(item.Name);
   //             }
   //         }
   //         query = query.Ignore(ignoreList.ToArray());
            return query;
        }
    }
}
