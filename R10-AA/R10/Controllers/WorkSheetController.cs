using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Objects;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using R10.Models;

namespace R10.Controllers
{
    public class WorkSheetController : Controller
    {
        private Action_Amusements_WinhostEntities db = new Action_Amusements_WinhostEntities();
        //
        // GET: /WorkSheet/

        public ActionResult Index()
        {
            ViewBag.Location_Code = new SelectList(db.Locations, "Location_Code", "Location_Name");
            return View();
         
        }

        //
        // GET: /WorkSheet/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /WorkSheet/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /WorkSheet/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /WorkSheet/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /WorkSheet/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /WorkSheet/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /WorkSheet/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
