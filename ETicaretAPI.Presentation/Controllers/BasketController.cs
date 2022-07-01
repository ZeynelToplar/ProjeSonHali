using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace ETicaretAPI.Presentation.Controllers
{
    public class BasketController : Controller
    {
        IBasketService _basketService;

        public BasketController(IBasketService basketService)
        {
            _basketService = basketService;
        }

        public IActionResult Index(int id)
        {
            var values = _basketService.GetAllBasketWithProduct(id).Data.Where(x=>x.BasketStatus == true).ToList();
            return View(values);
        }

        //[HttpPost]
        //public IActionResult AddBasket(Product product)
        //{
        //    int customerId = (int)HttpContext.Session.GetInt32("id");
        //    var value = _basketService.GetAllByCustomerId(customerId);
        //    if (value.Data.Count > 0)
        //    {
        //        var prod = _basketService.GetBasketByProductId(product.ProductId);
        //        if (prod.Data != null)
        //        {
        //            prod.Data.CustomerId = customerId;
        //            prod.Data.ProductId = product.ProductId;
        //            prod.Data.Quantity += product.Quantity;
        //            prod.Data.UnitPrice = product.UnitPrice;
        //            _basketService.UpdateBasket(prod.Data);
        //        }
        //        else
        //        {
        //            var basket = new Basket
        //            {
        //                CustomerId = customerId,
        //                ProductId = product.ProductId,
        //                Quantity = product.Quantity,
        //                UnitPrice = product.UnitPrice,
        //            };
        //            _basketService.AddBasket(basket);
        //        }
        //    }
        //    else
        //    {
        //        var basket = new Basket
        //        {
        //            CustomerId = customerId,
        //            ProductId = product.ProductId,
        //            Quantity = product.Quantity,
        //            UnitPrice = product.UnitPrice,
        //        };
        //        _basketService.AddBasket(basket);
        //    }
        //    return Redirect("~/Product/ProductLayout/" + product.ProductId);
        //}


        public IActionResult RemoveBasket(int id)
        {
            var value = _basketService.Get(id);
            _basketService.DeleteBasket(value.Data);
            return Redirect("~/Basket/Index/"+HttpContext.Session.GetInt32("id"));
        }

        //public IActionResult PastOrders(int id)
        //{
        //    var values = _basketService.GetAllByCustomerId(id);
        //    foreach (var value in values.Data)
        //    {
        //        value.BasketStatus = false;
        //        _basketService.UpdateBasket(value);
        //    }

        //    return RedirectToAction("PaySuccessfull","Payment");
        //} 
    }
}
