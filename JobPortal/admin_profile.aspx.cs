using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
using System.Reflection.Emit;



namespace JobPortal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            M_Jobs.Visible = true;
            M_Candidate.Visible = true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            M_Candidate.Visible = true;
            M_Jobs.Visible = false;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\meets\\source\\repos\\JobPortal\\App_Data\\JobPortal.mdf;Integrated Security=True";
            try
            {
                using (conn)
                {
                    string command = "select * from Candidate";
                    SqlCommand cmd = new SqlCommand(command, conn);
                    conn.Open();
                    //SqlDataReader rdr = cmd.ExecuteReader();
                    //GridView1.DataSource = rdr;
                    GridView1.DataBind();
                    //rdr.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            M_Jobs.Visible = true;
            M_Candidate.Visible = false;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\meets\\source\\repos\\JobPortal\\App_Data\\JobPortal.mdf;Integrated Security=True";
            try
            {
                using (conn)
                {
                    string command = "select * from Job";
                    SqlCommand cmd = new SqlCommand(command, conn);
                    conn.Open();
                   // SqlDataReader rdr = cmd.ExecuteReader();
                    //GridView2.DataSource = rdr;
                    GridView2.DataBind();
                    //rdr.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/recruiter_login.aspx");
        }
    }
}