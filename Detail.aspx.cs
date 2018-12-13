using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<script>  alert('Please fill all the additional details for security purpose and account recovery');</script>");
    }
    protected void imgsubmit_Click(object sender, ImageClickEventArgs e)
    {
        DBmanager dm = new DBmanager();

        string mycommand = "update tbl_registration set dob='" + txtdob.Text + "',securityquest='" + ddlquestion.SelectedValue + "',securityans='" + txtanswer.Text + "' where emailid='" + txtemail.Text + "'";
           bool b= dm.executemyinsertupdateordelete(mycommand);
            if (b == true) {
               
                Response.Redirect("login.aspx");
            }
            else
                Response.Write("<script>alert('Not able to update information!');</script>");
    }
}