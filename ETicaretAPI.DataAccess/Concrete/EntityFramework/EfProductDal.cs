using ETicaretAPI.Core.DataAccess.EntityFramework;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.DataAccess.Contexts;
using ETicaretAPI.Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.DataAccess.Concrete.EntityFramework
{
    public class EfProductDal : EfEntityRepositoryBase<Product, DbTeamSolidContext>, IProductDal
    {
        public List<Product> GetProductsByFilter(string[] opts, int minPrice, int maxPrice, int id)
        {
            
            List<Product> products = new();
            using (var context = new DbTeamSolidContext())
            {
                if (minPrice > 0 && maxPrice > 0 && opts == null)
                {
                    products.AddRange(context.Products.Where(x => x.UnitPrice > minPrice && x.UnitPrice < maxPrice && x.CategoryId == id).ToList());
                    

                }
                else if(minPrice == 0 && maxPrice == 0 && opts != null)
                {
                    foreach (var opt in opts)
                    {
                        products.AddRange(context.Products.Where(x => x.ProductName.Contains(opt) && x.CategoryId == id).ToList());
                        
                    }
                }
                else
                {
                    foreach (var opt in opts)
                    {
                        products.AddRange(context.Products.Where(x => x.ProductName.Contains(opt) && x.CategoryId == id && x.UnitPrice > minPrice && x.UnitPrice < maxPrice).ToList());
                        
                    }
                }
                return products;
            }

        }

        public List<Product> GetProductsWithCategoryAndBrand()
        {
            using (var context = new DbTeamSolidContext())
            {
                return (context.Products.Include(x => x.Category).Include(y => y.Brand).ToList());
            }
        }

        public Product GetProductWithCategory(int productId, int categoryId)
        {
            using (var context = new DbTeamSolidContext())
            {
                return (context.Products.Include(x => x.Category).Where(x => x.ProductId == productId && x.CategoryId == categoryId).SingleOrDefault());
            }
        }

        public Product GetProductWithImages(int id)
        {
            using (var context = new DbTeamSolidContext())
            {
                return context.Products.Include(x => x.Images).SingleOrDefault();
            }
        }
    }
}
