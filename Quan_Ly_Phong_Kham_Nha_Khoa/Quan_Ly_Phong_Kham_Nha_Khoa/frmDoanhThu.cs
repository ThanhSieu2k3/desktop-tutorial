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
using Quan_Ly_Phong_Kham_Nha_Khoa;

namespace GUI
{
    public partial class frmDoanhThu : Form
    {

        DatabaseNhaKhoa database = new DatabaseNhaKhoa();
        long tongHoaDon = 0, tongNhapLieu = 0;

        public frmDoanhThu()
        {
            InitializeComponent();
        }



        #region Method
        //Thoát khỏi doanh thu
        private void thoatDoanhThu()
        {
            DialogResult result = MessageBox.Show("Bạn có muốn thoát khỏi doanh thu?", "Thoát", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);

            if (result == DialogResult.OK)
            {
                this.Close();
            }
        }


        //Lấy thông tin từ Hóa đơn để setup datagridview bảng doanh thu hóa đơn
        private void LoadHoaDon()
        {
            
            dgvNhapLieu.Rows.Clear();
            List<HoaDon> hoaDonList = database.HoaDons.ToList();
            
            foreach (HoaDon hoaDon in hoaDonList)
            {
                int index = dgvHoaDon.Rows.Add();
                dgvHoaDon.Rows[index].Cells[0].Value = hoaDon.maHoaDon;
                dgvHoaDon.Rows[index].Cells[1].Value = hoaDon.maBenhNhan;
                dgvHoaDon.Rows[index].Cells[2].Value = hoaDon.ThongTinCanLamSan.ThongTinBenhNhan.tenBenhNhan;
                dgvHoaDon.Rows[index].Cells[3].Value = hoaDon.ngayThanhToan;
                dgvHoaDon.Rows[index].Cells[4].Value = hoaDon.tongSoTien;
                tongHoaDon += hoaDon.tongSoTien;
                
            }
        }

        //Lấy thông tin từ nhập liệu để set up datagridview bảng thống kê nhập liệu
        
        private void LoadNhapLieu()
        {
            dgvNhapLieu.Rows.Clear();
            List<NhapLieu> nhapLieuList = database.NhapLieux.ToList();
            foreach(NhapLieu nhapLieu in nhapLieuList)
            {
                int index = dgvNhapLieu.Rows.Add();
                dgvNhapLieu.Rows[index].Cells[0].Value = nhapLieu.maNhap;
                dgvNhapLieu.Rows[index].Cells[1].Value = nhapLieu.maNhanVien;
                dgvNhapLieu.Rows[index].Cells[2].Value = nhapLieu.ThongTinNhanVien.hoVaTen;
                dgvNhapLieu.Rows[index].Cells[3].Value = nhapLieu.ngayNhap;
                dgvNhapLieu.Rows[index].Cells[4].Value = nhapLieu.VatLieu.soLuong;
                dgvNhapLieu.Rows[index].Cells[5].Value = nhapLieu.VatLieu.donGia;
                dgvNhapLieu.Rows[index].Cells[6].Value = nhapLieu.VatLieu.thanhTien;
                tongNhapLieu += nhapLieu.VatLieu.donGia + nhapLieu.VatLieu.soLuong;
                
            }
        }


        //Tính doanh thu trong tháng này
        private long DoanhThuTrongThang()
        {
            long tongNhap = 0;
            long tongHD = 0;
            DateTime time = DateTime.Now;
            if (dgvNhapLieu.Rows.Count > 0)
            {
                foreach (DataGridViewRow dr in dgvNhapLieu.Rows)
                {
                    DateTime dt = DateTime.Parse(dr.Cells[3].Value.ToString());
                    if (dt.Date.Month == time.Month)
                        tongNhap += long.Parse(dr.Cells[6].Value.ToString());
                }
            }
            if (dgvHoaDon.Rows.Count > 0)
            {
                foreach (DataGridViewRow dr in dgvHoaDon.Rows)
                {
                    DateTime dt = DateTime.Parse(dr.Cells[3].Value.ToString());
                    if (dt.Date.Month == time.Month)
                        tongHD += long.Parse(dr.Cells[4].Value.ToString());
                }
            }
            return tongHD - tongNhap;
        }

        private long DoanhThuTrongQuy()
        {
            long tongNhap = 0;
            long tongHD = 0;
            DateTime dt = DateTime.Now.AddMonths(-3);
            if (dgvNhapLieu.Rows.Count > 0) {
                foreach (DataGridViewRow row in dgvNhapLieu.Rows)
                {
                    DateTime dt2 = DateTime.Parse(row.Cells[3].Value.ToString());
                    if (dt2 >= dt)
                        tongNhap += long.Parse(row.Cells[6].Value.ToString());

                }
            }
                
            if (dgvHoaDon.Rows.Count > 0) {
                foreach (DataGridViewRow row in dgvHoaDon.Rows)
                {
                    DateTime dt2 = DateTime.Parse(row.Cells[3].Value.ToString());
                    if (dt2 >= dt)
                        tongHD += long.Parse(row.Cells[4].Value.ToString());

                }
            }

            return tongHD - tongNhap;
        }

