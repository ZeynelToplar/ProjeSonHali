using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Concrete
{
    public class FavManager : IFavService
    {
        readonly IFavDal _favDal;

        public FavManager(IFavDal favDal)
        {
            _favDal = favDal;
        }

        public IResult AddFav(Favorite fav)
        {
            _favDal.Add(fav);
            return new SuccessResult();
        }

        public IResult DeleteFav(Favorite fav)
        {
            _favDal.Delete(fav);
            return new SuccessResult();
        }

        public IDataResult<List<Favorite>> GetAllFav(int id)
        {
            return new SuccessDataResult<List<Favorite>>(_favDal.GetFavsWithProduct(id));
        }

        public IDataResult<Favorite> GetFavorite(int id)
        {
            return new SuccessDataResult<Favorite>(_favDal.Get(x => x.FavoriteId == id));
        }
    }
}
