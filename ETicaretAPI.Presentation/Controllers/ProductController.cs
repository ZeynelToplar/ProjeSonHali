using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.Controllers
{

    public class ProductController : Controller
    {
        private IProductService _productService;
        private IBasketService _basketService;

        public ProductController(IProductService productService, IBasketService basketService)
        {
            _productService = productService;
            _basketService = basketService;
        }
        [AllowAnonymous]
        public IActionResult Shopping(int categoryId, int subCategoryId, int brandId)
        {
            if (subCategoryId != 0)
            {
                var subCategories = _productService.GetProductsBySubCategoryId(subCategoryId);
                ViewBag.id = subCategoryId;
                return View(subCategories.Data);
            }
            var categories = _productService.GetProductsByCategoryId(categoryId);
            ViewBag.id = categoryId;
            return View(categories.Data);
        }
        [AllowAnonymous]
        public IActionResult Filter(int id, string[]? opts = null, int minPrice = 0, int maxPrice = 0)
        {
            ViewBag.id = id;
            var values = _productService.GetProductByFilter(opts, minPrice, maxPrice, id);
            return View(values.Data);
        }
        [AllowAnonymous]
        public IActionResult ProductLayout(int id)
        {
            var value = _productService.GetProductById(id);
            var productValues = _productService.GetProductWithCategory(id, value.Data.CategoryId);
            ViewBag.success = TempData["success"];
            return View(productValues.Data);
        }

        [HttpPost]
        public IActionResult AddBasket(Product product)
        {
            int customerId = (int)HttpContext.Session.GetInt32("id");
            var value = _basketService.GetAllByCustomerId(customerId);
            if (value.Data.Count > 0)
            {
                var prod = _basketService.GetBasketByProductId(product.ProductId);
                if (prod.Data != null && prod.Data.BasketStatus == true)
                {
                    prod.Data.CustomerId = customerId;
                    prod.Data.ProductId = product.ProductId;
                    prod.Data.Quantity += product.Quantity;
                    prod.Data.UnitPrice = product.UnitPrice;
                    prod.Data.BasketStatus = true;
                    _basketService.UpdateBasket(prod.Data);
                }
                else
                {
                    var basket = new Basket
                    {
                        CustomerId = customerId,
                        ProductId = product.ProductId,
                        Quantity = product.Quantity,
                        UnitPrice = product.UnitPrice,
                        BasketStatus = true
                    };
                    _basketService.AddBasket(basket);
                }
            }
            else
            {
                var basket = new Basket
                {
                    CustomerId = customerId,
                    ProductId = product.ProductId,
                    Quantity = product.Quantity,
                    UnitPrice = product.UnitPrice,
                    BasketStatus = true
                };
                _basketService.AddBasket(basket);
            }
            TempData["success"] = "true";
            return Redirect($"~/Product/ProductLayout/{product.ProductId}");
        }
    }
}
