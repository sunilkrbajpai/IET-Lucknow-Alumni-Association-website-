using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sub_Click(object sender, EventArgs e)
    {
        string mycommand = "insert into tbl_enquiry(uname,mobno,emailid,msg,enquirydt) values('" + txtname.Text + "','" + Txtmob.Text + "','" + Txtemail.Text + "','" + Txtmessage.Text + "','" + DateTime.Now.ToString() + "')";
        DBmanager dm = new DBmanager();
        bool status = dm.executemyinsertupdateordelete(mycommand);
        if (status == true)
        {
            txtname.Text = "";
            Txtmob.Text = "";
            Txtmessage.Text = "";
            Txtemail.Text = "";
            Response.Write("<script>alert('Thanks for Enquiry!!');</script>");
        }
        else
        {
            Response.Write("<script>alert('Unable to enquire!!');</script>");
        }
    }
}