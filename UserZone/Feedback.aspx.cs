using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        DBmanager dm = new DBmanager();
        string mycmd = "insert into feedback (uname,emailid,contact,feedbacktext,feedbackdt) values('"+txtname.Text+"','"+txtemail.Text+"','"+txtcon.Text+"','"+txtfeed.Text+"','"+DateTime.Now.ToString()+"')";
        bool b = dm.executemyinsertupdateordelete(mycmd);
        if (b == true)
        {
            Response.Write("<script>alert('Feedback submitted successfully!')</script>");
            txtfeed.Text = "";
            txtname.Text = "";
            txtcon.Text = "";
            txtemail.Text = "";
        }
        else
            Response.Write("<script>alert('Feedback not submitted!')</script>");
    }
   
}