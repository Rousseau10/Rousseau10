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
    public class DatteController : Controller
    {
        private Action_Amusements_WinhostEntities db = new Action_Amusements_WinhostEntities();

        //
        // GET: /Datte/

        public ViewResult Index()
        {
            return View(db.Test_DateTime2_GetDate.ToList());
        }

        //
        // GET: /Datte/Details/5

        public ViewResult Details(int id)
        {
            Test_DateTime2_GetDate test_datetime2_getdate = db.Test_DateTime2_GetDate.Find(id);
            return View(test_datetime2_getdate);
        }

        //
        // GET: /Datte/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Datte/Create

        [HttpPost]
        public ActionResult Create(Test_DateTime2_GetDate test_datetime2_getdate)
        {
            if (ModelState.IsValid)
            {
                db.Test_DateTime2_GetDate.Add(test_datetime2_getdate);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(test_datetime2_getdate);
        }
        
        //
        // GET: /Datte/Edit/5
 
        public ActionResult Edit(int id)
        {
            Test_DateTime2_GetDate test_datetime2_getdate = db.Test_DateTime2_GetDate.Find(id);
            return View(test_datetime2_getdate);
        }

        //
        // POST: /Datte/Edit/5

        [HttpPost]
        public ActionResult Edit(Test_DateTime2_GetDate test_datetime2_getdate)
        {
            if (ModelState.IsValid)
            {
                db.Entry(test_datetime2_getdate).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(test_datetime2_getdate);
        }

        //
        // GET: /Datte/Delete/5
 
        public ActionResult Delete(int id)
        {
            Test_DateTime2_GetDate test_datetime2_getdate = db.Test_DateTime2_GetDate.Find(id);
            return View(test_datetime2_getdate);
        }

        //
        // POST: /Datte/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Test_DateTime2_GetDate test_datetime2_getdate = db.Test_DateTime2_GetDate.Find(id);
            db.Test_DateTime2_GetDate.Remove(test_datetime2_getdate);
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