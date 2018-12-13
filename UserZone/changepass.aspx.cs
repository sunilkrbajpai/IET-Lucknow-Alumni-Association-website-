using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_changepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        encryptionmanager em = new encryptionmanager();
        string ecurpass = em.encryptmydata(txtcurrpass .Text);
        string enewpass = em.encryptmydata(txtnewpass.Text);
        string cmd = "update tbl_login set pass='"+enewpass +"' where userid='"+Session["userid"].ToString()+"' and pass='"+ecurpass +"'";
            DBmanager dm=new DBmanager();
        bool x=dm.executemyinsertupdateordelete(cmd);
        if (x == true)
        {
            Response.Write("<script>alert('Password updated successfully!')</script>");

            txtconpass.Text = " "; 
            txtnewpass.Text = " ";
            txtcurrpass.Text = " ";
         
        }
        else {
            Response.Write("<script>alert('Password not changed.')</script>");
            txtconpass.Text = " ";
            txtnewpass.Text = " ";
            txtcurrpass.Text = " ";
        }

    }
}