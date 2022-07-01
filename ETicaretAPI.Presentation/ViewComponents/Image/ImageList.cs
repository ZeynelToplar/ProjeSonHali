using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.ViewComponents.Image
{
    public class ImageList : ViewComponent
    {
        private IImageService _imageService;

        public ImageList(IImageService imageService)
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
