using ETicaretAPI.Core.DataAccess;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.DataAccess.Abstract
{
    public interface IOptionValueDal : IEntityRepositoryBase<OptionValue>
    {
        List<OptionValue> GetAllWithOptions(int optionId);
        
    }
}
