using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Ultimus.Models;


namespace Ultimus.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home

        private UltimusEntities db = new UltimusEntities();
        public ActionResult Index()
        {
            var products = db.Products.Include(p => p.Category);
            return View(products.ToList());
         
        }
    }
}