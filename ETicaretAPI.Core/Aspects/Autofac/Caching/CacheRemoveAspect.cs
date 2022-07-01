using Castle.DynamicProxy;
using ETicaretAPI.Core.CrossCuttingConcerns.Caching;
using ETicaretAPI.Core.Utilities.Interceptors;
using ETicaretAPI.Core.Utilities.IoC;
using Microsoft.Extensions.DependencyInjection;

namespace ETicaretAPI.Core.Aspects.Autofac.Caching
{
    public class CacheRemoveAspect : MethodInterception
    {
        private string _pattern;
        private ICacheManager _cacheManager;

        public CacheRemoveAspect(string pattern)
        {
            _pattern = pattern;
            _cacheManager = ServiceTool.ServiceProvider.GetService<ICacheManager>();
        }

        protected override void OnSuccess(IInvocation invocation)
        {
            _cacheManager.RemoveByPattern(_pattern);
        }
    }
}
