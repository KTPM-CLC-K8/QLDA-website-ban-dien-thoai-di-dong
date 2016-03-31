using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL;
namespace BUS
{
    public class Mobile_BUS
    {
        public static DataTable getMobileTable()
        {
            return Mobile_DAL.getMobileTable();
        }
        public static DataTable getInforMobile(string idMobile)
        {
            return Mobile_DAL.getInforMobile(idMobile);
        }
    }
}
