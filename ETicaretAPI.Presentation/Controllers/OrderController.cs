using ETicaretAPI.Business.Abstract;
using ETicaretAPI.DataAccess.Contexts;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ETicaretAPI.Presentation.Controllers
{
    public class OrderController : Controller
    {
        readonly IBasketService _basketService;
        readonly IOrderDetailService _orderDetailService;
        readonly IOrderService _orderService;
        public OrderController(IBasketService basketService, IOrderDetailService orderDetailService, IOrderService orderService)
        {
            _basketService = basketService;
            _orderDetailService = orderDetailService;
            _orderService = orderService;
        }

        public IActionResult Index()
        {
            var values = _basketService.GetAllBasketWithProduct((int)HttpContext.Session.GetInt32("id")).Data.Where(x => x.BasketStatus == false).ToList();
            return View(values);
        }

        public IActionResult Soru()
        {
            DbTeamSolidContext db = new();
            var orders = db.Orders.Include(x => x.OrderDetails).Where(x => x.OrderDate <= DateTime.Parse("20-06-2022") && x.OrderDate >= DateTime.Parse("10-06-2022")).ToList();
            List<OrderDetail> orderDetail = db.OrderDetails.Include(x => x.Product).ToList();
            return View(orderDetail);
        }

        public IActionResult PastOrders(int customerId,int orderId)
        {
            var values = _basketService.GetAllByCustomerId(customerId).Data.Where(x=>x.BasketStatus == true).ToList();
            foreach (var value in values)
            {
                var detail = new OrderDetail
                {
                    OrderId = orderId,
                    ProductId = value.ProductId,
                    Quantity = value.Quantity,
                    UnitPrice = value.UnitPrice
                };
                _orderDetailService.Add(detail);
                value.BasketStatus = false;
                _basketService.UpdateBasket(value);
            }

            return RedirectToAction("PaySuccessfull", "Payment");
        }
    }
}
