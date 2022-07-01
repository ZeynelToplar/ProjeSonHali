using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class CategoryOption : IEntity
    {
        public int CategoryOptionId { get; set; }
        public int CategoryId { get; set; }
        public int OptionId { get; set; }

        //Relation

        public Category Category { get; set; }
        public Option Option { get; set; }
    }
}
