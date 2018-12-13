using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_Newsupdates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnpost_Click(object sender, EventArgs e)
    {
        DBmanager dm = new DBmanager();
        string cmd = "insert into news values('"+Session["userid"].ToString()+"','"+txtnews.Text+"','"+txtsuggestion.Text+"','"+DateTime.Now.ToString()+"')";
        if (dm.executemyinsertupdateordelete(cmd) == true)
        {
            Response.Write("<script>alert('News posted successfully!')</script>");
            txtnews.Text = "";
            txtsuggestion.Text = "";
        }
        else
        {
            Response.Write("<script>alert('News not posted!')</script>");
        }
    
    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UserZone/viewupdates.aspx");
    }
}