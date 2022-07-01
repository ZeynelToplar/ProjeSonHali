using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace ETicaretAPI.Core.Utilities.Security.Hashing
{
    public class HashingHelper
    {
        public static void CreatePasswordHash(string pwd,out byte[] pwdHash, out byte[] pwdSalt)
        {
            using (var hmac = new HMACSHA512())
            {
                pwdSalt = hmac.Key;
                pwdHash = hmac.ComputeHash(Encoding.UTF8.GetBytes(pwd));
            }
        }
        public static bool VerifyPassword(string pwd,string dbPwd)
        {
            //using (var hmac = new HMACSHA512(pwdSalt))
            //{
            //    var computedHash = hmac.ComputeHash(Encoding.UTF8.GetBytes(pwd));
            //    for (int i = 0; i < computedHash.Length; i++)
            //    {
            //        if (pwdHash[i] != computedHash[i])
            //        {
            //            return false;
            //        }
            //    }
            //}
            if(pwd != dbPwd )
                return false;
            return true;
        }
    }
}
