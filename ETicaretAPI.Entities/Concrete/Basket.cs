using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Basket : IEntity
    {
        public int BasketId { get; set; }
        public int CustomerId { get; set; }
        public int ProductId { get; set; }
        public int Quantity { get; set; }
        public double UnitPrice { get; set; }
        public bool BasketStatus { get; set; }

        //Relation
        public Product Product { get; set; }
        public Customer Customer { get; set; }

    }
}
