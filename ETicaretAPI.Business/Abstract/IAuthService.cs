using ETicaretAPI.Core.Entities.Concrete;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Core.Utilities.Security.JWT;
using ETicaretAPI.Entities.Dtos;

namespace ETicaretAPI.Business.Abstract
{
    public interface IAuthService
    {
        IDataResult<User> Register(UserForRegisterDto userForRegisterDto);
        IDataResult<User> Login(UserForLoginDto userForLoginDto);
        IResult UserExists(string email);
        IDataResult<AccessToken> CreateAccessToken(User user);
    }
}
