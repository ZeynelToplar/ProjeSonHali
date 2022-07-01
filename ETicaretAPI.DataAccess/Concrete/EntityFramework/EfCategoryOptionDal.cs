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
    public class EfCategoryOptionDal : EfEntityRepositoryBase<CategoryOption, DbTeamSolidContext>, ICategoryOptionDal
    {
        public List<CategoryOption> GetAllWithOptions(int categoryId)
        {
            using (var context = new DbTeamSolidContext())
            {
                return (context.CategoryOptions.Include(x => x.Option).Where(x => x.CategoryId == categoryId)).ToList();
            }
        }
    }
}
