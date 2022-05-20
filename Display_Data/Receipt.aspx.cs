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
    public partial class Receipt : System.Web.UI.Page
    {
        //string connectionString = @"Data Source=RANIGUNJSERVER\SQLSERVER; Integrated Security=true; Initial Catalog=Amrat; User ID = sa; Password=12345";
        string connectionString = @"Data Source=DESKTOP-CEI1CUN\SQLEXPRESS; Integrated Security=true; Initial Catalog=Amrat;";
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Application["ACode"] != null)
            //{
            //    string Agent_Code = Application["ACode"].ToString();
            //    Response.Write(Agent_Code);
            //}

            //if (Request.Cookies["ACode"] != null)
            //{
            //    Response.Write(Request.Cookies["ACode"].Value.ToString());
            //}
        }

        protected void fname(object sender, EventArgs e)
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
                try
                {
                    sqlCon.Open();
                    SqlCommand cmd = new SqlCommand("Get_Bill_Details", sqlCon);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@a_code", SqlDbType.Int);
                    cmd.ExecuteNonQuery();


                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;

                    da.Fill(dtbl);

                    sqlCon.Close();
                }
                catch
                {

                }

        }
    }
}