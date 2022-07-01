using ETicaretAPI.Core.DataAccess.EntityFramework;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.DataAccess.Contexts;
using ETicaretAPI.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.DataAccess.Concrete.EntityFramework
{
    public class EfOptionDal : EfEntityRepositoryBase<Option, DbTeamSolidContext>, IOptionDal
    {
    }
}
