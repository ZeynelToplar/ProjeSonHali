using ETicaretAPI.Core.Entities.Concrete;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Abstract
{
    public interface ICustomerService
    {
        IDataResult<List<Customer>> GetAll();

        IDataResult<Customer> GetById(int id);

        IResult Delete(Customer customer);

        IResult Update(Customer customer);

        List<OperationClaim> GetClaims(Customer customer);

        Customer GetByMail(string email);
        IResult Add(Customer customer);
    }
}
