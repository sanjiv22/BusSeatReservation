using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{

    SqlConnection sqlconn;
    SqlCommand sqlcmd;
    

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

    void insertfeedback()
    {

        sqlcmd.CommandText = "INSERT INTO feedback(Name, Email, Message) " +
                       "Values('" + TBName.Text + "', '" + TbEmail.Text + "', '" + TbMessage.Text + "')";
        sqlcmd.ExecuteNonQuery();
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        insertfeedback();

        Lblmessage.Text = "Thank you " + "Mr./Mrs. " + TBName.Text + " for giving Your Feedback";
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}