using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.ViewComponents.Product
{
    public class HotDeals : ViewComponent
    {
        IProductService _productService;

        public HotDeals(IProductService productService)
        {
            _productService = productService;
        }


        public IViewComponentResult Invoke()
        {
            var values = _productService.GetAllProductsOrderByDiscount();
            return View(values.Data);
        }
    }
}
