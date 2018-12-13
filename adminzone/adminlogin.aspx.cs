using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminzone_adminlogin : System.Web.UI.Page
{
    DBmanager dm = new DBmanager();
    encryptionmanager em = new encryptionmanager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string encryptpass = em.encryptmydata(txtpassword.Text);
        string command = "select *from adminlogindata where userid='" + txtemail.Text + "' and pass='" + encryptpass + "' ";
        System.Data.DataTable dt = dm.executemyselect(command);
        if (dt.Rows.Count > 0)
        {
            string cmd = "update adminlogindata set lcount=(lcount+1),logintime='" + DateTime.Now.ToString() + "'  where userid='" + txtemail.Text + "' and pass='" + encryptpass + "' and status=true";
            bool x = dm.executemyinsertupdateordelete(cmd);
           
                Session["adminid"] = txtemail.Text;
                Response.Redirect("~/adminzone/AdminHome.aspx");
           
        }
        else
        {
            Response.Write("<script>alert('Invalid emailid or password!')</script>");
        }
    }
    
}