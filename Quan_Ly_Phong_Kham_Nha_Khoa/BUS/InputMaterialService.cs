using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO.Database;

namespace BUS
{
    public class InputMaterialService
    {
        public List<NhapLieu> GetAll()
        {
            DatabaseNhaKhoa db =  new DatabaseNhaKhoa();
            return db.NhapLieux.ToList();
        }

        public NhapLieu GetMaterialInput(int inputID)
        {
            DatabaseNhaKhoa db = new DatabaseNhaKhoa();
            return db.NhapLieux.FirstOrDefault(p=>p.maNhap == inputID);   
        }

        public void AddInputMaterial(NhapLieu input)
        {
            DatabaseNhaKhoa databaseNhaKhoa = new DatabaseNhaKhoa();
            databaseNhaKhoa.NhapLieux.Add(input);
            databaseNhaKhoa.SaveChanges();
        }

        /*
        public void AddOrUpdateMaterial(NhapLieu input)
        {
            DatabaseNhaKhoa databaseNhaKhoa = new DatabaseNhaKhoa();
            databaseNhaKhoa.NhapLieux.AddOrUpdate(input);
            databaseNhaKhoa.SaveChanges();
        }
        */
    }
}
