using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Abstract
{
    public interface IProductService
    {
        IDataResult<List<Product>> GetAllProducts();
        IDataResult<List<Product>> GetAllProductsOrderByDiscount();
        IDataResult<List<Product>> GetProductsBySubCategoryId(int id);
        IDataResult<List<Product>> GetProductsByCategoryId(int id);

        IDataResult<List<Product>> GetProductsWithCategoryAndBrand();

        IDataResult<Product> GetProductById(int id);
        IDataResult<Product> GetProductWithCategory(int productId,int categoryId);
        IDataResult<List<Product>> GetProductByFilter(string[] opts, int minPrice, int maxPrice,int id);
        IResult Add(Product product);
        IResult Update(Product product);
        IResult Delete(Product product);
    }
}
