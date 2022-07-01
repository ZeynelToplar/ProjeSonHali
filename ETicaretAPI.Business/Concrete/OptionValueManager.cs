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
    public class OptionValueManager : IOptionValueService
    {
        private readonly IOptionValueDal _optionValueDal;

        public OptionValueManager(IOptionValueDal optionValueDal)
        {
            _optionValueDal = optionValueDal;
        }

        public IDataResult<List<OptionValue>> GetAllByOptionId(int optionId)
        {
            return new SuccessDataResult<List<OptionValue>>(_optionValueDal.GetAllWithOptions(optionId));
        }
    }
}
