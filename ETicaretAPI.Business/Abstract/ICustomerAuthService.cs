using ETicaretAPI.Core.Entities.Concrete;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Entities.Concrete;
using ETicaretAPI.Entities.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Abstract
{
    public interface ICustomerAuthService
    {
        IDataResult<Customer> Register(CustomerForRegisterDto customerForRegisterDto);
        IDataResult<Customer> Login(CustomerForLoginDto customerForLoginDto);
        IResult UserExists(string email);
    }
}
