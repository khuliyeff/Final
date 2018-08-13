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
    public class BenefitsController : Controller
    {
        private fhnEntities3 db = new fhnEntities3();

        // GET: manage/Benefits
        public ActionResult Index()
        {
            return View(db.Benefits.ToList());
        }

        // GET: manage/Benefits/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Benefits benefits = db.Benefits.Find(id);
            if (benefits == null)
            {
                return HttpNotFound();
            }
            return View(benefits);
        }

        // GET: manage/Benefits/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: manage/Benefits/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Photo,Header,HeaderTxr,Text,Icon,IconTxt")] Benefits benefits)
        {
            if (ModelState.IsValid)
            {
                db.Benefits.Add(benefits);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(benefits);
        }

        // GET: manage/Benefits/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Benefits benefits = db.Benefits.Find(id);
            if (benefits == null)
            {
                return HttpNotFound();
            }
            return View(benefits);
        }

        // POST: manage/Benefits/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Photo,Header,HeaderTxr,Text,Icon,IconTxt")] Benefits benefits)
        {
            if (ModelState.IsValid)
            {
                db.Entry(benefits).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(benefits);
        }

        // GET: manage/Benefits/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Benefits benefits = db.Benefits.Find(id);
            if (benefits == null)
            {
                return HttpNotFound();
            }
            return View(benefits);
        }

        // POST: manage/Benefits/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Benefits benefits = db.Benefits.Find(id);
            db.Benefits.Remove(benefits);
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
