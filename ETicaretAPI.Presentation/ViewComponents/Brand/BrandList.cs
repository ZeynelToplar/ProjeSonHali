using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.ViewComponents.Brand
{
    public class BrandList : ViewComponent
    {
        IBrandService _brandService;

        public BrandList(IBrandService brandService)
        {
            _brandService = brandService;
        }

        public IViewComponentResult Invoke(int id)
        {
            var result = _brandService.GetBrandsById(id);
            return View(result.Data);
        }
    }
}
