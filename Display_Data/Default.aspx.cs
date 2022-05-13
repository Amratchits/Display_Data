using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Display_Data
{
    public partial class Default : System.Web.UI.Page
    {
        //string connectionString = @"Data Source=RANIGUNJSERVER\SQLSERVER; Integrated Security=true; Initial Catalog=Amrat; User ID = sa; Password=12345";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            //Application["Username"] = ACode.Text;
            //Response.Redirect("test.aspx");

            HttpCookie Cookie = new HttpCookie("ACode");
            Cookie.Value = ACode.Text;
            Cookie.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(Cookie);
            Response.Redirect("Receipt.aspx");
        }
    }
}