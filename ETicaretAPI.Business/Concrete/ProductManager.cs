using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Business.Constants;
using ETicaretAPI.Business.ValidationRules.FluentValidation;
using ETicaretAPI.Core.Aspects.Autofac.Validation;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.DataAccess.Concrete.EntityFramework;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Concrete
{
    public class ProductManager : IProductService
    {
        readonly IProductDal _productDal;
        readonly ICategoryService _categoryService;

        public ProductManager(IProductDal productDal, ICategoryService categoryService)
        {
            _productDal = productDal;
            _categoryService = categoryService;
        }

        [ValidationAspect(typeof(ProductValidator))] //Attribute
        public IResult Add(Product product)
        {
            product.ProductCreatedDate = DateTime.Now;
            product.Status = true;
            _productDal.Add(product);
            return new SuccessResult(Messages.ProductAdded);
        }

        public IResult Delete(Product product)
        {
            _productDal.Delete(product);
            return new SuccessResult();
        }

        public IDataResult<List<Product>> GetAllProducts()
        {
            return new SuccessDataResult<List<Product>>(_productDal.GetAll());
        }

        public IDataResult<List<Product>> GetAllProductsOrderByDiscount()
        {
            return new SuccessDataResult<List<Product>>(_productDal.GetAll().OrderByDescending(x => x.Discount).Take(10).ToList());
        }

        public IDataResult<List<Product>> GetProductByFilter(string[] opts, int minPrice, int maxPrice,int id)
        {
            return new SuccessDataResult<List<Product>>(_productDal.GetProductsByFilter(opts, minPrice, maxPrice, id));
        }

        public IDataResult<Product> GetProductById(int id)
        {
            return new SuccessDataResult<Product>(_productDal.Get(x => x.ProductId == id));
        }

        public IDataResult<List<Product>> GetProductsByCategoryId(int id)
        {
            var categories = _categoryService.GetSubCategoriesById(id);
            List<Product> tempValues  = new();
            foreach (var category in categories.Data)
            {
                tempValues.AddRange(_productDal.GetAll(x => x.CategoryId == category.CategoryId));
                
            }
            return new SuccessDataResult<List<Product>>(tempValues);
        }

        public IDataResult<List<Product>> GetProductsBySubCategoryId(int id)
        {
            return new SuccessDataResult<List<Product>>(_productDal.GetAll(data=>data.CategoryId == id));
        }

        public IDataResult<List<Product>> GetProductsWithCategoryAndBrand()
        {
            return new SuccessDataResult<List<Product>>(_productDal.GetProductsWithCategoryAndBrand());
        }

        public IDataResult<Product> GetProductWithCategory(int productId, int categoryId)
        {
            return new SuccessDataResult<Product>(_productDal.GetProductWithCategory(productId, categoryId));
        }

        public IResult Update(Product product)
        {
            _productDal.Update(product);
            return new SuccessResult();
        }
    }
}
