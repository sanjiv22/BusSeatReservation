using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class bookticket : System.Web.UI.Page
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
        //  sqlconn.Open();
        sqlcmd = new SqlCommand();
        sqlcmd.Connection = sqlconn;



    }
    protected void BtnCheckBus_Click(object sender, EventArgs e)
    {
        sqlconn.Open();
        string source = TBBusFrom.Text;
        string destination = TBBusTo.Text;
        string date = TBBusDate.Text;
        string shift = DDShifts.SelectedItem.Text;
      
        sqlcmd = new SqlCommand("select * from Bus_info where  (Source = '" + source + "') AND (Destination = '" + destination + "') AND (Date = '" + date + "') AND (Shift ='" + shift + "' )", sqlconn);
        
        
        SqlDataAdapter sa = new SqlDataAdapter(sqlcmd);
        sa.SelectCommand = sqlcmd;
        DataTable dt = new DataTable();

        sa.Fill(dt);
      
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }

    protected void viewseat_click(object sender, EventArgs e)
    {
        string busno = ((sender as LinkButton).CommandArgument).ToString();
        Label1.Text = busno;

        sqlcmd = new SqlCommand("select * from seat where Busno='" + busno + "'", sqlconn);


        SqlDataAdapter sa = new SqlDataAdapter(sqlcmd);
        sa.SelectCommand = sqlcmd;
        DataTable dt = new DataTable();

        sa.Fill(dt);

        GridView2.DataSource = dt;
        GridView2.DataBind();
    }


    
    protected void bookseat_click(object sender, EventArgs e)
    {
        string busno = ((sender as LinkButton).CommandArgument).ToString();
        TBBusno1.Text = busno;
    
    }
    protected void BtnBokTkt_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from Bus_info where Busno='"+TBBusno1.Text+"'", sqlconn);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        string source, destination,time,date,fare,shift;
        source = dt.Rows[0][1].ToString().Trim();
        destination = dt.Rows[0][2].ToString().Trim();
        date = dt.Rows[0][3].ToString().Trim();
        time = dt.Rows[0][4].ToString().Trim();
        shift = dt.Rows[0][5].ToString().Trim();
        fare = dt.Rows[0][6].ToString().Trim();

       

     
        Session["Seat1"] = TBSeat1.Text;
        Session["Seat2"] = TBSeat1.Text;
        Session["Busno"] = TBBusno1.Text;
        Session["Time"] = time;

            Session["Date"]=date;
            Session["Fare"] = fare;
           
        Response.Redirect("~/Book.aspx");
        
    }
}
