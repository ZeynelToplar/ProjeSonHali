using ETicaretAPI.Core.Entities.Concrete;
using ETicaretAPI.Core.Utilities.Results;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Abstract
{
    public interface IUserService
    {
        IDataResult<List<User>> GetAll();

        IDataResult<User> GetById(int id);

        IResult Add(User user);

        IResult Delete(User user);

        IResult Update(User user);

        List<OperationClaim> GetClaims(User user);

        User GetByMail(string email);
    }
}
