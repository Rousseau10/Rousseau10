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
    public class WorkOutController : Controller
    {
        private Action_Amusements_WinhostEntities db = new Action_Amusements_WinhostEntities();

        //
        // GET: /WorkOut/

        public ViewResult Index(int start = 0, int itemsPerPage = 20, string orderBy = "workout_ID", bool desc = false)
        {
            ViewBag.Count = db.WorkOuts.Count();
            ViewBag.Start = start;
            ViewBag.ItemsPerPage = itemsPerPage;
            ViewBag.OrderBy = orderBy;
            ViewBag.Desc = desc;

            return View();
        }

        //
        // GET: /WorkOut/GridData/?start=0&itemsPerPage=20&orderBy=workout_ID&desc=true

        public ActionResult GridData(int start = 0, int itemsPerPage = 20, string orderBy = "workout_ID", bool desc = false)
        {
            Response.AppendHeader("X-Total-Row-Count", db.WorkOuts.Count().ToString());
            ObjectQuery<WorkOut> workouts = (db as IObjectContextAdapter).ObjectContext.CreateObjectSet<WorkOut>();
            workouts = workouts.OrderBy("it." + orderBy + (desc ? " desc" : ""));

            return PartialView(workouts.Skip(start).Take(itemsPerPage));
        }

        //
        // GET: /Default5/RowData/5

        public ActionResult RowData(int id)
        {
            WorkOut workout = db.WorkOuts.Find(id);
            return PartialView("GridData", new WorkOut[] { workout });
        }

        //
        // GET: /WorkOut/Create

        public ActionResult Create()
        {
            return PartialView("Edit");
        }

        //
        // POST: /WorkOut/Create

        [HttpPost]
        public ActionResult Create(WorkOut workout)
        {
            if (ModelState.IsValid)
            {
                db.WorkOuts.Add(workout);
                db.SaveChanges();
                return PartialView("GridData", new WorkOut[] { workout });
            }

            return PartialView("Edit", workout);
        }

        //
        // GET: /WorkOut/Edit/5

        public ActionResult Edit(int id)
        {
            WorkOut workout = db.WorkOuts.Find(id);
            return PartialView(workout);
        }

        //
        // POST: /WorkOut/Edit/5

        [HttpPost]
        public ActionResult Edit(WorkOut workout)
        {
            if (ModelState.IsValid)
            {
                db.Entry(workout).State = EntityState.Modified;
                db.SaveChanges();
                return PartialView("GridData", new WorkOut[] { workout });
            }

            return PartialView(workout);
        }

        //
        // POST: /WorkOut/Delete/5

        [HttpPost]
        public void Delete(int id)
        {
            WorkOut workout = db.WorkOuts.Find(id);
            db.WorkOuts.Remove(workout);
            db.SaveChanges();
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
