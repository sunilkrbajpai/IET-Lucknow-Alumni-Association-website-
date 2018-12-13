using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminzone_sendsms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnsend_Click(object sender, EventArgs e)
    {
        smssender ss = new smssender();
        bool b = ss.sendmysms(txtto.Text, txtmsg.Text);
        if (b == true)
        {
            txtmsg.Text = "";
            txtto.Text = "";
            Response.Write("<script>alert('SMS sent successfully!')</script>");
            txtto.Text = "";
        }

        else
        {
             Response.Write("<script>alert('SMS not sent!')</script>");
        }
        }
  
}
