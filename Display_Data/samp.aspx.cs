using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;

namespace Display_Data
{
    public partial class samp : System.Web.UI.Page
    {
        //string connectionString = @"Data Source=RANIGUNJSERVER\SQLSERVER; Integrated Security=true; Initial Catalog=Amrat; User ID = sa; Password=12345";
        string connectionString = @"Data Source=DESKTOP-CEI1CUN\SQLEXPRESS; Integrated Security=true; Initial Catalog=Amrat;";
        protected void Page_Load(object sender, EventArgs e)
        {
            btnclick();
        }

        private void btnclick()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Customers", con);

            cmd.CommandType = CommandType.Text;
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            con.Close();
        }
    }
}