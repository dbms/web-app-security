using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace MinorProject
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    showFeedback();
                }
            }
            catch (Exception ex) { }
        }

        protected void showFeedback()
        {
            try
            {
                
                string connString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();

                SqlCommand cmd = new SqlCommand("select * from feedback order by Id DESC", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            { 
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            for (int i = 0; i < e.Row.Cells.Count; i++)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    string decodedText = HttpUtility.HtmlDecode(e.Row.Cells[i].Text);
                    e.Row.Cells[i].Text = decodedText;
                }
            }
        }
    }
}