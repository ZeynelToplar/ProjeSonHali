using ETicaretAPI.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Entities.Concrete
{
    public class OptionValue : IEntity
    {
        public int OptionValueId { get; set; }
        public int OptionId { get; set; }
        public string Value { get; set; }

        //Relation

        public Option Option { get; set; }
    }
}
