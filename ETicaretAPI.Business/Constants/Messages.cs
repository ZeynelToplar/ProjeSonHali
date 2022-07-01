using ETicaretAPI.Core.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Constants
{
    public static class Messages
    {
        public static readonly string ProductAdded = "Ürün başarıyla eklendi";
        public static readonly string AuthorizationDenied = "Yetkiniz bulunmamaktadır.";
        public static readonly string Added = "Ekleme başarılı.";
        public static readonly string Deleted = "Silme başarılı.";
        public static readonly string UsersListed = "Kullanıcılar listelendi.";
        public static readonly string Updated = "Güncelleme başarılı.";
        public static readonly string UserRegistered = "Kayıt başarılı.";
        public static readonly string UserNotFound ="Kullanıcı bulunamadı.";
        public static readonly string PasswordError ="Şifre hatalı.";
        public static readonly string SuccessfulLogin ="Giriş başarılı.";
        public static readonly string UserAlreadyExists="Kullanıcı zaten mevcut.";
        public static readonly string AccessTokenCreated="Erişim anahtarı oluşturuldu.";
        public static readonly string AddToBasketSuccessfull="Sepete eklendi.";
    }
}
