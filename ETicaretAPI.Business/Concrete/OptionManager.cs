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
    public class OptionManager : IOptionService
    {
        private readonly IOptionDal _optionDal;

        public OptionManager(IOptionDal optionDal)
        {
            _optionDal = optionDal;
        }

        public IDataResult<List<Option>> GetOptionByCategoryId(int categoryId)
        {
            throw new NotImplementedException();
        }

        public IDataResult<List<Option>> GetOptions()
        {
            throw new NotImplementedException();
        }
    }
}
