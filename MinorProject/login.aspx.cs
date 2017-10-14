using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MinorProject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {

                }
            }
            catch (Exception ex) { }
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                lblerror.Text = "";
                string email = txtemail.Text.Trim();
                string password = txtpassword.Text.Trim();

                string connString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();

                SqlCommand cmd = new SqlCommand("select * from registration where email = '" + email + "' and  password ='" + password + "'", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                    lblerror.Text = "Login Sucessfull";      
                else
                    lblerror.Text = "Please check your credentials OR Sign Up";
                conn.Close();


            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message.ToString();
            }

        }
    }
}