using ETicaretAPI.Core.DataAccess.EntityFramework;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.DataAccess.Contexts;
using ETicaretAPI.Entities.Concrete;

namespace ETicaretAPI.DataAccess.Concrete.EntityFramework
{
    public class EfPaymentDal : EfEntityRepositoryBase<Payment, DbTeamSolidContext>, IPaymentDal
    {
    }
}
