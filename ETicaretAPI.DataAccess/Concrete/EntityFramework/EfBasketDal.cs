using ETicaretAPI.Core.DataAccess.EntityFramework;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.DataAccess.Contexts;
using ETicaretAPI.Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.DataAccess.Concrete.EntityFramework
{
    public class EfBasketDal : EfEntityRepositoryBase<Basket, DbTeamSolidContext>, IBasketDal
    {
        public List<Basket> GetAllBasketWithProduct(int id)
        {
            using (var context = new DbTeamSolidContext())
            {
                return context.Baskets.Include(x => x.Product).Where(x => x.CustomerId == id).ToList();
            }
        }
    }
}
