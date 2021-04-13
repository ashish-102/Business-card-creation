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
    public partial class userlogin : System.Web.UI.Page
    {
        string strcom = ConfigurationManager.ConnectionStrings["com"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // login button
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('button working');</script>");

            try
            {
                SqlConnection com = new SqlConnection(strcom);
                if (com.State == ConnectionState.Closed)
                {
                    com.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from signup_tbl where user_id='"+ TextBox1.Text.Trim() +"' AND  password='"+ TextBox2.Text.Trim() +"'", com);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('!Login successfully');</script>");
                        Session["username"] = dr.GetValue(3).ToString();
                        Session["Fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('!Invalid user id');</script>");
                }

            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
    }
}