using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class OrderStatus : IEntity
    {
        public int OrderStatusId { get; set; }
        public string OrderStatusName { get; set; }

        //Relation
        public ICollection<Order> Orders { get; set; }
    }
}
