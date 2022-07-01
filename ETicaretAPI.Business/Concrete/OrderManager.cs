using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Concrete
{
    public class OrderManager : IOrderService
    {
        readonly IOrderDal _orderDal;

        public OrderManager(IOrderDal orderDal)
        {
            _orderDal = orderDal;
        }

        public IResult AddOrder(Order order)
        {
            _orderDal.Add(order);
            return new SuccessResult();
        }

        public IDataResult<List<Order>> GetAllOrders()
        {
            return new SuccessDataResult<List<Order>>(_orderDal.GetOrdersWithAll());
        }

        public IDataResult<Order> GetOrder(int id)
        {
            return new SuccessDataResult<Order>(_orderDal.Get(x => x.OrderId == id));
        }

        public IResult UpdateOrder(Order order)
        {
            _orderDal.Update(order);
            return new SuccessResult();
        }
    }
}
