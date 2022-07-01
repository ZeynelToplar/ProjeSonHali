using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;
using X.PagedList;

namespace ETicaretAPI.Presentation.Areas.Admin.Controllers
{
    [Area("admin")]
    public class OrderController : Controller
    {
        readonly IOrderService _orderService;
        readonly IOrderDetailService _orderDetailService;

        public OrderController(IOrderService orderService, IOrderDetailService orderDetailService)
        {
            _orderService = orderService;
            _orderDetailService = orderDetailService;
        }

        public IActionResult Index(int page = 1)
        {
            var values = _orderService.GetAllOrders().Data.ToPagedList(page,10);
            return View(values);
        }

        public IActionResult OrderDetails(int id, int page = 1)
        {
            var orderDetails = _orderDetailService.GetAllWithOrderId(id).Data.ToPagedList(page,10);
            return View(orderDetails);
        }

        public IActionResult ConfirmOrder(int id)
        {
            var order = _orderService.GetOrder(id);
            order.Data.OrderStatusId = 2;
            _orderService.UpdateOrder(order.Data);
            return RedirectToAction("Index");
        }
    }
}
