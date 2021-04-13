using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_business_card
{
    public partial class bc3 : System.Web.UI.Page
    {
        string strcom = ConfigurationManager.ConnectionStrings["com"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection com = new SqlConnection(strcom);
                if (com.State == ConnectionState.Closed)
                {
                    com.Open();
                }


                SqlCommand cmd = new SqlCommand("Insert into order_tbl(name,jobtitle,contact,email,address1,address2,pin,product_id) values(@name,@jobtitle,@contact,@email,@address1,@address2,@pin,@product_id)",
                    com);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@jobtitle", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@address1", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@address2", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pin", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@product_id", "simplecard3");
                cmd.ExecuteNonQuery();
                com.Close();
                Response.Write("<script>alert('Order placed');</script>");
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
            Response.Redirect("orderpage.aspx");
        }
    }
}