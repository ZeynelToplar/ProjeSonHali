using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.Controllers
{
    [Authorize]
    public class FavController : Controller
    {
        readonly IFavService _favService;

        public FavController(IFavService favService)
        {
            _favService = favService;
        }

        
        public IActionResult AddFav(int id)
        {
            if (HttpContext.Session.GetInt32("id") is null)
                return RedirectToAction("Login", "Auth");
            Favorite fav = new Favorite
            {
                ProductId = id,
                CustomerId = (int)HttpContext.Session.GetInt32("id")
            };
             _favService.AddFav(fav);

            return RedirectToAction("Favs");
        }

        
        public IActionResult DeleteFav(int id)
        {
            var fav = _favService.GetFavorite(id);
            _favService.DeleteFav(fav.Data);
            return RedirectToAction("Favs");
        }

        public IActionResult Favs()
        {
            var values = _favService.GetAllFav((int)HttpContext.Session.GetInt32("id"));
            return View(values.Data);
        }
    }
}
