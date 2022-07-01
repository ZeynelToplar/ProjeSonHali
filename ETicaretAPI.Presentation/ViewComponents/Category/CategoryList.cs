using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.ViewComponents.Category
{
    public class CategoryList : ViewComponent
    {
        ICategoryService _categoryService;

        public CategoryList(ICategoryService categoryService)
        {
            _categoryService = categoryService;
        }

        public IViewComponentResult Invoke()
        {
            var result = _categoryService.GetCategories();
            return View(result.Data);
        }

    }
}
