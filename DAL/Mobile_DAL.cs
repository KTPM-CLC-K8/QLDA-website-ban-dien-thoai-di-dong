using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    public class Mobile_DAL
    {
        private static string cns = "Server=.\\SQLEXPRESS; Database= SunflowerMobile; Integrated Security= True";
        private static SqlConnection cn = new SqlConnection(cns);
        public static void openConnection()
        {
            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
            cn.Open();
        }
        public static void closeConnection()
        {
            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
        }
        public static DataTable getMobileTable()
        {

            openConnection();
            string cm = "SELECT * FROM tab_Mobile";
            SqlCommand scm = new SqlCommand(cm, cn);
            SqlDataReader res = scm.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(res);
            closeConnection();
            return dt;
        }
        public static DataTable getInforMobile(string idMobile)
        {
            openConnection();
            string cm = "SELECT * FROM tab_Mobile JOIN tab_Intro ON tab_Mobile.IdMobile = tab_Intro.IdMobile " +
                        "JOIN tab_Connection ON tab_Mobile.IdMobile = tab_Connection.IdMobile " +
                        "JOIN tab_CpuRam ON tab_Mobile.IdMobile = tab_CpuRam.IdMobile " +
                        "JOIN tab_Camera ON tab_Mobile.IdMobile = tab_Camera.IdMobile " +
                        "JOIN tab_Card ON tab_Mobile.IdMobile = tab_Card.IdMobile " +
                        "JOIN tab_App ON tab_Mobile.IdMobile = tab_App.IdMobile " +
                        "JOIN tab_Screen ON tab_Mobile.IdMobile = tab_Screen.IdMobile " +
                        "JOIN tab_Weight ON tab_Mobile.IdMobile = tab_Weight.IdMobile " +
                        "JOIN tab_Pin ON tab_Mobile.IdMobile = tab_Pin.IdMobile " +
                        "JOIN tab_Memory ON tab_Mobile.IdMobile = tab_Memory.IdMobile " +
                        "JOIN tab_Os ON tab_Mobile.IdMobile = tab_Os.IdMobile " +
                        "JOIN tab_ImageMobile ON tab_Mobile.IdMobile = tab_ImageMobile.IdMobile " +
                        "JOIN tab_Color ON tab_Mobile.IdMobile = tab_Color.IdMobile " +
                        "WHERE tab_Mobile.IdMobile = '" + idMobile + "'";
            
            SqlCommand scm = new SqlCommand(cm, cn);
            SqlDataReader sdr = scm.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(sdr);
            closeConnection();
            return dt;
        }

    }
}
