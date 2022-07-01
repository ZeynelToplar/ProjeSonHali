using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Business.Constants;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Core.Utilities.Security.Hashing;
using ETicaretAPI.Entities.Concrete;
using ETicaretAPI.Entities.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Concrete
{
    public class CustomerAuthManager : ICustomerAuthService
    {
        ICustomerService _customerService;

        public CustomerAuthManager(ICustomerService customerService)
        {
            _customerService = customerService;
        }

        public IDataResult<Customer> Login(CustomerForLoginDto customerForLoginDto)
        {
            var userToCheck = _customerService.GetByMail(customerForLoginDto.Email);
            if (userToCheck == null)
            {
                return new ErrorDataResult<Customer>(Messages.UserNotFound);
            }

            if (!HashingHelper.VerifyPassword(customerForLoginDto.Password, userToCheck.Password))
            {
                return new ErrorDataResult<Customer>(Messages.PasswordError);
            }

            return new SuccessDataResult<Customer>(userToCheck, Messages.SuccessfulLogin);
        }

        public IDataResult<Customer> Register(CustomerForRegisterDto customerForRegisterDto)
        {
            string passwordHash;
            //HashingHelper.CreatePasswordHash(password, out passwordHash);
            var customer = new Customer
            {
                Email = customerForRegisterDto.Email,
                Name = customerForRegisterDto.Name,
                Surname = customerForRegisterDto.Surname,
                Password = customerForRegisterDto.Password,
                RegistrationDate = DateTime.UtcNow,
                CustomerStatus = true
            };
            _customerService.Add(customer);
            return new SuccessDataResult<Customer>(customer, Messages.UserRegistered);
        }

        public IResult UserExists(string email)
        {
            if (_customerService.GetByMail(email) != null)
            {
                return new ErrorResult(Messages.UserAlreadyExists);
            }
            return new SuccessResult();
        }
    }
}
