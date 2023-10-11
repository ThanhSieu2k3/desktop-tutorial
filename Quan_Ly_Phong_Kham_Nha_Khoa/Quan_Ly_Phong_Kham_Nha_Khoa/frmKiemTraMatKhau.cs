using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BUS;
namespace Quan_Ly_Phong_Kham_Nha_Khoa
{
    public partial class frmKiemTraMatKhau : Form
    {
        public frmKiemTraMatKhau()
        {
            InitializeComponent();
        }

        AccountService accountService = new AccountService();

        public bool check = false;


        private void btnXong_Click(object sender, EventArgs e)
        {
            if (txtMatKhau.Text == AccountService.matKhauDem)
            {
                check = true;
                this.Close();
            }
            else
            {
                check=false;
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Bạn chắc chắn muốn thoát?", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (result == DialogResult.OK)
                this.Close();
        }
    }
}
