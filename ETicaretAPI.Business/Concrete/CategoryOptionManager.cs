using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Concrete
{
    public class CategoryOptionManager : ICategoryOptionService
    {
        private readonly ICategoryOptionDal _categoryOptionDal;

        public CategoryOptionManager(ICategoryOptionDal categoryOptionDal)
        {
            _categoryOptionDal = categoryOptionDal;
        }

        public IDataResult<List<CategoryOption>> GetAllByCategoryId(int categoryId)
        {
            return new SuccessDataResult<List<CategoryOption>>(_categoryOptionDal.GetAllWithOptions(categoryId));
        }
    }
}
