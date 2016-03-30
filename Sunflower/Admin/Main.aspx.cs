using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Sunflower.Admin
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cns = "Server=.\\SQLEXPRESS; Database= SunflowerMobile; Integrated Security= True";
            SqlConnection cn = new SqlConnection(cns);
            cn.Open();
            string cm = "SELECT * FROM tab_Mobile";
            SqlCommand scm = new SqlCommand(cm, cn);
            SqlDataReader res = scm.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(res);
            gr1.DataSource = dt;
            gr1.DataBind();
            cn.Close();
        }

        protected void page_changed(object sender, EventArgs e)
        {
           
        }

        protected void page_changing(object sender, GridViewPageEventArgs e)
        {
            gr1.PageIndex = e.NewPageIndex;
            gr1.DataBind();
        }
    }
}