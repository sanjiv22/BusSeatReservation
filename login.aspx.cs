using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection sqlconn;
    SqlCommand sqlcmd;
    SqlDataReader sdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        iniz();
    }
      void iniz()
    {
        //internal link for database
         string st = ConfigurationManager.ConnectionStrings["db_bus"].ConnectionString;
        
        sqlconn = new SqlConnection();
        sqlconn.ConnectionString = st;
        sqlconn.Open();
        sqlcmd = new SqlCommand();
        sqlcmd.Connection = sqlconn;
        }


      protected void BtnLogin_Click(object sender, EventArgs e)
      {
          
            SqlCommand cmd = new SqlCommand("select * from User_info where username='" + TBUsername.Text + "' and Password='" + TBPass.Text + "'", sqlconn);
           
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                
               
                string Utype;
                Utype = dt.Rows[0][8].ToString().Trim();

                if (Utype == "U")
                {
                    Session["USERNAME"] = TBUsername.Text;
                    
                        Response.Redirect("~/UserHome.aspx");
                    
                }
                if (Utype == "A")
                {
                    Session["USERNAME"] = TBUsername.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }


            }
            else
            {
                Lblerror.Text = "Invalid Username or Password !";
            }
        }
    }
      