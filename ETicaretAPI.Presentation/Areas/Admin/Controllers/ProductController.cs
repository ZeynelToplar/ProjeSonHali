using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using X.PagedList;

namespace ETicaretAPI.Presentation.Areas.Admin.Controllers
{
    [Area("admin")]
    public class ProductController : Controller
    {
        IProductService _productService;
        ICategoryService _categoryService;
        IBrandService _brandService;

        public ProductController(IProductService productService, ICategoryService categoryService, IBrandService brandService)
        {
            _productService = productService;
            _categoryService = categoryService;
            _brandService = brandService;
        }

        public IActionResult Index(int page = 1)
        {
            var values = _productService.GetProductsWithCategoryAndBrand().Data.Where(x => x.Status == true).ToList().ToPagedList(page,10);
            return View(values);
        }

        [HttpGet]
        public IActionResult AddProduct()
        {
            List<SelectListItem> categories = (from x in _categoryService.GetCategories().Data
                                               select new SelectListItem
                                               {
                                                   Text = x.CategoryName,
                                                   Value = x.CategoryId.ToString()
                                               }).ToList();
            ViewBag.Categories = categories;

            List<SelectListItem> brands = (from x in _brandService.GetBrands().Data
                                           select new SelectListItem
                                           {
                                               Text = x.BrandName,
                                               Value = x.BrandId.ToString()
                                           }).ToList();
            ViewBag.Brands = brands;
            return View();
        }
        [HttpPost]
        public IActionResult AddProduct(Product product)
        {
            _productService.Add(product);
            return RedirectToAction("Index");
        }
        [HttpGet]
        public IActionResult UpdateProduct(int id)
        {
            List<SelectListItem> categories = (from x in _categoryService.GetCategories().Data
                                               select new SelectListItem
                                               {
                                                   Text = x.CategoryName,
                                                   Value = x.CategoryId.ToString()
                                               }).ToList();
            ViewBag.Categories = categories;

            List<SelectListItem> brands = (from x in _brandService.GetBrands().Data
                                           select new SelectListItem
                                           {
                                               Text = x.BrandName,
                                               Value = x.BrandId.ToString()
                                           }).ToList();
            ViewBag.Brands = brands;
            var values = _productService.GetProductById(id);
            return View(values.Data);
        }
        [HttpPost]
        public IActionResult UpdateProduct(Product product)
        {
            _productService.Update(product);
            return RedirectToAction("Index");
        }

        public IActionResult DeleteProduct(int id)
        {
            var product = _productService.GetProductById(id);
            product.Data.Status = false;
            _productService.Update(product.Data);
            return RedirectToAction("Index");
        }
    }
}
