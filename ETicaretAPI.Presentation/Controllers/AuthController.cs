using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Entities.Dtos;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace ETicaretAPI.Presentation.Controllers
{
    [AllowAnonymous]
    public class AuthController : Controller
    {
        private ICustomerAuthService _authService;

        public AuthController(ICustomerAuthService authService)
        {
            _authService = authService;
        }

        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Login(CustomerForLoginDto customerForLoginDto)
        {
            var customerToLogin = _authService.Login(customerForLoginDto);
            if (!customerToLogin.Success)
            {
                return View();
            }
            //var result = _authService.CreateAccessToken(userToLogin.Data);
            //if (result.Success)
            //{

            //}
            ///HttpContext.Session.SetString("token", result.Data.Token);
            HttpContext.Session.SetInt32("id", customerToLogin.Data.CustomerId);
            HttpContext.Session.SetString("username", customerToLogin.Data.Name);
            
            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, customerToLogin.Data.Name),
            };

            var userIdentity = new ClaimsIdentity(claims, "a");
            ClaimsPrincipal principal = new ClaimsPrincipal(userIdentity);
            await HttpContext.SignInAsync(principal);

            return RedirectToAction("Index", "Home");
        }
        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Register(CustomerForRegisterDto customerForRegisterDto)
        {
            var userExist = _authService.UserExists(customerForRegisterDto.Email);
            if (!userExist.Success)
            {
                return View();
            }

            var registerResult = _authService.Register(customerForRegisterDto);
            //var result = _authService.CreateAccessToken(registerResult.Data);
            //ViewBag.accessToken = result.Data;
            //if (result.Success)
            //{

            //}
            //HttpContext.Session.SetString("token", result.Data.Token);
            HttpContext.Session.SetInt32("id", registerResult.Data.CustomerId);
            HttpContext.Session.SetString("username", $"{customerForRegisterDto.Name}  {customerForRegisterDto.Surname}");
            return RedirectToAction("Index", "Home");
        }
        public async Task<IActionResult> Logout()
        {
            HttpContext.Session.Clear();
            await HttpContext.SignOutAsync();
            return RedirectToAction("Index", "Home");
        }
    }
}
