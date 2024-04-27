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
    public class ItemsController : Controller
    {
        private readonly UltimusEntities _context;

        public ItemsController()
        {
            _context = new UltimusEntities(); // Initialize your DbContext
        }

        // GET: Items/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Product product = _context.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }

            return View("items", product); // Specify the view name "items" explicitly
        }
    }
}