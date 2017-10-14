using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MinorProject
{
    public partial class signup : System.Web.UI.Page
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
                string email = txtemail.Text.Trim();
                string password = txtpassword.Text.Trim();
             
                string connString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();
                //if not exists(select * from registration  where email = '" + email + "')
                SqlCommand cmd = new SqlCommand("insert into registration values('" + email + "', '" + password + "') ", conn);
                cmd.ExecuteNonQuery();               
                conn.Close();
                lblerror.Text = "Saved";
            }
            catch(SqlException ex)
            {
                if(ex.Number == 2627)
                    lblerror.Text = "Email already exists";
                else
                    lblerror.Text = ex.Message.ToString();

            }
            catch (Exception ex)
            {
                    lblerror.Text = ex.Message.ToString();
            }
            
            finally
            {
                txtemail.Text = "";
                txtpassword.Text = "";
                txtconfirm.Text = "";
            }

        }
    }
}