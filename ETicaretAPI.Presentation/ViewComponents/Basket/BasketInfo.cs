using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.ViewComponents.Basket
{
    public class BasketInfo : ViewComponent
    {
        readonly IBasketService _basketService;

        public BasketInfo(IBasketService basketService)
        {
            _basketService = basketService;
        }

        public IViewComponentResult Invoke()
        {
            var value = _basketService.GetAllBasketWithProduct((int)HttpContext.Session.GetInt32("id")).Data.Where(x => x.BasketStatus == true).ToList();
            return View(value);
        }
    }
}
