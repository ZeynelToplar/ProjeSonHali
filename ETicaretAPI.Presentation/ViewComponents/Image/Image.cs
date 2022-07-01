using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.ViewComponents.Image
{
    public class Image : ViewComponent
    {
        private IImageService _imageService;

        public Image(IImageService imageService)
        {
            _imageService = imageService;
        }

        public IViewComponentResult Invoke(int id)
        {
            var values = _imageService.GetImages(id);
            return View(values.Data);
        }
    }
}
