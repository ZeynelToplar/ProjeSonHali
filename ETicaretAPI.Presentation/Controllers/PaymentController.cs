using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.Controllers
{
    public class PaymentController : Controller
    {
        readonly IOrderService _orderService;

        public PaymentController(IOrderService orderService)
        {
            _orderService = orderService;
        }

        [HttpGet]
        public IActionResult Index()
        {
            //var value = _basketService.GetAllBasketWithProduct((int)HttpContext.Session.GetInt32("id")).Data.Where(x => x.BasketStatus == true).ToList();
            return View();
        }

        [HttpGet]
        public IActionResult PaySuccessfull()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Pay(Order order)
        {
            Order newOrder = new Order
            {
                Amount = 4,
                CustomerId = (int)HttpContext.Session.GetInt32("id"),
                ShipAddress = order.ShipAddress,
                InvoiceAddress = order.ShipAddress,
                PaymentId = 1,
                OrderDate = DateTime.Now,
                OrderStatusId = 1,
                PaymentStatus = "Ödendi"
            };
            var customerId = (int)HttpContext.Session.GetInt32("id");
            _orderService.AddOrder(newOrder);
            var a = newOrder.OrderId;
            return Redirect($"~/Order/PastOrders/?customerId={customerId}&orderId={newOrder.OrderId}");
        }
    }
}
