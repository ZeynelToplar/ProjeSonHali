using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.Controllers
{
    public class ErrorPageController : Controller
    {
        public IActionResult Error401(int code)
        {
            return View();
        }
    }
}
