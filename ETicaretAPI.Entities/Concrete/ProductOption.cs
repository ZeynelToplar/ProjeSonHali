using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class ProductOption :IEntity
    {
        public int ProductOptionId { get; set; }
        public int ProductId { get; set; }
        public int OptionId { get; set; }

        //Relation
        public Product Product { get; set; }
        public Option Option { get; set; }
    }
}
