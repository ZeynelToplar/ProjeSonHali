using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.ViewComponents.Basket
{
    public class MiniCart : ViewComponent
    {
        IBasketService _basketService;

        public MiniCart(IBasketService basketService)
        {
            _basketService = basketService;
        }

        public IViewComponentResult Invoke(int customerId)
        {
            var values = _basketService.GetAllBasketWithProduct(customerId).Data.Where(x=>x.BasketStatus == true).ToList();
            return View(values);
        }
    }
}
