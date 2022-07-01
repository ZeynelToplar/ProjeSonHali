using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.Controllers
{
    public class ContactController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
