using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Category : IEntity
    {
        public int CategoryId { get; set; }
        public int ParentId { get; set; }
        public string CategoryName { get; set; }
        public string CategoryDescription { get; set; }
        public bool CategoryStatus { get; set; }

        //Relation
        public ICollection<Product> Products { get; set; }
        public ICollection<Brand> Brands { get; set; }
        public ICollection<CategoryOption> CategoryOptions { get; set; }
    }
}
