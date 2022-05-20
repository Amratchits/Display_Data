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
using System.Web.Services;


namespace Display_Data
{
    public partial class test : System.Web.UI.Page
    {
        //string constr = @"Data Source=ESKTOP-CEI1CUN\SQLEXPRESS Integrated Security=true; Initial Catalog=Amrat;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dummy = new DataTable();
                dummy.Columns.Add("CustomerID");
                dummy.Columns.Add("CName");
                dummy.Columns.Add("Country");
                dummy.Rows.Add();
                gvCustomers.DataSource = dummy;
                gvCustomers.DataBind();

                //Required for jQuery DataTables to work.
                gvCustomers.UseAccessibleHeader = true;
                gvCustomers.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }

        [WebMethod]
        public static List<Customer> GetCustomers()
        {
            List<Customer> customers = new List<Customer>();
            //string constr = @"Data Source=RANIGUNJSERVER\SQLSERVER Integrated Security=true; Initial Catalog=Amrat; User ID = sa; Password=12345";
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            string constr = @"Data Source=ESKTOP-CEI1CUN\SQLEXPRESS Integrated Security=true; Initial Catalog=Amrat;";
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT CustomerID, CName, Country FROM Customers", con))
                {
                    
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            customers.Add(new Customer
                            {
                                CustomerID = sdr["CustomerID"].ToString(),
                                CName = sdr["ContactName"].ToString(),
                                Country = sdr["Country"].ToString()
                            });
                        }
                    }
                    con.Close();
                }
            }

            return customers;
        }

        public class Customer
        {
            public string CustomerID { get; set; }
            public string CName { get; set; }
            public string Country { get; set; }
        }

    }

}