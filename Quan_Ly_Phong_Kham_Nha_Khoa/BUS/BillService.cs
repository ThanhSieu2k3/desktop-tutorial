using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO.Database;

namespace BUS
{
    public class BillService
    {
        public List<HoaDon> GetAll()
        {
            DatabaseNhaKhoa database = new DatabaseNhaKhoa();
            return database.HoaDons.ToList();
        }

        public HoaDon GetBill(int idBill)
        {
            DatabaseNhaKhoa db = new DatabaseNhaKhoa();
            return db.HoaDons.FirstOrDefault(p=>p.maHoaDon == idBill);
        }

        public void AddOrUpdateBill(HoaDon bill)
        {
            DatabaseNhaKhoa db = new DatabaseNhaKhoa();
            db.HoaDons.AddOrUpdate(bill);
            db.SaveChanges();
        }


        
    }
}
