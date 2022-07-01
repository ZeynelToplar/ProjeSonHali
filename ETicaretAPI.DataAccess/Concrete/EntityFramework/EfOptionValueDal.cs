using ETicaretAPI.Core.DataAccess.EntityFramework;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.DataAccess.Contexts;
using ETicaretAPI.Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.DataAccess.Concrete.EntityFramework
{
    public class EfOptionValueDal : EfEntityRepositoryBase<OptionValue, DbTeamSolidContext>, IOptionValueDal
    {
        public List<OptionValue> GetAllWithOptions(int optionId)
        {

            using (var context = new DbTeamSolidContext())
            {
                return context.OptionValues.Include(x => x.Option).Where(y => y.OptionId == optionId).ToList();
            }

        }
    }
}
