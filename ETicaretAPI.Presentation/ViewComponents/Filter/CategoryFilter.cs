using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.ViewComponents.Filter
{
    public class CategoryFilter : ViewComponent
    {
        ICategoryOptionService _categoryOptionService;

        public CategoryFilter(ICategoryOptionService categoryOptionService)
        {
            _categoryOptionService = categoryOptionService;
        }

        public IViewComponentResult Invoke(int categoryId)
        {
            var values = _categoryOptionService.GetAllByCategoryId(categoryId);
            return View(values.Data);
        }
    }
}
