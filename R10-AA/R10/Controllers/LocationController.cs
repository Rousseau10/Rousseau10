using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using R10.Models;

namespace R10.Controllers
{ 
    public class LocationController : Controller
    {
        private Action_Amusements_WinhostEntities db = new Action_Amusements_WinhostEntities();

        //
        // GET: /Location/

        public ViewResult Index()
        {
            var locations = db.Locations.Include(l => l.Acc);
            return View(locations.ToList());
        }

        //
        // GET: /Location/Details/5

        public ViewResult Details(string id)
        {
            Location location = db.Locations.Find(id);
            return View(location);
        }

        //
        // GET: /Location/Create

        public ActionResult Create()
        {
            ViewBag.Acc_Code = new SelectList(db.Accs, "Acc_Code", "Acc_Name");
            return View();
        } 

        //
        // POST: /Location/Create

        [HttpPost]
        public ActionResult Create(Location location)
        {
            if (ModelState.IsValid)
            {
                db.Locations.Add(location);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.Acc_Code = new SelectList(db.Accs, "Acc_Code", "Acc_Name", location.Acc_Code);
            return View(location);
        }
        
        //
        // GET: /Location/Edit/5
 
        public ActionResult Edit(string id)
        {
            Location location = db.Locations.Find(id);
            ViewBag.Acc_Code = new SelectList(db.Accs, "Acc_Code", "Acc_Name", location.Acc_Code);
            return View(location);
        }

        //
        // POST: /Location/Edit/5

        [HttpPost]
        public ActionResult Edit(Location location)
        {
            if (ModelState.IsValid)
            {
                db.Entry(location).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Acc_Code = new SelectList(db.Accs, "Acc_Code", "Acc_Name", location.Acc_Code);
            return View(location);
        }

        //
        // GET: /Location/Delete/5
 
        public ActionResult Delete(string id)
        {
            Location location = db.Locations.Find(id);
            return View(location);
        }

        //
        // POST: /Location/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {            
            Location location = db.Locations.Find(id);
            db.Locations.Remove(location);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}