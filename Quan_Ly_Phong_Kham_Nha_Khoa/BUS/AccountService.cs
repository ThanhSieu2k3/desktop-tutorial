using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO.Database;
namespace BUS
{
    public class AccountService
    {
        public static string taiKhoanDem ="";
        public static string matKhauDem = "";

        //Kiểm tra có đúng là nhân viên quản lý hay không?
        public bool CheckAccountManager(string user, string password)
        {
            DatabaseNhaKhoa database = new DatabaseNhaKhoa();
            TaiKhoan account = database.TaiKhoans.FirstOrDefault(p => p.taiKhoanNhanVien == user && p.matKhauNhanVien == password && p.ThongTinNhanVien.maChucVu == 8);
            if (account == null)
                return false;
            return true;
        }

        //Kiểm tra tài khoản có đúng là nhân viên hay không
        public bool CheckAccount(string user, string password)
        {
            DatabaseNhaKhoa db = new DatabaseNhaKhoa();
            if (db.TaiKhoans.FirstOrDefault(p=>p.taiKhoanNhanVien == user && p.matKhauNhanVien == password) == null)
                return false;
            return true;
        }

        //Lấy thông tin tài khoản nhân viên khi nhập mật khẩu đúng, trả về thông tin nhân viên
        public TaiKhoan GetEmployeeInformation(string pass)
        {
            if(pass.Equals(matKhauDem))
            {
                DatabaseNhaKhoa db = new DatabaseNhaKhoa();
                return db.TaiKhoans.FirstOrDefault(p => p.taiKhoanNhanVien == taiKhoanDem && p.matKhauNhanVien == pass);
            }
            else
            {
                return null;
            }
        }

        //Lấy thông tin tài khoản nhân viên từ bộ nhớ đệm
        public TaiKhoan GetTempInformation()
        {
            DatabaseNhaKhoa db = new DatabaseNhaKhoa();
            return db.TaiKhoans.FirstOrDefault(p=>p.taiKhoanNhanVien == taiKhoanDem && p.matKhauNhanVien == matKhauDem);
        }
    }
}
