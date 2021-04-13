using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_business_card
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //user login btn
                    LinkButton2.Visible = true; //sign up btn

                    LinkButton3.Visible = false; // logout btn is invisible
                    LinkButton7.Visible = false; // hello user also invisible

                    LinkButton6.Visible = true; // admin login btn
                    LinkButton11.Visible = false; // is for admin

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //user login btn
                    LinkButton2.Visible = false; //sign up btn


                    LinkButton3.Visible = true; // logout btn is invisible
                    LinkButton7.Visible = true; // hello user also invisible
                    LinkButton7.Text="Hello " + Session["username"].ToString();


                    LinkButton6.Visible = true; // admin login btn
                    LinkButton11.Visible = false; // is for admin
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //user login btn
                    LinkButton2.Visible = false; //sign up btn


                    LinkButton3.Visible = true; // logout btn is invisible
                    LinkButton7.Visible = true; // hello user also invisible
                    LinkButton7.Text = "Hello Admin";


                    LinkButton6.Visible = false; // admin login btn
                    LinkButton11.Visible = true; // is for admin
                }
            }
            catch(Exception ex)
            {
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");

        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("vieworder.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["Fullname"] = "";
            Session["role"] = "";

            LinkButton1.Visible = true; //user login btn
            LinkButton2.Visible = true; //sign up btn

            LinkButton3.Visible = false; // logout btn is invisible
            LinkButton7.Visible = false; // hello user also invisible

            LinkButton6.Visible = true; // admin login btn
            LinkButton11.Visible = false; // is for admin

            Response.Redirect("home.aspx");

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}