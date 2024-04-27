using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UltimusApp.Models
{
    public class Product : Category
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public int ProductPrice { get; set; }
        public int ProductRating { get; set; }
    }
}