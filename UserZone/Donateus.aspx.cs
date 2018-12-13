using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_Donateus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        DBmanager dm = new DBmanager();
        string cmd = "insert into donation(alname,contact,emailid,amount,passyear,purpose,ddnumber,bankname,donatedt) values('" + txtname.Text + "','" + txtnum.Text + "','" + txtemail.Text + "','" + txtamount.Text + "','" + txtpassyear.SelectedValue  + "','" + ddlpurpose.SelectedValue + "','" + txtddnum.Text + "','" + txtbank.Text + "','" + DateTime.Now.ToString() + "')";
        bool b = dm.executemyinsertupdateordelete(cmd);
        if (b == true)
        {
            Response.Write("<script>alert('Donation Entry is successfull!')</script>");
            txtamount.Text  = "";
            txtbank .Text = ""; txtddnum .Text  = ""; txtemail.Text  = "";
            txtname.Text  = "";
            txtnum.Text = "";
            txtpassyear.Text  = "";

        }
        else
        {
            Response.Write("<script>alert('Donation not entered!')</script>");
        }
    }
}