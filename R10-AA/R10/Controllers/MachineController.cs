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
    public class MachineController : Controller
    {
        private Action_Amusements_WinhostEntities db = new Action_Amusements_WinhostEntities();

        //
        // GET: /Machine/

        public ViewResult Index()
        {
            var machines = db.Machines.Include(m => m.Location).Include(m => m.LU_MachineClass);
            return View(machines.ToList());
        }

        //
        // GET: /Machine/Details/5

        public ViewResult Details(string id)
        {
            Machine machine = db.Machines.Find(id);
            return View(machine);
        }

        //
        // GET: /Machine/Create

        public ActionResult Create()
        {
            ViewBag.Location_Code = new SelectList(db.Locations, "Location_Code", "Location_Name");
            ViewBag.Machine_Class = new SelectList(db.LU_MachineClass, "ClassCode", "Name");
            return View();
        } 

        //
        // POST: /Machine/Create

        [HttpPost]
        public ActionResult Create(Machine machine)
        {
            if (ModelState.IsValid)
            {
                db.Machines.Add(machine);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.Location_Code = new SelectList(db.Locations, "Location_Code", "Location_Name", machine.Location_Code);
            ViewBag.Machine_Class = new SelectList(db.LU_MachineClass, "ClassCode", "Name", machine.Machine_Class);
            return View(machine);
        }
        
        //
        // GET: /Machine/Edit/5
 
        public ActionResult Edit(string id)
        {
            Machine machine = db.Machines.Find(id);
            ViewBag.Location_Code = new SelectList(db.Locations, "Location_Code", "Location_Name", machine.Location_Code);
            ViewBag.Machine_Class = new SelectList(db.LU_MachineClass, "ClassCode", "Name", machine.Machine_Class);
            return View(machine);
        }

        //
        // POST: /Machine/Edit/5

        [HttpPost]
        public ActionResult Edit(Machine machine)
        {
            if (ModelState.IsValid)
            {
                db.Entry(machine).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Location_Code = new SelectList(db.Locations, "Location_Code", "Location_Name", machine.Location_Code);
            ViewBag.Machine_Class = new SelectList(db.LU_MachineClass, "ClassCode", "Name", machine.Machine_Class);
            return View(machine);
        }

        //
        // GET: /Machine/Delete/5
 
        public ActionResult Delete(string id)
        {
            Machine machine = db.Machines.Find(id);
            return View(machine);
        }

        //
        // POST: /Machine/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {            
            Machine machine = db.Machines.Find(id);
            db.Machines.Remove(machine);
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