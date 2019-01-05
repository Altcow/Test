
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LandMVC.Models.ViewModels.BusinessUT.Maintain
{
    public class SearchListViewModel : _BaseRequestViewModel
    {
        public int draw { get; set; }
        public int recordsTotal { get; set; }
        public int recordsFiltered { get; set; }
        public List<SearchItemViewModel> data { get; set; }
    }

    public class SearchItemViewModel
    {
        public int SID { get; set; }

        public string Subject { get; set; }

        public int? UpID { get; set; }

        public int? Distribution { get; set; }

        public int Level { get; set; }
    }
}