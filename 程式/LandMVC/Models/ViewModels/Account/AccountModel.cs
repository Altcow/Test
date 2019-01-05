using System;
namespace LandMVC.Models.ViewModels.Account
{
    public class UserInfoModel
    {

        public string SessinID { get; set; }
        public string Account { get; set; }
        public string UserName { get; set; }
        public string Power { get; set; }
        public DateTime LoginTime { get; set; }

    }
  
}