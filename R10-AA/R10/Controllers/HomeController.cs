using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
namespace R10.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
          
           // throw new Exception("oopss");

            ViewBag.Message = "Modify this template to kick-start your ASP.NET MVC application.";
            
            //L addKey-ConfigurationManager// To see where below gets its KeyNotFoundException go Toweb.cong > <App settings> <Add Key/Value>
            ViewBag.AdamCustomKeySmtpServer = ConfigurationManager.AppSettings["AdamCustomKeySmtpServer"];
            
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your quintessential app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your quintessential contact page.";

            return View();
        }
    }
}
