using ETicaretAPI.Core.DataAccess.EntityFramework;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.DataAccess.Contexts;
using ETicaretAPI.Entities.Concrete;
using Microsoft.EntityFrameworkCore;

namespace ETicaretAPI.DataAccess.Concrete.EntityFramework
{
    public class EfOrderDal : EfEntityRepositoryBase<Order, DbTeamSolidContext>, IOrderDal
    {
        public List<Order> GetOrdersWithAll()
        {
            using (var context = new DbTeamSolidContext())
            {
                return context.Orders.Include(x=>x.Payment).Include(x=>x.OrderStatus).Include(x=>x.Customer).ToList();
            }
        }
    }
}
