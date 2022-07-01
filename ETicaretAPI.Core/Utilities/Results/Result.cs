using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Core.Utilities.Results
{
    public class Result : IResult
    {
        //do not repeat yourself DRY
        public string Message { get;  }

        public bool Success { get; }

        public Result(bool success, string message):this(success)
        {
                Message = message;
        }
        public Result(bool success)
        {
            Success = success;
        }
    }
}
