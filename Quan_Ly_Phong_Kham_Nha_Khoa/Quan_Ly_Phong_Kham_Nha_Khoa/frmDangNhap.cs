using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DAO.Database;
using BUS;
namespace GUI
{
    public partial class frmDangNhap : Form
    {
        public frmDangNhap()
        {
            InitializeComponent();
        }


        //private string maNhanVien;
        
        private void btnDangNhap_Click(object sender, EventArgs e)
        {

            //Lấy thông tin từ dữ liệu nhập vào
            string user = txtTaiKhoan.Text;
            string pass = txtMatKhau.Text;

            AccountService accountService = new AccountService();
            
            if(accountService.CheckAccountManager(user,pass))
            {
                AccountService.taiKhoanDem = user;
                AccountService.matKhauDem = pass;

                frmDoanhThu frmDoanhThu = new frmDoanhThu();
                this.Hide();
                frmDoanhThu.ShowDialog();
                this.Show();
                //maNhanVien = accountService.GetEmployeeInformation(user,pass).maNhanVien.ToString();
                
            }
            else
            {
                
                MessageBox.Show("Không có tài khoản hoặc tên đăng nhập hoặc mật khẩu sai", "Sai tài khoản");
                txtMatKhau.Text = String.Empty;
            }

        }
        private void btnThoat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void frmDangNhap_FormClosing(object sender, FormClosingEventArgs e)
        {

            if(MessageBox.Show("Bạn có muốn thoát chương trình?", "Thông báo", MessageBoxButtons.OKCancel,MessageBoxIcon.Question) != System.Windows.Forms.DialogResult.OK) 
                e.Cancel = true;
        }
    }
}
