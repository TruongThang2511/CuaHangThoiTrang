using CuaHangThoiTrang.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CuaHangThoiTrang.Areas.Admin.Controllers
{
    public class SanphamController : Controller
    {
        private CHThoiTrangDbContext _context = new CHThoiTrangDbContext();
        public ActionResult Index(int? page)
        {
            if (page == null)
                page = 1;
            var all_sanpham = _context.SANPHAMs.OrderBy(m => m.maSP);
            int pageSize = 5;
            int pageNum = page ?? 1;
            return View(all_sanpham.ToPagedList(pageNum, pageSize));
        }

        public ActionResult Details(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            SANPHAM sanpham = _context.SANPHAMs.Find(id);
            if (sanpham == null)
                return HttpNotFound();
            return View(sanpham);

        }

        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maSP,maTH,maDM,tenSP,gia,hinh,hinh1,hinh2,soLuong,thongTin")] SANPHAM sanpham)
        {
            if (ModelState.IsValid)
            {
                _context.SANPHAMs.Add(sanpham);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(sanpham);
        }

        public ActionResult Edit(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            SANPHAM sanpham = _context.SANPHAMs.Find(id);
            if (sanpham == null)
                return HttpNotFound();
            return View(sanpham);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maSP,maTH,maDM,tenSP,gia,hinh,hinh1,hinh2,soLuong,thongTin")] SANPHAM sanpham)
        {
            if (ModelState.IsValid)
            {
                _context.Entry(sanpham).State = System.Data.Entity.EntityState.Modified;
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(sanpham);
        }

        public ActionResult Delete(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            SANPHAM sanpham = _context.SANPHAMs.Find(id);
            if (sanpham == null)
                return HttpNotFound();
            return View(sanpham);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id)
        {
            SANPHAM sanpham = _context.SANPHAMs.Find(id);
            _context.SANPHAMs.Remove(sanpham);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult SearchSP(string searchString)
        {
            var sp = (from ss in _context.SANPHAMs select  ss).Where(p=> p.tenSP.Contains(searchString));
            return View(sp.ToList());
        }
    }
}