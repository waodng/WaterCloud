﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Service.SystemOrganize;
using WaterCloud.Code;
using WaterCloud.Domain.SystemOrganize;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using WaterCloud.Domain.SystemSecurity;
using WaterCloud.Service;
using WaterCloud.Service.SystemSecurity;
using System;
using Serenity;
using System.Threading.Tasks;

namespace WaterCloud.Web.Areas.SystemOrganize.Controllers
{
    [Area("SystemOrganize")]
    public class NoticeController : ControllerBase
    {
        private string moduleName = System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Namespace.Split('.')[3];
        private string className = System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.FullName.Split('.')[5];
        private readonly NoticeService _noticeService;
        private readonly LogService _logService;
        public NoticeController(NoticeService noticeService, LogService logService)
        {
            _noticeService = noticeService;
            _logService = logService;
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public async Task<ActionResult> GetGridJson(Pagination pagination, string keyword)
        {
            pagination.order = "desc";
            pagination.sort = "F_CreatorTime";
            var data =await _noticeService.GetLookList(pagination,keyword);
            return Success(pagination.records, data);
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public async Task<ActionResult> GetListJson(string keyword)
        {
            var data =await _noticeService.GetList(keyword);
            return Content(data.ToJson());
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public async Task<ActionResult> GetFormJson(string keyValue)
        {
            var data =await _noticeService.GetLookForm(keyValue);
            return Content(data.ToJson());
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> SubmitForm(NoticeEntity noticeEntity, string keyValue)
        {
            LogEntity logEntity;
            if (string.IsNullOrEmpty(keyValue))
            {
                noticeEntity.F_DeleteMark = false;
                noticeEntity.F_CreatorUserName =(await new UserService().GetForm(OperatorProvider.Provider.GetCurrent().UserId)).F_RealName;
                logEntity = await _logService.CreateLog(moduleName, className, DbLogType.Create.ToString());
                logEntity.F_Description += DbLogType.Create.ToDescription();
            }
            else
            {
                logEntity = await _logService.CreateLog(moduleName, className, DbLogType.Update.ToString());
                logEntity.F_Description += DbLogType.Update.ToDescription();
                logEntity.F_KeyValue = keyValue;
            }
            try
            {
                logEntity.F_Account = OperatorProvider.Provider.GetCurrent().UserCode;
                logEntity.F_NickName = OperatorProvider.Provider.GetCurrent().UserName;
                await _noticeService.SubmitForm(noticeEntity, keyValue);
                logEntity.F_Description += "操作成功";
                await _logService.WriteDbLog(logEntity);
                return Success("操作成功。");
            }
            catch (Exception ex)
            {
                logEntity.F_Result = false;
                logEntity.F_Description += "操作失败，" + ex.Message;
                await _logService.WriteDbLog(logEntity);
                return Error(ex.Message);
            }
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteForm(string keyValue)
        {
            LogEntity logEntity = await _logService.CreateLog(moduleName, className, DbLogType.Delete.ToString()); 
            logEntity.F_Description += DbLogType.Delete.ToDescription();
            try
            {
                logEntity.F_Account = OperatorProvider.Provider.GetCurrent().UserCode;
                logEntity.F_NickName = OperatorProvider.Provider.GetCurrent().UserName;
                await _noticeService.DeleteForm(keyValue);
                logEntity.F_Description += "操作成功";
                await _logService.WriteDbLog(logEntity);
                return Success("操作成功。");
            }
            catch (Exception ex)
            {
                logEntity.F_Result = false;
                logEntity.F_Description += "操作失败，" + ex.Message;
                await _logService.WriteDbLog(logEntity);
                return Error(ex.Message);
            }
        }
    }
}