using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace MinorProject
{
    public partial class accounts_google : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                { }
            }
            catch (Exception ex) { }
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtEmail.Text.Trim() == "")
                {
                    txtEmail.BorderColor = Color.Red;
                }
                else
                {
                    Response.Redirect("password.google.aspx?email=" + txtEmail.Text.Trim(), false);
                }
            }
            catch (Exception ex)
            { }
        }
    }
}