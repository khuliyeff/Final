﻿using System;
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
    public class ScreenshotsController : Controller
    {
        private fhnEntities3 db = new fhnEntities3();

        // GET: manage/Screenshots
        public ActionResult Index()
        {
            return View(db.Screenshots.ToList());
        }

        // GET: manage/Screenshots/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Screenshots screenshots = db.Screenshots.Find(id);
            if (screenshots == null)
            {
                return HttpNotFound();
            }
            return View(screenshots);
        }

        // GET: manage/Screenshots/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: manage/Screenshots/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Background,Head,Text")] Screenshots screenshots)
        {
            if (ModelState.IsValid)
            {
                db.Screenshots.Add(screenshots);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(screenshots);
        }

        // GET: manage/Screenshots/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Screenshots screenshots = db.Screenshots.Find(id);
            if (screenshots == null)
            {
                return HttpNotFound();
            }
            return View(screenshots);
        }

        // POST: manage/Screenshots/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Background,Head,Text")] Screenshots screenshots)
        {
            if (ModelState.IsValid)
            {
                db.Entry(screenshots).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(screenshots);
        }

        // GET: manage/Screenshots/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Screenshots screenshots = db.Screenshots.Find(id);
            if (screenshots == null)
            {
                return HttpNotFound();
            }
            return View(screenshots);
        }

        // POST: manage/Screenshots/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Screenshots screenshots = db.Screenshots.Find(id);
            db.Screenshots.Remove(screenshots);
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
