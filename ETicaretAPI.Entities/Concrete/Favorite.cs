using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Favorite:IEntity
    {
        public int FavoriteId { get; set; }
        public int CustomerId { get; set; }
        public int ProductId { get; set; }

        //Relation
        public Customer Customer { get; set; }
        public Product Product { get; set; }
    }
}
