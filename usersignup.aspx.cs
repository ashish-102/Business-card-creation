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
    public partial class usersignup : System.Web.UI.Page
    {
       string strcom = ConfigurationManager.ConnectionStrings["com"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //signbutton_click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                Response.Write("<script>alert('This User Id Already exist, Try another.');</script>");

            }
            else
            {
                SignUpNewUser();
            }

            
        }

        //user define method

        bool checkUserExists()
        {
            try
            {
                SqlConnection com = new SqlConnection(strcom);
                if (com.State == ConnectionState.Closed)
                {
                    com.Open();
                }


                SqlCommand cmd = new SqlCommand("SELECT * from signup_tbl where user_id = '" + TextBox4.Text.Trim() + "';", com);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                } 
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }

            return false;
        }

        // user define method

        void SignUpNewUser()
        {
            try
            {
                SqlConnection com = new SqlConnection(strcom);
                if (com.State == ConnectionState.Closed)
                {
                    com.Open();
                }


                SqlCommand cmd = new SqlCommand("Insert into signup_tbl(full_name,contact,email,user_id,password) values(@full_name,@contact,@email,@user_id,@password)",
                    com);

                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@user_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox5.Text.Trim());

                cmd.ExecuteNonQuery();
                com.Close();
                Response.Write("<script>alert('Sign Up Successful.');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
    }
}