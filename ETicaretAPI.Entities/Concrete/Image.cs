using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Image : IEntity
    {
        public int ImageId { get; set; }
        public int ProductId { get; set; }
        public string ImagePath { get; set; }

        //Relation
        public Product Product { get; set; }
    }
}
