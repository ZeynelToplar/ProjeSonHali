using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Abstract
{
    public interface IFavService
    {
        IResult AddFav(Favorite fav);
        IResult DeleteFav(Favorite fav);
        IDataResult<List<Favorite>> GetAllFav(int id);
        IDataResult<Favorite> GetFavorite(int id);
    }
}
