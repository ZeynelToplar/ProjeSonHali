using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Product : IEntity
    {
        public int ProductId { get; set; }
        public int CategoryId { get; set; }
        public int BrandId { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public int Quantity { get; set; }
        public int UnitsInStock { get; set; }
        public double UnitPrice { get; set; }
        public double Discount { get; set; }
        public DateTime ProductCreatedDate { get; set; }
        public bool Status { get; set; }

        //Relation
        public Brand Brand { get; set; }
        public Category Category { get; set; }
        public ICollection<Image> Images { get; set; }
        public ICollection<ProductOption> ProductOptions { get; set; }
        public ICollection<Favorite> Favorites { get; set; }
        public ICollection<Basket> Baskets { get; set; }
        public ICollection<OrderDetail> OrderDetails { get; set; }

    }
}
