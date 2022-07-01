using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Shipper : IEntity
    {
        public int ShipperId { get; set; }
        public string Name { get; set; }

        //Relation
        public ICollection<Shipment> Shipments { get; set; }
    }
}
