using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BUS;
namespace Sunflower.ChiTietPhone
{
    public partial class PhonePage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string company = Request.QueryString["mobile"].ToString();
            titlePhone.Text = company;
            DataListPhone.DataSource = Mobile_BUS.getMobileFromCompany(company);
            DataListPhone.DataBind();

        }
    }
}