using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Shipment : IEntity
    {
        [Key]
        public int ShipmentId { get; set; }
        public int ShipperId { get; set; }
        public int OrderId { get; set; }
        public string ToAddress { get; set; }
        public string FromAddress { get; set; }
        public DateTime SendDate { get; set; }

        //Relation
        public Order Order { get; set; }
        public Shipper Shipper { get; set; }
    }
}
