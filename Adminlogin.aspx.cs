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
    public partial class Adminlogin : System.Web.UI.Page
    {
        string strcom = ConfigurationManager.ConnectionStrings["com"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // admin login button
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection com = new SqlConnection(strcom);
                if (com.State == ConnectionState.Closed)
                {
                    com.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from admin_tbl where admin_id='" + TextBox1.Text.Trim() + "' AND  password='" + TextBox2.Text.Trim() + "'", com);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login successfully');</script>");
                        Session["username"] = dr.GetValue(0).ToString();
                        Session["Fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "admin";
                    }
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('!Invalid Id');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }

        }
    }
}