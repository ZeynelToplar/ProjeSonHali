using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Payment : IEntity
    {
        public int PaymentId { get; set; }
        public string PaymentType { get; set; }

        //Relation
        public ICollection<Order> Orders { get; set; }
    }
}
