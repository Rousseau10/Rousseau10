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
    public class AccController : Controller
    {
        private Action_Amusements_WinhostEntities db = new Action_Amusements_WinhostEntities();

        //
        // GET: /Acc/

        public ViewResult Index()
        {
            return View(db.Accs.ToList());
        }

        //
        // GET: /Acc/Details/5

        public ViewResult Details(string id)
        {
            Acc acc = db.Accs.Find(id);
            return View(acc);
        }

        //
        // GET: /Acc/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Acc/Create

        [HttpPost]
        public ActionResult Create(Acc acc)
        {
            if (ModelState.IsValid)
            {
                db.Accs.Add(acc);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(acc);
        }
        
        //
        // GET: /Acc/Edit/5
 
        public ActionResult Edit(string id)
        {
            Acc acc = db.Accs.Find(id);
            return View(acc);
        }

        //
        // POST: /Acc/Edit/5

        [HttpPost]
        public ActionResult Edit(Acc acc)
        {
            if (ModelState.IsValid)
            {
                db.Entry(acc).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(acc);
        }

        //
        // GET: /Acc/Delete/5
 
        public ActionResult Delete(string id)
        {
            Acc acc = db.Accs.Find(id);
            return View(acc);
        }

        //
        // POST: /Acc/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {            
            Acc acc = db.Accs.Find(id);
            db.Accs.Remove(acc);
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