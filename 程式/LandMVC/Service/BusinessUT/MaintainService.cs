using LandMVC.Dao.BusinessUT;
using LandMVC.Models;
using LandMVC.Models.ViewModels.BusinessUT.Maintain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LandMVC.Service.BusinessUT.Maintain
{
    public class MaintainService
    {
        #region 查詢 QuerySearchList()
        public SearchListViewModel QuerySearchList(SearchInfoViewModel searchInfo)
        {
            #region 參數宣告				
            SearchListViewModel searchList = new SearchListViewModel();
            MaintainDao maintainDao = new MaintainDao();
            #endregion

            #region 流程																
            searchList = maintainDao.QuerySearchList(searchInfo); //將參數送入Dao層,組立SQL字串並連接資料庫

            return searchList;
            #endregion
        }
        #endregion

    }
}