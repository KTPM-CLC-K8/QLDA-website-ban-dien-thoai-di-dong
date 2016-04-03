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
    public partial class InforMobile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["idmobile"].ToString();
            DataTable dt = Mobile_BUS.getInforMobile(id);
            setInforMobile(dt);
        }
        //set information for mobile selected
        public void setInforMobile(DataTable dt)
        {
            idMobile.Text = dt.Rows[0].ItemArray[0].ToString();
            chipset.Text = dt.Rows[0].ItemArray[19].ToString();
            colorScreen.Text = dt.Rows[0].ItemArray[35].ToString();
            music.Text = dt.Rows[0].ItemArray[31].ToString();
            mobileName.Text = dt.Rows[0].ItemArray[1].ToString();
            cpu.Text = dt.Rows[0].ItemArray[20].ToString();
            standardScreen.Text = dt.Rows[0].ItemArray[36].ToString();
            record.Text = dt.Rows[0].ItemArray[32].ToString();
            company.Text = dt.Rows[0].ItemArray[2].ToString();
            graphics.Text = dt.Rows[0].ItemArray[21].ToString();
            resolution.Text = dt.Rows[0].ItemArray[37].ToString();
            capacityPin.Text = dt.Rows[0].ItemArray[43].ToString();
            ram.Text = dt.Rows[0].ItemArray[22].ToString();
            sizeScreen.Text = dt.Rows[0].ItemArray[38].ToString();
            typeScreen.Text = dt.Rows[0].ItemArray[34].ToString();
            typePin.Text = dt.Rows[0].ItemArray[44].ToString();
            money.Text = String.Format("{0:C}", dt.Rows[0].ItemArray[4]);
            os.Text = dt.Rows[0].ItemArray[51].ToString();
            induction.Text = dt.Rows[0].ItemArray[39].ToString();
            contact.Text = dt.Rows[0].ItemArray[46].ToString();
            guarantee.Text = dt.Rows[0].ItemArray[5].ToString();
            priCam.Text = dt.Rows[0].ItemArray[24].ToString();
            typeSim.Text = dt.Rows[0].ItemArray[27].ToString();
            interMemory.Text = dt.Rows[0].ItemArray[47].ToString();
            saleOff.Text = dt.Rows[0].ItemArray[6].ToString();
            secondCam.Text = dt.Rows[0].ItemArray[25].ToString();
            numberSim.Text = dt.Rows[0].ItemArray[28].ToString();
            maxSupportMemory.Text = dt.Rows[0].ItemArray[49].ToString();
            video.Text = dt.Rows[0].ItemArray[30].ToString();
            white.Text = dt.Rows[0].ItemArray[55].ToString();
            black.Text = dt.Rows[0].ItemArray[56].ToString();
            pink.Text = dt.Rows[0].ItemArray[57].ToString();
            yellow.Text = dt.Rows[0].ItemArray[58].ToString();
            gold.Text = dt.Rows[0].ItemArray[59].ToString();
            silver.Text = dt.Rows[0].ItemArray[60].ToString();
            green.Text = dt.Rows[0].ItemArray[61].ToString();
            cyan.Text = dt.Rows[0].ItemArray[62].ToString();
            orange.Text = dt.Rows[0].ItemArray[63].ToString();
            grey.Text = dt.Rows[0].ItemArray[64].ToString();
            blue.Text = dt.Rows[0].ItemArray[65].ToString();
            img_mobile_1.ImageUrl = dt.Rows[0].ItemArray[53].ToString();
            img_mobile_2.ImageUrl = dt.Rows[1].ItemArray[53].ToString();
            img_mobile_3.ImageUrl = dt.Rows[2].ItemArray[53].ToString();
            img_mobile_4.ImageUrl = dt.Rows[3].ItemArray[53].ToString();
            imgIntro.ImageUrl = dt.Rows[0].ItemArray[9].ToString();
            articleIntro.Text = dt.Rows[0].ItemArray[8].ToString();
            exterCard.Text = dt.Rows[0].ItemArray[48].ToString();
            c2G.Text = dt.Rows[0].ItemArray[12].ToString();
            c3G.Text = dt.Rows[0].ItemArray[13].ToString();
            c4G.Text = dt.Rows[0].ItemArray[14].ToString();
            wifi.Text = dt.Rows[0].ItemArray[15].ToString();
            gps.Text = dt.Rows[0].ItemArray[16].ToString();
            bluetooth.Text = dt.Rows[0].ItemArray[17].ToString();
            usb.Text = dt.Rows[0].ItemArray[18].ToString();
        }
    }
}