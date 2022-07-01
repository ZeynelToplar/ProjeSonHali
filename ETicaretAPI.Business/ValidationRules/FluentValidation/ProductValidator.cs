using ETicaretAPI.Entities.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.ValidationRules.FluentValidation
{
    public class ProductValidator : AbstractValidator<Product>
    {
        public ProductValidator()
        {
            RuleFor(x=>x.ProductName).NotEmpty().WithMessage("Bu alanı boş geçemezsiniz.");
            RuleFor(x=>x.ProductName).MinimumLength(30);
            RuleFor(x=>x.Quantity).NotEmpty();
            RuleFor(x=>x.BrandId).NotEmpty();
            RuleFor(x=>x.UnitPrice).GreaterThanOrEqualTo(150);
        }
    }
}
