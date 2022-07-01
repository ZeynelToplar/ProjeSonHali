using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Concrete
{
    public class OrderDetailManager : IOrderDetailService
    {
        readonly IOrderDetailDal _orderDetailDal;

        public OrderDetailManager(IOrderDetailDal orderDetailDal)
        {
            _orderDetailDal = orderDetailDal;
        }

        public IResult Add(OrderDetail orderDetail)
        {
            _orderDetailDal.Add(orderDetail);
            return new SuccessResult();
        }

        public IDataResult<List<OrderDetail>> GetAllWithOrderId(int orderId)
        {
            return new SuccessDataResult<List<OrderDetail>>(_orderDetailDal.GetOrderDetailsWithProduct(orderId));
        }
    }
}
