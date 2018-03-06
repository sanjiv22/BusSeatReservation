using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
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

    void insertdata()
    {
        string username = TBUsername.Text;
        string firstname = TBFirstname.Text;
        string lastname = TBLastname.Text;
        string gender = DDGender.SelectedItem.Text;
        string address = TBAddress.Text;
        string email = TBEmail.Text;
        string phoneno = TBPhoneno.Text;
        string password = TBPass.Text;
        string utype = "U";

        sqlcmd.CommandText = "INSERT INTO User_info(username,firstname,lastname, gender, address,email,phone,password,utype) " +
                       "Values('" + username + "', '" + firstname + "', '" + lastname + "', '" + gender + "' , '" + address + "' , '" + email + "', '" + phoneno + "', '" + password + "', '"+ utype +"')";
        sqlcmd.ExecuteNonQuery();
    }

    protected void BtnSignUp_Click(object sender, EventArgs e)
    {
        insertdata();
        Session["USERNAME"] = TBUsername.Text;

        Response.Redirect("~/UserHome.aspx");
    }
}