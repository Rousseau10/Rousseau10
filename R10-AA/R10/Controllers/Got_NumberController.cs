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
    public class Got_NumberController : Controller
    {
        private Action_Amusements_WinhostEntities db = new Action_Amusements_WinhostEntities();

        //
        // GET: /Got_Number/

        public ViewResult Index(int start = 0, int itemsPerPage = 20, string orderBy = "ID", bool desc = false)
        {
            ViewBag.Count = db.Workout_Got_Number.Count();
            ViewBag.Start = start;
            ViewBag.ItemsPerPage = itemsPerPage;
            ViewBag.OrderBy = orderBy;
            ViewBag.Desc = desc;

            return View();
        }

        //
        // GET: /Got_Number/GridData/?start=0&itemsPerPage=20&orderBy=ID&desc=true

        public ActionResult GridData(int start = 0, int itemsPerPage = 20, string orderBy = "ID", bool desc = false)
        {
            Response.AppendHeader("X-Total-Row-Count", db.Workout_Got_Number.Count().ToString());
            ObjectQuery<Workout_Got_Number> workout_got_number = (db as IObjectContextAdapter).ObjectContext.CreateObjectSet<Workout_Got_Number>();
            workout_got_number = workout_got_number.OrderBy("it." + orderBy + (desc ? " desc" : ""));

            return PartialView(workout_got_number.Skip(start).Take(itemsPerPage));
        }

        //
        // GET: /Default5/RowData/5

        public ActionResult RowData(int id)
        {
            Workout_Got_Number workout_got_number = db.Workout_Got_Number.Find(id);
            return PartialView("GridData", new Workout_Got_Number[] { workout_got_number });
        }

        //
        // GET: /Got_Number/Create

        public ActionResult Create()
        {
            return PartialView("Edit");
        }

        //
        // POST: /Got_Number/Create

        [HttpPost]
        public ActionResult Create(Workout_Got_Number workout_got_number)
        {
            if (ModelState.IsValid)
            {
                db.Workout_Got_Number.Add(workout_got_number);
                db.SaveChanges();
                return PartialView("GridData", new Workout_Got_Number[] { workout_got_number });
            }

            return PartialView("Edit", workout_got_number);
        }

        //
        // GET: /Got_Number/Edit/5

        public ActionResult Edit(int id)
        {
            Workout_Got_Number workout_got_number = db.Workout_Got_Number.Find(id);
            return PartialView(workout_got_number);
        }

        //
        // POST: /Got_Number/Edit/5

        [HttpPost]
        public ActionResult Edit(Workout_Got_Number workout_got_number)
        {
            if (ModelState.IsValid)
            {
                db.Entry(workout_got_number).State = EntityState.Modified;
                db.SaveChanges();
                return PartialView("GridData", new Workout_Got_Number[] { workout_got_number });
            }

            return PartialView(workout_got_number);
        }

        //
        // POST: /Got_Number/Delete/5

        [HttpPost]
        public void Delete(int id)
        {
            Workout_Got_Number workout_got_number = db.Workout_Got_Number.Find(id);
            db.Workout_Got_Number.Remove(workout_got_number);
            db.SaveChanges();
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
