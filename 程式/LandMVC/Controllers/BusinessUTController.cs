using LandMVC.Models.ViewModels.BusinessUT.Maintain;
using LandMVC.Service.BusinessUT.Maintain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LandMVC.Controllers
{
    [Authorize]
    public class BusinessUTController : Controller
    {
        // GET: BusinessUT
        public ActionResult Maintain()
        {
            return View();
        }
        public ActionResult MaintainJson(SearchInfoViewModel searchInfo)
        {
            #region 參數宣告

            SearchListViewModel searchList = new SearchListViewModel();
            MaintainService maintainService = new MaintainService();
            #endregion

            #region 流程	

            try
            {
                //送參數進入Service層做商業邏輯
                searchList = maintainService.QuerySearchList(searchInfo);
            }
            catch (Exception ex)
            {
                searchList.db_Result = "Fail , " + ex.Message;
            }
            //組Json格式回傳Models資料
            return Json(searchList, JsonRequestBehavior.AllowGet);
            #endregion
          
        }
        
    }
}