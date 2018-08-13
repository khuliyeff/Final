using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using eli_mubu.Models;
using System.Web.Helpers;

namespace eli_mubu.Areas.manage.Controllers
{
    public class HomeController : Controller
    {
        fhnEntities3 db = new fhnEntities3();
        // GET: manage/Home
        public ActionResult Index()
        {
            return View();
        }



        [HttpPost]
        public ActionResult Login(string Email,string Password)
        {
            Admins adm = db.Admins.FirstOrDefault(a => a.Email == Email);

            if(adm != null)
            {
                if (Crypto.VerifyHashedPassword(adm.Password, Password))
                {
                    Session["Login"] = true;
                    return RedirectToAction("index", "dashboard");
                }
            }


            Session["LoginError"] = "E-pocta sefdir";
            return RedirectToAction("index");
        }
    }
}