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
        private readonly UltimusEntities db = new UltimusEntities();

        // GET: Home
        public ActionResult Index()
        {
            var products = db.Products.ToList();
            return View(products);
        }
    }
}