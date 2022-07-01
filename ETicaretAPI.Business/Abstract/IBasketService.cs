using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Abstract
{
    public interface IBasketService
    {
        IDataResult<Basket> Get(int id);
        IResult AddBasket(Basket basket);
        IResult UpdateBasket(Basket basket);
        IResult DeleteBasket(Basket basket);
        IDataResult<List<Basket>> GetAllByCustomerId(int id);
        IDataResult<List<Basket>> GetAllBasketWithProduct(int id);

        IDataResult<Basket> GetBasketByProductId(int id);
    }
}
