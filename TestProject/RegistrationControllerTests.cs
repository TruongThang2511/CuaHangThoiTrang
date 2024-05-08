
using CuaHangThoiTrang.Controllers;
using CuaHangThoiTrang.Models;
using Moq;

namespace CuaHangThoiTrang
{
    [TestFixture]
    public class RegistrationControllerTests
    {
        [Test]
        public void Register_ValidModel_RedirectToLogin()
        {
            // Arrange
            var controller = new NguoidungController();
            var nguoidung = new NGUOIDUNG { email = "test@example.com", password = "password" };

            // Act
            var result = controller.Register(nguoidung) as View;

            // Assert
            Assert.IsNotNull(result);
            Assert.AreEqual("Login", result.ActionName);
        }

        [Test]
        public void Register_ExistingEmail_ReturnsViewWithError()
        {
            // Arrange
            var controller = new NguoidungController();
            var nguoidung = new NGUOIDUNG { email = "existing@example.com", password = "password" };

            // Mock the database context to return a non-null user with the same email
            var dbContextMock = new Mock<CHThoiTrangDbContext>();
            dbContextMock.Setup(db => db.NGUOIDUNGs.FirstOrDefault(s => s.email == nguoidung.email))
                .Returns(new NGUOIDUNG());

            // Act
            var result = controller.Register(nguoidung) as ViewResult;

            // Assert
            Assert.IsNotNull(result);
            Assert.AreEqual("Email already exists", result.ViewBag.error);
        }
    }
}