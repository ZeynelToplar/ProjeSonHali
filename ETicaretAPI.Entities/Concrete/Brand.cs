using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Brand : IEntity
    {
        public int BrandId { get; set; }
        public int CategoryId { get; set; }
        public string BrandName { get; set; }

        public ICollection<Product> Products { get; set; }
        public Category Category { get; set; }
    }
}
