using Autofac;
using Autofac.Extras.DynamicProxy;
using Castle.DynamicProxy;
using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Business.Concrete;
using ETicaretAPI.Core.Utilities.Interceptors;
using ETicaretAPI.Core.Utilities.Security.JWT;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.DataAccess.Concrete.EntityFramework;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.DependecyResolvers.Autofac
{
    public class AutofacBusinessModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<CategoryManager>().As<ICategoryService>();
            builder.RegisterType<EfCategoryDal>().As<ICategoryDal>();

            builder.RegisterType<CustomerManager>().As<ICustomerService>();
            builder.RegisterType<EfCustomerDal>().As<ICustomerDal>();

            builder.RegisterType<OrderManager>().As<IOrderService>();
            builder.RegisterType<EfOrderDal>().As<IOrderDal>();

            builder.RegisterType<PaymentManager>().As<IPaymentService>();
            builder.RegisterType<EfPaymentDal>().As<IPaymentDal>();

            builder.RegisterType<ProductManager>().As<IProductService>();
            builder.RegisterType<EfProductDal>().As<IProductDal>();

            builder.RegisterType<EfBrandDal>().As<IBrandDal>();
            builder.RegisterType<BrandManager>().As<IBrandService>();

            builder.RegisterType<EfBasketDal>().As<IBasketDal>();
            builder.RegisterType<BasketManager>().As<IBasketService>();

            builder.RegisterType<UserManager>().As<IUserService>();
            builder.RegisterType<EfUserDal>().As<IUserDal>();

            builder.RegisterType<CustomerAuthManager>().As<ICustomerAuthService>();

            builder.RegisterType<ImageManager>().As<IImageService>();
            builder.RegisterType<EfImageDal>().As<IImageDal>();

            builder.RegisterType<CategoryOptionManager>().As<ICategoryOptionService>();
            builder.RegisterType<EfCategoryOptionDal>().As<ICategoryOptionDal>();

            builder.RegisterType<EfOptionValueDal>().As<IOptionValueDal>();
            builder.RegisterType<OptionValueManager>().As<IOptionValueService>();

            builder.RegisterType<FavManager>().As<IFavService>();
            builder.RegisterType<EfFavDal>().As<IFavDal>();

            builder.RegisterType<OrderDetailManager>().As<IOrderDetailService>();
            builder.RegisterType<EfOrderDetailDal>().As<IOrderDetailDal>();



            builder.RegisterType<AuthManager>().As<IAuthService>();
            builder.RegisterType<JwtHelper>().As<ITokenHelper>();

            //builder.RegisterType<HttpContextAccessor>().As<IHttpContextAccessor>();

            var assembly = System.Reflection.Assembly.GetExecutingAssembly();

            builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces().EnableInterfaceInterceptors(new ProxyGenerationOptions()
            {
                Selector = new AspectInterceptorSelector()
            }).SingleInstance();
        }
    }
}
