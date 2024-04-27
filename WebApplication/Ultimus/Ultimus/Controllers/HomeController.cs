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
        private UltimusEntities db = new UltimusEntities();

        // GET: Home
        public ActionResult Index(int? categoryID)
        {
            // Set the default category ID to 1 (Laptop)
            int defaultCategoryID = 1;

            // If no category ID is provided, default to the defaultCategoryID
            if (!categoryID.HasValue)
            {
                categoryID = defaultCategoryID;
            }

            // Retrieve products for the specified category
            IQueryable<Product> products = db.Products.Include(p => p.Category)
                                                        .Where(p => p.CategoryID == categoryID);

            return View(products.ToList());
        }
    }
}
