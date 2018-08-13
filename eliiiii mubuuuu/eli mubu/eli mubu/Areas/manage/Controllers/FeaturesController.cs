using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using eli_mubu.Models;

namespace eli_mubu.Areas.manage.Controllers
{
    public class FeaturesController : Controller
    {
        private fhnEntities3 db = new fhnEntities3();

        // GET: manage/Features
        public ActionResult Index()
        {
            return View(db.Features.ToList());
        }

        // GET: manage/Features/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Features features = db.Features.Find(id);
            if (features == null)
            {
                return HttpNotFound();
            }
            return View(features);
        }

        // GET: manage/Features/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: manage/Features/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Header,Text,Photo,Icon,IconHead,IconTxt")] Features features)
        {
            if (ModelState.IsValid)
            {
                db.Features.Add(features);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(features);
        }

        // GET: manage/Features/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Features features = db.Features.Find(id);
            if (features == null)
            {
                return HttpNotFound();
            }
            return View(features);
        }

        // POST: manage/Features/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Header,Text,Photo,Icon,IconHead,IconTxt")] Features features)
        {
            if (ModelState.IsValid)
            {
                db.Entry(features).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(features);
        }

        // GET: manage/Features/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Features features = db.Features.Find(id);
            if (features == null)
            {
                return HttpNotFound();
            }
            return View(features);
        }

        // POST: manage/Features/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Features features = db.Features.Find(id);
            db.Features.Remove(features);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
