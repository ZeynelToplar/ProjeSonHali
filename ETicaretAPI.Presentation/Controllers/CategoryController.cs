using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.Controllers
{
    public class CategoryController : Controller
    {
        ICategoryService _categoryService;

        public CategoryController(ICategoryService categoryService)
        {
            _categoryService = categoryService;
        }
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
    }
}
