using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_Discussion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBmanager dm=new DBmanager();
        string cmd = "insert into question(ques,askby,qdt) values('"+txtquestion.Text+"','"+Session["userid"]+"','"+DateTime.Now.ToString()+"')";
        if (dm.executemyinsertupdateordelete(cmd) == true)
        {
            Response.Write("<script>alert('Question posted Successfully!')</script>");
            txtquestion.Text = "";

        }
        else
            Response.Write("<script>alert('Question not posted!')</script>");
    }
    
}