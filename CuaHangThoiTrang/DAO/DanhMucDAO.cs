using CuaHangThoiTrang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuaHangThoiTrang.DAO
{
    public class DanhMucDAO
    {
        CHThoiTrangDbContext context;
        
        public DanhMucDAO()
        {
            context = new CHThoiTrangDbContext();
        }

        public IQueryable<DANHMUC> ListDanhMuc()
        {
            var res = (from ss in context.DANHMUCs select ss);
            return res;
        }
    }
}