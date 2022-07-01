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
    public class EfOrderDetailDal : EfEntityRepositoryBase<OrderDetail, DbTeamSolidContext>, IOrderDetailDal
    {
        public List<OrderDetail> GetOrderDetailsWithProduct(int id)
        {
            using (var context = new DbTeamSolidContext())
            {
                return context.OrderDetails.Where(x=>x.OrderId == id).Include(y => y.Product).ToList();
            }
        }
    }
}
