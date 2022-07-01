using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Core.Aspects.Autofac.Caching;
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
    public class CategoryManager : ICategoryService
    {
        ICategoryDal _categoryDal;

        public CategoryManager(ICategoryDal categoryDal)
        {
            _categoryDal = categoryDal;
        }

        [CacheRemoveAspect("ICategoryService.Get")]
        public IResult Add(Category category)
        {
            _categoryDal.Add(category);
            return new SuccessResult();
        }
        [CacheAspect]
        public IDataResult<List<Category>> GetCategories()
        {
            return new SuccessDataResult<List<Category>>(_categoryDal.GetAll());
        }

        public IDataResult<Category> GetCategory(int id)
        {
            return new SuccessDataResult<Category>(_categoryDal.Get(x => x.CategoryId == id));
        }

        public IDataResult<List<Category>> GetSubCategoriesById(int id)
        {
            return new SuccessDataResult<List<Category>>(_categoryDal.GetAll(x => x.ParentId == id));
        }

        [CacheRemoveAspect("ICategoryService.Get")]
        public IResult Remove(Category category)
        {
            _categoryDal.Delete(category);
            return new SuccessResult();
        }
        [CacheRemoveAspect("ICategoryService.Get")]
        public IResult Update(Category category)
        {
            _categoryDal.Update(category);

            return new SuccessResult();
        }
    }
}
