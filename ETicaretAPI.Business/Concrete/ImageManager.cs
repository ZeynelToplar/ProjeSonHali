using ETicaretAPI.Business.Abstract;
using ETicaretAPI.Core.Utilities.Helpers;
using ETicaretAPI.Core.Utilities.Results;
using ETicaretAPI.DataAccess.Abstract;
using ETicaretAPI.Entities.Concrete;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.Business.Concrete
{
    public class ImageManager : IImageService
    {
        IImageDal _imageDal;

        public ImageManager(IImageDal imageDal)
        {
            _imageDal = imageDal;
        }

        public IResult Add(IFormFile file, Image image)
        {
            image.ImagePath = FileHelper.Add(file);
            _imageDal.Add(image);
            return new SuccessResult();
        }

        public IResult Delete(Image image)
        {
            FileHelper.Delete(image.ImagePath);
            _imageDal.Delete(image);
            return new SuccessResult();
        }

        public IDataResult<Image> GetById(int id)
        {
            return new SuccessDataResult<Image>(_imageDal.Get(x => x.ImageId == id));
        }

        public IDataResult<Image> GetImage(int id)
        {
            return new SuccessDataResult<Image>(_imageDal.Get(x=>x.ProductId == id));
        }

        public IDataResult<List<Image>> GetImages(int id)
        {
            return new SuccessDataResult<List<Image>>(_imageDal.GetAll(x => x.ProductId == id));
        }

        public IResult Update(IFormFile file, Image image)
        {
            image.ImagePath = FileHelper.Update(_imageDal.Get(c => c.ImageId == image.ImageId).ImagePath, file);
            _imageDal.Update(image);
            return new SuccessResult();
        }
    }
}
