using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class Option : IEntity
    {
        public int OptionId { get; set; }
        public string Name { get; set; }

        //Relation
        public ICollection<ProductOption> ProductOptions { get; set; }
        public ICollection<CategoryOption> CategoryOptions { get; set; }
        public ICollection<OptionValue> OptionValues { get; set; }
    }
}
