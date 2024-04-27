using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Ultimus.Models;
public class HomeController : Controller
{
    private UltimusEntities db = new UltimusEntities();

    // GET: Home
    public ActionResult Index(int? categoryID)
    {
        IQueryable<Product> products = db.Products.Include(p => p.Category);

        if (categoryID.HasValue)
        {
            products = products.Where(p => p.CategoryID == categoryID);
        }

        return View(products.ToList());
    }
}
