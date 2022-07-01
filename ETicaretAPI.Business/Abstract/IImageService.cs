using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Abstract
{
    public interface IImageService
    {
        IDataResult<Image> GetImage(int id);
        IDataResult<List<Image>> GetImages(int id);
        IDataResult<Image> GetById(int id);
        IResult Add(IFormFile file, Image image);
        IResult Update(IFormFile file, Image image);
        IResult Delete(Image image);
    }
}
