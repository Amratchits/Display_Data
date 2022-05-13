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
    public partial class Default2 : System.Web.UI.Page
    {
        //StringBuilder table = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
            //    string connectionString = @"Data Source=RANIGUNJSERVER\SQLSERVER; Integrated Security=true; Initial Catalog=Customers; User ID = sa; Password=12345";
            //    using (SqlConnection sqlCon = new SqlConnection(connectionString))
            //        try
            //        {
            //            sqlCon.Open();
            //            SqlCommand cmd = new SqlCommand();
            //            cmd.CommandText = "Select * from Customers";
            //            cmd.Connection = sqlCon;
            //            SqlDataReader rd = cmd.ExecuteReader();
            //            table.Append("<table border'1'>");
            //            table.Append("<tr><th>Customer Id</th><th>Name</th><th>Country</th>");
            //            table.Append("</tr>");

            //            if(rd.HasRows)
            //            {
            //                while(rd.Read())
            //                {
            //                    table.Append("<tr>");
            //                    table.Append("<td>" + rd[0] + "</td>");
            //                    table.Append("<td>" + rd[1] + "</td>");
            //                    table.Append("<td>" + rd[2] + "</td>");
            //                    table.Append("</tr>");
            //                }
            //            }
            //            table.Append("</table>");
            //            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
            //            rd.Close();
            //        }
            //        catch
            //        {

            //        }
            //}
           
        }


        //public string getStudentData()
        //{
        //    string connectionString = @"Data Source=RANIGUNJSERVER\SQLSERVER; Integrated Security=true; Initial Catalog=Customer; User ID = sa; Password=12345";
        //    string data = "";
        //    using (SqlConnection conn = new SqlConnection(connectionString))
        //    {
        //        using (SqlCommand cmd = new SqlCommand())
        //        {
        //            cmd.Connection = conn;
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            cmd.CommandText = "getCustData";
        //            cmd.Connection.Open();
        //            using (SqlDataReader sqlRdr = cmd.ExecuteReader())
        //            {
        //                // table = new DataTable();  
        //                // table.Load(reader);  
        //                if (sqlRdr.HasRows)
        //                {
        //                    while (sqlRdr.Read())
        //                    {
        //                        int CustomerId = sqlRdr.GetInt32(0);
        //                        string Name = sqlRdr.GetString(1);
        //                        string Country= sqlRdr.GetString(2);
        //                        data += "<tr><td>" + CustomerId + "</td><td>" + Name + "</td><td>" + Country + "</td></tr>";
        //                    }
        //                }
        //            }
        //        }
        //        return data;
        //    }
        //}
    }

}