using LandMVC.Models.ViewModels.Account;
using System;
using System.Web.Security;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;
namespace LandMVC.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        [AllowAnonymous]
        public ActionResult login()
        {
            FormsAuthentication.SignOut();
            Session.RemoveAll();
            HttpCookie cookie1 = new HttpCookie(FormsAuthentication.FormsCookieName, "");
            cookie1.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(cookie1);
            HttpCookie cookie2 = new HttpCookie("ASP.NET_SessionId", "");
            cookie2.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(cookie2);
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        public ActionResult login(string txtAccount,string txtPassword)
        {
            UserInfoModel UserInfo = new UserInfoModel() {
                Account = txtAccount,
                UserName = "測試",
                Power = "admin",
                SessinID = Session.SessionID,
                LoginTime = DateTime.Now
            };
            var ticket = new FormsAuthenticationTicket(
                         version: 1,
                         name: UserInfo.Account,
                         issueDate: DateTime.Now,
                         expiration: DateTime.Now.AddHours(360),
                         isPersistent: true,
                         userData: JsonConvert.SerializeObject(UserInfo),
                         cookiePath: FormsAuthentication.FormsCookiePath);

            string encryptedTicket = FormsAuthentication.Encrypt(ticket);
            Response.Cookies.Clear();
            Response.Cookies[FormsAuthentication.FormsCookieName].Value = encryptedTicket;

            return RedirectToAction("Index", "Home");

        }
    }
}