using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication.Models
{
    public class Product : Category
    {

        public int ProductId { get; set; }
        public string ProductDescription { get; set; }
        public int ProductPrice { get; set; }
        public int ProductRating { get; set; }

    }
}