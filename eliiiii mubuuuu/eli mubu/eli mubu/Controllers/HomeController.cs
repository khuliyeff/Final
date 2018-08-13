using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using eli_mubu;
using eli_mubu.Models;
namespace eli_mubu.Controllers
{
    public class HomeController : Controller
    {
        fhnEntities3 db = new fhnEntities3();
        public ActionResult Index()
        {
            manage model = new manage();
            model.Homes = db.Home.OrderByDescending(m => m.Id).ToList();
            model.AboutUs = db.AboutUs.OrderByDescending(m => m.Id).ToList();
            model.Icon = db.Icons.OrderByDescending(m => m.Id).Take(3).ToList();
            model.Feature = db.Features.OrderByDescending(m => m.Id).ToList();
            model.IconFeatures = db.IconFeature.OrderByDescending(m => m.Id).ToList();
            model.Benefits = db.Benefits.OrderByDescending(m => m.Id).ToList();
            model.Client = db.Clients.OrderByDescending(m => m.Id).ToList();
            model.Screenshot = db.Screenshots.OrderByDescending(m => m.Id).ToList();
            model.sphoto = db.sPhoto.OrderByDescending(m => m.Id).Take(10).ToList();
            model.statistica = db.Statisticas.OrderByDescending(m => m.Id).Take(4).ToList();
            model.Buy = db.Buys.OrderByDescending(m => m.Id).ToList();
            model.Buyn = db.Buyns.OrderByDescending(m => m.Id).ToList();
            model.Teama = db.Teamas.OrderByDescending(m => m.Id).ToList();
            model.Team = db.Teams.OrderByDescending(m => m.Id).ToList();
            return View(model);
        }

     
    }
}