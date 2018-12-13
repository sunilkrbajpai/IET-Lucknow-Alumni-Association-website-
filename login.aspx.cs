using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        DBmanager dm = new DBmanager();
        encryptionmanager em = new encryptionmanager();
        string epass = em.encryptmydata(txtpass.Text);
        string code = "select * from tbl_login where userid='"+txtuid.Text+"' and pass='"+epass+"' and status=true";
        DataTable dt = dm.executemyselect(code);
        if (dt.Rows.Count > 0)
        {
            code = "update tbl_login set lcount=(lcount+1) , logintime='" + DateTime.Now.ToString() + "' where userid='" + txtuid.Text + "' and pass='" + epass + "'";
            bool x = dm.executemyinsertupdateordelete(code);
            if (x == true)
            {
               
               Session["userid"] = txtuid.Text;
Response.Redirect("~/UserZone/Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Unable to login!');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid UserID or Password!');</script>");
        }
    }
}