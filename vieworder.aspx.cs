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
    public partial class vieworder : System.Web.UI.Page
    {
        string strcom = ConfigurationManager.ConnectionStrings["com"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('testing');</script>");

             if (checkorder())
             {
                deleteorder();
             }
             else
             {
                Response.Write("<script>alert('Order not exist');</script>");
            }
        }

        // user define func

        void deleteorder()
        {
            try
            {
                SqlConnection com = new SqlConnection(strcom);
                if (com.State == ConnectionState.Closed)
                {
                    com.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from vieworder_tbl Where order_id=' " + TextBox1.Text.Trim() + "'", com);
                cmd.ExecuteNonQuery();
                com.Close();
                Response.Write("<script>alert('Order deleted Successfully');</ script >");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }


        bool checkorder()
        {
            try
            {
                SqlConnection com = new SqlConnection(strcom);
                if (com.State == ConnectionState.Closed)
                {
                    com.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from vieworder_tbl where order_id=' " + TextBox1.Text.Trim() + "'", com);
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
    }
}