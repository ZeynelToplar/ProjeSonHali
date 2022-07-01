using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.Controllers
{
    public class ImageController : Controller
    {
        IImageService _imageService;

        public ImageController(IImageService imageService)
        {
            _imageService = imageService;
        }
        [HttpGet]
        public IActionResult AddImage(int id)
        {
            ViewBag.Id = id;
            return View();
        }
        [HttpPost]
        public IActionResult AddImage([FromForm(Name = ("Image"))] IFormFile file, [FromForm] Image image)
        {
            _imageService.Add(file, image);
            return View();
        }
    }
}
