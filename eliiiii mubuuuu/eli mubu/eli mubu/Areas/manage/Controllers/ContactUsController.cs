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
    public class ContactUsController : Controller
    {
        private fhnEntities3 db = new fhnEntities3();

        // GET: manage/ContactUs
        public ActionResult Index()
        {
            return View(db.ContactUs.ToList());
        }

        // GET: manage/ContactUs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ContactUs contactUs = db.ContactUs.Find(id);
            if (contactUs == null)
            {
                return HttpNotFound();
            }
            return View(contactUs);
        }

        // GET: manage/ContactUs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: manage/ContactUs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,Email,Subject,Message")] ContactUs contactUs)
        {
            if (ModelState.IsValid)
            {
                db.ContactUs.Add(contactUs);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(contactUs);
        }

        // GET: manage/ContactUs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ContactUs contactUs = db.ContactUs.Find(id);
            if (contactUs == null)
            {
                return HttpNotFound();
            }
            return View(contactUs);
        }

        // POST: manage/ContactUs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Email,Subject,Message")] ContactUs contactUs)
        {
            if (ModelState.IsValid)
            {
                db.Entry(contactUs).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(contactUs);
        }

        // GET: manage/ContactUs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ContactUs contactUs = db.ContactUs.Find(id);
            if (contactUs == null)
            {
                return HttpNotFound();
            }
            return View(contactUs);
        }

        // POST: manage/ContactUs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ContactUs contactUs = db.ContactUs.Find(id);
            db.ContactUs.Remove(contactUs);
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
