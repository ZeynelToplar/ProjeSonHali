using ETicaretAPI.Core.DataAccess;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.DataAccess.Abstract
{
    public interface IFavDal : IEntityRepositoryBase<Favorite>
    {
        List<Favorite> GetFavsWithProduct(int id);
    }
}
