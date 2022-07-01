using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.Controllers
{
    public class CustomerController : Controller
    {
        readonly ICustomerService _customerService;

        public CustomerController(ICustomerService customerService)
        {
            _customerService = customerService;
        }

        [HttpGet]
        public IActionResult UserDetails()
        {
            if(HttpContext.Session.GetInt32("id") is null)
            {
                return RedirectToAction("login", "Auth");
            }

            var customer = _customerService.GetById((int)HttpContext.Session.GetInt32("id"));
            return View(customer.Data);
        }

        [HttpPost]
        public IActionResult UpdateUserDetails(Customer customer)
        {
            var DbCustomer = _customerService.GetById((int)HttpContext.Session.GetInt32("id"));
            customer.CustomerId = (int)HttpContext.Session.GetInt32("id");
            customer.RegistrationDate = DbCustomer.Data.RegistrationDate;
            _customerService.Update(customer);
            return RedirectToAction("Login","Auth");
        }
    }
}
