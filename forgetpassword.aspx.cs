using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class forgetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBmanager dm = new DBmanager();
        encryptionmanager em = new encryptionmanager();
        string code = "select * from tbl_registration where emailid='" + txtemail.Text + "' and dob='" + txtdob.Text + "' and securityquest='" + ddlquestion.SelectedValue + "' and securityans='" + txtsecans.Text + "'";
        DataTable dt = dm.executemyselect(code);
        if (dt.Rows.Count > 0)
        {
            string cmd = "select pass from tbl_login where userid='" + txtemail.Text + "'";
            DataTable d = dm.executemyselect(cmd);
            string s = em.decryptmydata(d.Rows[0][0].ToString());
            txtemail.Text = "";
            txtsecans.Text = "";
            txtdob.Text = "";
            ddlquestion.SelectedIndex = 0;
            msgbox( "Your Password is:  "+s);
            
        }
        else
        {

            Response.Write("<script>alert('Sorry! Record not found.');</script>");
        }
    }
    public void msgbox(string msg) {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "message box", "<script language= 'javascript'>alert('" +msg +  "')</script>");

    }

}