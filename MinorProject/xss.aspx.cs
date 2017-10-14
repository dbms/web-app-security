using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MinorProject
{
    public partial class xss : System.Web.UI.Page
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
                lblerror.Text = txtemail.Text;

            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message.ToString();
            }

        }


    }
}