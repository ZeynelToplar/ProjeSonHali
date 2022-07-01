using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Abstract
{
    public interface ICategoryOptionService
    {
        IDataResult<List<CategoryOption>> GetAllByCategoryId(int categoryId);
    }
}
