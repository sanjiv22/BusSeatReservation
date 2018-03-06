using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (PreviousPage != null)
        {
            TextBox SourceTextBox =
                (TextBox)PreviousPage.FindControl("TBUsername");
            if (SourceTextBox != null)
            {
                lblusername.Text = SourceTextBox.Text;
            }
        }

      //  lblusername.Text = username;

            lblseat1.Text = Session["Seat1"].ToString();
            lblseat2.Text = Session["Seat2"].ToString();
            lblbusno.Text = Session["Busno"].ToString();
            lbltime.Text = Session["Time"].ToString();
            lbldate.Text = Session["Date"].ToString();
            lbltotalfare.Text = Session["Fare"].ToString();
            

        
    }
}