using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Address : IEntity
    {
        public int AddressId { get; set; }
        public int CustomerId { get; set; }
        public string AddressDescription { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public string PostalCode { get; set; }
        public string Phone { get; set; }

        //Relation
        public Customer Customer { get; set; }
    }
}
