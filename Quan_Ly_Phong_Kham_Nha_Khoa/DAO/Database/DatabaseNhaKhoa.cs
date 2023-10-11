using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace DAO.Database
{
    public partial class DatabaseNhaKhoa : DbContext
    {
        public DatabaseNhaKhoa()
            : base("name=DatabaseNhaKhoa")
        {
        }

        public virtual DbSet<ChuanDoanDieuTri> ChuanDoanDieuTris { get; set; }
        public virtual DbSet<ChucVu> ChucVus { get; set; }
        public virtual DbSet<DichVuThanhToan> DichVuThanhToans { get; set; }
        public virtual DbSet<DONTHUOC> DONTHUOCs { get; set; }
        public virtual DbSet<HoaDon> HoaDons { get; set; }
        public virtual DbSet<LichSuKham> LichSuKhams { get; set; }
        public virtual DbSet<NhapLieu> NhapLieux { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }
        public virtual DbSet<ThongTinBaoHanh> ThongTinBaoHanhs { get; set; }
        public virtual DbSet<ThongTinBenhNhan> ThongTinBenhNhans { get; set; }
        public virtual DbSet<ThongTinCanLamSan> ThongTinCanLamSans { get; set; }
        public virtual DbSet<ThongTinLamSan> ThongTinLamSans { get; set; }
        public virtual DbSet<ThongTinNhanVien> ThongTinNhanViens { get; set; }
        public virtual DbSet<VatLieu> VatLieux { get; set; }
        public virtual DbSet<DoanhThu> DoanhThus { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ChuanDoanDieuTri>()
                .HasMany(e => e.ThongTinLamSans)
                .WithRequired(e => e.ChuanDoanDieuTri)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ChucVu>()
                .HasMany(e => e.ThongTinNhanViens)
                .WithRequired(e => e.ChucVu)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DichVuThanhToan>()
                .Property(e => e.quetMa)
                .IsFixedLength();

            modelBuilder.Entity<DichVuThanhToan>()
                .HasMany(e => e.HoaDons)
                .WithRequired(e => e.DichVuThanhToan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DONTHUOC>()
                .HasMany(e => e.HoaDons)
                .WithRequired(e => e.DONTHUOC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HoaDon>()
                .HasMany(e => e.LichSuKhams)
                .WithRequired(e => e.HoaDon)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TaiKhoan>()
                .Property(e => e.taiKhoanNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<TaiKhoan>()
                .Property(e => e.matKhauNhanVien)
                .IsUnicode(false);

            modelBuilder.Entity<ThongTinBaoHanh>()
                .HasMany(e => e.ChuanDoanDieuTris)
                .WithRequired(e => e.ThongTinBaoHanh)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThongTinBenhNhan>()
                .Property(e => e.soDienThoai)
                .IsUnicode(false);

            modelBuilder.Entity<ThongTinBenhNhan>()
                .HasMany(e => e.LichSuKhams)
                .WithRequired(e => e.ThongTinBenhNhan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThongTinBenhNhan>()
                .HasMany(e => e.ThongTinCanLamSans)
                .WithRequired(e => e.ThongTinBenhNhan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThongTinBenhNhan>()
                .HasMany(e => e.ThongTinLamSans)
                .WithRequired(e => e.ThongTinBenhNhan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThongTinCanLamSan>()
                .HasMany(e => e.HoaDons)
                .WithRequired(e => e.ThongTinCanLamSan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThongTinLamSan>()
                .HasMany(e => e.HoaDons)
                .WithRequired(e => e.ThongTinLamSan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThongTinNhanVien>()
                .Property(e => e.soDienThoai)
                .IsUnicode(false);

            modelBuilder.Entity<ThongTinNhanVien>()
                .HasMany(e => e.LichSuKhams)
                .WithRequired(e => e.ThongTinNhanVien)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThongTinNhanVien>()
                .HasMany(e => e.NhapLieux)
                .WithRequired(e => e.ThongTinNhanVien)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThongTinNhanVien>()
                .HasMany(e => e.TaiKhoans)
                .WithRequired(e => e.ThongTinNhanVien)
                .WillCascadeOnDelete(false);
        }
    }
}
