using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Abstract
{
    public interface IOrderService
    {
        IResult AddOrder(Order order);
        IResult UpdateOrder(Order order);
        IDataResult<Order> GetOrder(int id);
        IDataResult<List<Order>> GetAllOrders();
    }
}
