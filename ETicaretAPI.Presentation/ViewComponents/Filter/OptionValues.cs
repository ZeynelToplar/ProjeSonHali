using ETicaretAPI.Business.Abstract;
using Microsoft.AspNetCore.Mvc;

namespace ETicaretAPI.Presentation.ViewComponents.Filter
{
    public class OptionValues : ViewComponent
    {
        private readonly IOptionValueService _optionValueService;

        public OptionValues(IOptionValueService optionValueService)
        {
            _optionValueService = optionValueService;
        }

        public IViewComponentResult Invoke(int optionId)
        {
            var values = _optionValueService.GetAllByOptionId(optionId);
            return View(values.Data);
        }
    }
}