        private long DoanhThuTrongNam()
        {
            long tongNhap = 0;
            long tongHD = 0;
            DateTime time = DateTime.Now;
            if (dgvNhapLieu.Rows.Count > 0)
            {
                foreach (DataGridViewRow dr in dgvNhapLieu.Rows)
                {
                    DateTime dt = DateTime.Parse(dr.Cells[3].Value.ToString());
                    if (dt.Date.Year == time.Year)
                        tongNhap += long.Parse(dr.Cells[6].Value.ToString());
                }
            }
            if (dgvHoaDon.Rows.Count > 0)
            {
                foreach (DataGridViewRow dr in dgvHoaDon.Rows)
                {
                    DateTime dt = DateTime.Parse(dr.Cells[3].Value.ToString());
                    if (dt.Date.Year == time.Year)
                        tongHD += long.Parse(dr.Cells[4].Value.ToString());
                }
            }

            return tongHD - tongNhap;
        }

        private void ThemVatLieu()
        {
            frmNhapVatLieu frmNhapVatLieu = new frmNhapVatLieu();
            frmNhapVatLieu.ShowDialog();
        }

        private void SuaNhapLieu()
        {
            frmNhapVatLieu frmNhapVatLieu = new frmNhapVatLieu();
            frmNhapVatLieu.ShowDialog();
        }
        #endregion



        #region Event

        //Tạo bộ lọc để tìm kiếm một số thông tin mong muốn
        private void tsTxtLoc_TextChanged(object sender, EventArgs e)
       {
            string locStr = tsTxtLoc.Text.ToLower();
            if(locStr != String.Empty)
            {
                foreach (DataGridViewRow row in dgvHoaDon.Rows)
                {
                    if (!row.IsNewRow)
                    {
                        string maHoaDon = row.Cells[0].Value.ToString().ToLower();
                        string maBenhNhan = row.Cells[1].Value.ToString().ToLower();
                        string tenBenhNhan = row.Cells[2].Value.ToString().ToLower();
                        string ngay = row.Cells[3].Value.ToString().ToLower();

                        if (maHoaDon.Contains(locStr) || maBenhNhan.Contains(locStr) || tenBenhNhan.Contains(locStr) || ngay.Contains(locStr))
                        {
                            row.Visible = true;
                        }
                        else
                        {
                            row.Visible = false;
                        }
                    }
                }
                foreach (DataGridViewRow row in dgvNhapLieu.Rows)
                {
                    if (!row.IsNewRow)
                    {
                        string maNhapLieu = row.Cells[0].Value.ToString().ToLower();
                        string maNhanVien = row.Cells[1].Value.ToString().ToLower();
                        string tenNhanVien = row.Cells[2].Value.ToString().ToLower();
                        string ngay = row.Cells[3].Value.ToString().ToLower();

                        if (maNhapLieu.Contains(locStr) || maNhanVien.Contains(locStr) || tenNhanVien.Contains(locStr) || ngay.Contains(locStr))
                        {
                            row.Visible = true;
                        }
                        else
                        {
                            row.Visible = false;
                        }
                    }
                }
            }
            else
            {
                foreach(DataGridViewRow row in dgvNhapLieu.Rows)
                    row.Visible = true;
                foreach(DataGridViewRow row in dgvHoaDon.Rows)
                    row.Visible=true;
            }
            
        }




        private void frmDoanhThu_Load(object sender, EventArgs e)
        {
            LoadHoaDon();
            LoadNhapLieu();
            tsTongHoaDon.Text = "Doanh thu HĐ: " + tongHoaDon.ToString() + " VNĐ";
            tsTongNhapLieu.Text = "\tNhập liệu: " + tongNhapLieu.ToString() + " VNĐ";
            tsDoanhThuThang.Text += DoanhThuTrongThang().ToString() + " VNĐ";
            tsDoanhThuNam.Text += DoanhThuTrongNam().ToString() + " VNĐ";
            tsDoanhThuQuy.Text += DoanhThuTrongQuy().ToString() + " VNĐ";


        }

        //Thoát chương trình
        
        private void thoátToolStripMenuItem_Click(object sender, EventArgs e)
        {
            thoatDoanhThu();
        }

        private void tsBtnThem_Click(object sender, EventArgs e)
        {
            ThemVatLieu();
            frmDoanhThu_Load(sender, e);
        }

        private void thêmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ThemVatLieu();
            frmDoanhThu_Load(sender, e);
        }

        private void frmDoanhThu_FormClosed(object sender, FormClosedEventArgs e)
        {
            thoatDoanhThu();
        }



        #endregion

    }
}
