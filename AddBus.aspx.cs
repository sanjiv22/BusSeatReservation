using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddBus : System.Web.UI.Page
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
    void insertbus()
    {
        

        sqlcmd.CommandText = "INSERT INTO Bus_info(Busno,Source,Destination,Date,Time,Shift,Fare) " +
                       "Values('" + TBBusno.Text + "', '" + TBSource.Text + "', '" + TBDest.Text + "', '" + TBDate.Text + "', '" + TBTime.Text + "', '" + DDShifts.SelectedItem.Text + "' , '" + TBFare.Text + "')";
        sqlcmd.ExecuteNonQuery();
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        insertbus();
        Lblmessage.Text = "Bus info added Successfully";
    }
}