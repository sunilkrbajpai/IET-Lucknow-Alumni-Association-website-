using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminzone_postanswer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnanswer_Click(object sender, EventArgs e)
    {
        DBmanager dm = new DBmanager();
        string cmd = "insert into answers(qid,answer,givenby,adt) values('" + Request.QueryString["qid"].ToString() + "','" + txtanswer.Text + "','" + Session["userid"] + "','" + DateTime.Now.ToString() + "')";
        if (dm.executemyinsertupdateordelete(cmd) == true)
        {
            Response.Write("<script>alert('Answer posted successfully!');</script>");
            txtanswer.Text = "";
        }
        else
        {
            Response.Write("<script>alert('Answer not posted!')</script>");
        }
    }
}