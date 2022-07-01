using ETicaretAPI.Core.DataAccess;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using ETicaretAPI.Core.Utilities.Results;

namespace ETicaretAPI.DataAccess.Abstract
{
    public interface IProductDal : IEntityRepositoryBase<Product>
    {
        Product GetProductWithCategory(int productId, int categoryId);
        Product GetProductWithImages(int id);
        List<Product> GetProductsByFilter(string[] opts, int minPrice,int maxPrice,int id);
        List<Product> GetProductsWithCategoryAndBrand();
    }
}
