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
    public partial class orderpage : System.Web.UI.Page
    {
        string strcom = ConfigurationManager.ConnectionStrings["com"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("bc1.aspx");
        }

        //Order button event
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('click');</script>");
            try
            {
                SqlConnection com = new SqlConnection(strcom);
                if (com.State == ConnectionState.Closed)
                {
                    com.Open();
                }


                SqlCommand cmd = new SqlCommand("Insert into Allorder_tbl(name,contact,date,email) values(@name,@contact,@date,@email)",
                    com);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());

                cmd.ExecuteNonQuery();
                com.Close();
                Response.Write("<script>alert('Order placed');</script>");
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        
        }
    }
}