using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

namespace LandMVC.Dao
{
    /// <summary>
    /// 資料庫連線底層
    /// </summary>
    public class _BaseDao
    {
        #region Properties
        protected StringBuilder _sqlStr;
        protected string _sqlOrderByStr;
        protected DynamicParameters _sqlParams;
        protected List<DynamicParameters> _sqlParamsList;
        protected SqlConnection SQLConnection;
        protected SqlTransaction SQLTransaction;

        #region DB連線
        protected string _dbConnPPP = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        #endregion
        #endregion
    }
}