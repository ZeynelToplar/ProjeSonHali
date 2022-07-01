using ETicaretAPI.Core.DataAccess.EntityFramework;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.DataAccess.Contexts;
using ETicaretAPI.Entities.Concrete;
using Microsoft.EntityFrameworkCore;

namespace ETicaretAPI.DataAccess.Concrete.EntityFramework
{
    public class EfFavDal : EfEntityRepositoryBase<Favorite, DbTeamSolidContext>, IFavDal
    {
        public List<Favorite> GetFavsWithProduct(int id)
        {
            using (var context = new DbTeamSolidContext())
            {
               var values = context.Favorites.Include(x=>x.Product).Where(x=>x.CustomerId == id).ToList();
                return values;
            }
        }
    }
}
