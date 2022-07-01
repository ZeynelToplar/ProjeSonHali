using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Core.Utilities.IoC
{
    //Global İnjectionların yapılacağı alan.
    public interface ICoreModule
    {
        void Load(IServiceCollection serviceCollection);
    }
}
