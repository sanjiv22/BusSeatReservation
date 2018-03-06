using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMaster : System.Web.UI.MasterPage
{
    string username;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ( Session["USERNAME"] != null)
        {
            welcomeuser.Text = "Welcome " + Session["USERNAME"].ToString();
             username = Session["USERNAME"].ToString();
        }
        
    }
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("index.aspx");
    }

  /*  protected void btnSignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
    }*/
}
