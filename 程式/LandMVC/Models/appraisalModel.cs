using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LandMVC.Models
{
    public class appraisalModel
    {
        public int SID { get; set; }

        public string Subject { get; set; }

        public int? UpID { get; set; }

        public int? Distribution { get; set; }

        public int Level { get; set; }
    }
}