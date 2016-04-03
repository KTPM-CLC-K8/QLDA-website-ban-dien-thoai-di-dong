using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BUS;
namespace Sunflower.Admin
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            gr1.DataSource = Mobile_BUS.getMobileTable();
            gr1.DataBind();
        }

       

        protected void page_changing(object sender, GridViewPageEventArgs e)
        {
            gr1.PageIndex = e.NewPageIndex;
            gr1.DataBind();
        }

        protected void gr1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "btnInfor")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string idMobile = gr1.Rows[index].Cells[3].Text;
                Response.Redirect("InforMobile.aspx?idmobile=" + idMobile);
            }
           

        }

       
    }
}