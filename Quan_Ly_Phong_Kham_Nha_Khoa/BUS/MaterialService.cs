using DAO.Database;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class MaterialService
    {

        public VatLieu GetMaterial(int id)
        {
            DatabaseNhaKhoa db = new DatabaseNhaKhoa(); 
            return db.VatLieux.FirstOrDefault(p=>p.maVatLieu == id);   
        }

        public void AddMaterial(VatLieu vl)
        {
            DatabaseNhaKhoa db = new DatabaseNhaKhoa();
            db.VatLieux.Add(vl);
            db.SaveChanges();
        }

        public void EditMaterial(VatLieu vl)
        {
            DatabaseNhaKhoa db = new DatabaseNhaKhoa();
            db.VatLieux.AddOrUpdate(vl);
            db.SaveChanges();
        }
    }
}
