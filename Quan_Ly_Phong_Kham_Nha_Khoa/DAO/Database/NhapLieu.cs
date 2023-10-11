namespace DAO.Database
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhapLieu")]
    public partial class NhapLieu
    {
        [Key]
        public int maNhap { get; set; }

        [Column(TypeName = "date")]
        public DateTime ngayNhap { get; set; }

        public int maNhanVien { get; set; }

        public int? maVatLieu { get; set; }

        public virtual ThongTinNhanVien ThongTinNhanVien { get; set; }

        public virtual VatLieu VatLieu { get; set; }
    }
}
