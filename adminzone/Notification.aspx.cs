using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminzone_Notification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnclick_Click(object sender, EventArgs e)
    {
        DBmanager dm = new DBmanager();
        string cmd = "insert into notification(nmsg,ndt) values('"+txtnotification.Text+"','"+DateTime.Now.ToString()+"')";
        if (dm.executemyinsertupdateordelete(cmd) == true)
        {
            Response.Write("<script>alert('Your Notification is completed!')</script>");
        }
        else {
            Response.Write("<script>alert('Your Notification is not completed!')</script>");
        }
    }
}