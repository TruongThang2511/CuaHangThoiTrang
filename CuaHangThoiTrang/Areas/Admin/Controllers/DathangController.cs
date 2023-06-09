using CuaHangThoiTrang.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace CuaHangThoiTrang.Areas.Admin.Controllers
{
    public class DathangController : Controller
    {
        CHThoiTrangDbContext db = new CHThoiTrangDbContext();
        // GET: Admin/Dathang
        public ActionResult Index()
        {
            var donhangs = db.DATHANGs.Include(d => d.NGUOIDUNG);
            return View(donhangs.ToList());
        }
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DATHANG dathang = db.DATHANGs.Find(id);
            if (dathang == null)
            {
                return HttpNotFound();
            }
            return View(dathang);
        }
 
        public ActionResult Xacnhan(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DATHANG dathang = db.DATHANGs.Find(id);

            if (dathang == null)
            {
                return HttpNotFound();
            }
            dathang.trangThai = 1;
            db.SaveChanges();

            var chitietdonhang = db.CHITIETDONHANGs.Where(x => x.maDH == id).ToList();
            foreach (var ctdh in chitietdonhang)
            {
                // update so luong
                SANPHAM sp = db.SANPHAMs.FirstOrDefault(x => x.maSP == ctdh.maSP);
                sp.soLuong = sp.soLuong - ctdh.soluong;
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }

        public ActionResult Create()
        {
            ViewBag.MaNguoidung = new SelectList(db.NGUOIDUNGs, "MaND");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaDH,ngayDat,trangThai,maPT,maND,diachi")] DATHANG dathang)
        {
            if (ModelState.IsValid)
            {
                db.DATHANGs.Add(dathang);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaNguoidung = new SelectList(db.NGUOIDUNGs, "maND", "hotenKH", dathang.maND);
            return View(dathang);
        }

        [HttpGet] 
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DATHANG dathang = db.DATHANGs.Find(id);
            if (dathang == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaNguoidung = new SelectList(db.NGUOIDUNGs, "maND", "hotenKH", dathang.maND);
            return View(dathang);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Madon,Ngaydat,Tinhtrang,Thanhtoan,MaNguoidung,Diachinhanhang")] DATHANG dathang)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dathang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaNguoidung = new SelectList(db.NGUOIDUNGs, "maND", "hotenKH", dathang.maND);
            return View(dathang);
        }
        [HttpGet]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DATHANG donhang = db.DATHANGs.Find(id);
            if (donhang == null)
            {
                return HttpNotFound();
            }
            return View(donhang);
        }
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            DATHANG dathang = db.DATHANGs.Find(id);
            db.DATHANGs.Remove(dathang);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}