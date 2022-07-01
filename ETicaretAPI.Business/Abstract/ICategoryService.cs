using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Abstract
{
    public interface ICategoryService
    {
        IDataResult<List<Category>> GetCategories();
        IDataResult<List<Category>> GetSubCategoriesById(int id);
        IDataResult<Category> GetCategory(int id);
        IResult Add(Category category);
        IResult Remove(Category category);
        IResult Update(Category category);
    }
}
