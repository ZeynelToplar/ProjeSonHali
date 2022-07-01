using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using X.PagedList;

namespace ETicaretAPI.Presentation.Areas.Admin.Controllers
{
    [Area("admin")]
    public class CategoryController : Controller
    {
        ICategoryService _categoryService;

        public CategoryController(ICategoryService categoryService)
        {
            _categoryService = categoryService;
        }
        public IActionResult Index(int page = 1)
        {
            var values = _categoryService.GetCategories().Data.ToPagedList(page,10);
            return View(values);
        }

        [HttpGet]
        public IActionResult AddCategory()
        {
            List<SelectListItem> categories = (from x in _categoryService.GetCategories().Data.Where(x=>x.ParentId == 0)
                                               select new SelectListItem
                                               {
                                                   Text = x.CategoryName,
                                                   Value = x.CategoryId.ToString()
                                               }).ToList();
            ViewBag.Categories = categories;
            return View();
        }

        [HttpPost]
        public IActionResult AddCategory(Category category)
        {
            category.CategoryStatus = true;
            _categoryService.Add(category);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult UpdateCategory(int id)
        {
            List<SelectListItem> categories = (from x in _categoryService.GetCategories().Data.Where(x => x.ParentId == 0)
                                               select new SelectListItem
                                               {
                                                   Text = x.CategoryName,
                                                   Value = x.CategoryId.ToString()
                                               }).ToList();
            ViewBag.Categories = categories;
            var value = _categoryService.GetCategory(id);
            return View(value.Data);
        }

        [HttpPost]
        public IActionResult UpdateCategory(Category category)
        {
            _categoryService.Update(category);
            return RedirectToAction("Index");
        }
    }
}
