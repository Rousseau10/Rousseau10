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
    public class LU_MachineClassController : Controller
    {
        private Action_Amusements_WinhostEntities db = new Action_Amusements_WinhostEntities();

        //
        // GET: /LU_MachineClass/

        public ViewResult Index()
        {
            return View(db.LU_MachineClass.ToList());
        }

        //
        // GET: /LU_MachineClass/Details/5

        public ViewResult Details(string id)
        {
            LU_MachineClass lu_machineclass = db.LU_MachineClass.Find(id);
            return View(lu_machineclass);
        }

        //
        // GET: /LU_MachineClass/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /LU_MachineClass/Create

        [HttpPost]
        public ActionResult Create(LU_MachineClass lu_machineclass)
        {
            if (ModelState.IsValid)
            {
                db.LU_MachineClass.Add(lu_machineclass);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(lu_machineclass);
        }
        
        //
        // GET: /LU_MachineClass/Edit/5
 
        public ActionResult Edit(string id)
        {
            LU_MachineClass lu_machineclass = db.LU_MachineClass.Find(id);
            return View(lu_machineclass);
        }

        //
        // POST: /LU_MachineClass/Edit/5

        [HttpPost]
        public ActionResult Edit(LU_MachineClass lu_machineclass)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lu_machineclass).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(lu_machineclass);
        }

        //
        // GET: /LU_MachineClass/Delete/5
 
        public ActionResult Delete(string id)
        {
            LU_MachineClass lu_machineclass = db.LU_MachineClass.Find(id);
            return View(lu_machineclass);
        }

        //
        // POST: /LU_MachineClass/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {            
            LU_MachineClass lu_machineclass = db.LU_MachineClass.Find(id);
            db.LU_MachineClass.Remove(lu_machineclass);
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