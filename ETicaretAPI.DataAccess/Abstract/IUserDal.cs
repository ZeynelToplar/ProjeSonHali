using ETicaretAPI.Core.DataAccess;
using ETicaretAPI.Core.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.DataAccess.Abstract
{
    public interface IUserDal : IEntityRepositoryBase<User>
    {
        List<OperationClaim> GetClaims(User user);
    }
}
