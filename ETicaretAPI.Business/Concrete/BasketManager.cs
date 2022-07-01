using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Business.Constants;
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
    public class BasketManager : IBasketService
    {
        IBasketDal _basketDal;

        public BasketManager(IBasketDal basketDal)
        {
            _basketDal = basketDal;
        }

        public IResult AddBasket(Basket basket)
        {
            _basketDal.Add(basket);
            return new SuccessResult(Messages.AddToBasketSuccessfull);
        }

        public IResult DeleteBasket(Basket basket)
        {
            _basketDal.Delete(basket);
            return new SuccessResult();
        }

        public IDataResult<Basket> Get(int id)
        {
            return new SuccessDataResult<Basket>(_basketDal.Get(x => x.BasketId == id));
        }

        public IDataResult<List<Basket>> GetAllBasketWithProduct(int id)
        {
            return new SuccessDataResult<List<Basket>>(_basketDal.GetAllBasketWithProduct(id));
        }

        public IDataResult<List<Basket>> GetAllByCustomerId(int id)
        {
            return new SuccessDataResult<List<Basket>>(_basketDal.GetAll(x => x.CustomerId == id));
        }

        public IDataResult<Basket> GetBasketByProductId(int id)
        {
            return new SuccessDataResult<Basket>(_basketDal.Get(x => x.ProductId == id && x.BasketStatus == true));
        }

        public IResult UpdateBasket(Basket basket)
        {
            _basketDal.Update(basket);
            return new SuccessResult();
        }
    }
}
