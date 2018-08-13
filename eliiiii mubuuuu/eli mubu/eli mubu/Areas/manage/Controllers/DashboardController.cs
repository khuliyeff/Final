using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace eli_mubu.Areas.manage.Controllers
{
    public class DashboardController : Controller
    {
        // GET: manage/Dashboard
        public ActionResult Index()
        {
            return View();
        }
    }
}