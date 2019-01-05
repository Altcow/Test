using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LandMVC.Models.ViewModels.BusinessUT.Maintain
{
    public class SearchInfoViewModel : DataTables.Parameters
    {
        public string CmbAreaType { get; set; }

        public string CmbAd { get; set; }

        public string CmbGroupType { get; set; }
    }
}