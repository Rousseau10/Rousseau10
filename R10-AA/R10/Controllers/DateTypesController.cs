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
    public class DateTypesController : Controller
    {
        private Action_Amusements_WinhostEntities db = new Action_Amusements_WinhostEntities();

        //
        // GET: /DateTypes/

        public ViewResult Index()
        {
            return View(db.Test_Date_Types.ToList());
        }

        //
        // GET: /DateTypes/Details/5

        public ViewResult Details(int id)
        {
            Test_Date_Types test_date_types = db.Test_Date_Types.Find(id);
            return View(test_date_types);
        }

        //
        // GET: /DateTypes/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /DateTypes/Create

        [HttpPost]
        public ActionResult Create(Test_Date_Types test_date_types)
        {
            if (ModelState.IsValid)
            {

            
                test_date_types.Mod_Time_datetime = DateTime.Now;
                test_date_types.Mod_Time_datetime2 = DateTime.Now;
                db.Test_Date_Types.Add(test_date_types);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(test_date_types);
        }
        
        //
        // GET: /DateTypes/Edit/5
 
        public ActionResult Edit(int id)
        {
            Test_Date_Types test_date_types = db.Test_Date_Types.Find(id);
            return View(test_date_types);
        }

        //
        // POST: /DateTypes/Edit/5

        [HttpPost]
        public ActionResult Edit(Test_Date_Types test_date_types)
        {
            if (ModelState.IsValid)
            {
                db.Entry(test_date_types).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(test_date_types);
        }

        //
        // GET: /DateTypes/Delete/5
 
        public ActionResult Delete(int id)
        {
            Test_Date_Types test_date_types = db.Test_Date_Types.Find(id);
            return View(test_date_types);
        }

        //
        // POST: /DateTypes/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Test_Date_Types test_date_types = db.Test_Date_Types.Find(id);
            db.Test_Date_Types.Remove(test_date_types);
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