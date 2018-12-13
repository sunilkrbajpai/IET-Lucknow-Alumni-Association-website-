using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class registration : System.Web.UI.Page
{
    static string ccode;
    captchagenerator ccg = new captchagenerator();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            ccode = ccg.getcode();
            lblcaptcha.Text = ccode;
            lblcaptcha.Font.Strikeout = true;
            lblcaptcha.Font.Size = FontUnit.Large;
            lblcaptcha.Font.Underline = true;
            lblcaptcha.Font.Italic = true;
        }
    }



    protected void imgregister_Click(object sender, ImageClickEventArgs e)
    {
        string gender = "";
        if (rdbmale.Checked == true)
            gender = "Male";
        else
            gender="Female";
        if (txtcaptcha.Text == ccode)
        {
            DBmanager dm = new DBmanager();
 string code = "select * from tbl_login where userid='"+txtemail.Text+"' ";
        DataTable dt = dm.executemyselect(code);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Email ID already REGISTERED!');</script>");
            txtemail.Text = "";

        }
        else
        {
            string epass,nullcode="no value";
            encryptionmanager em = new encryptionmanager();
            epass = em.encryptmydata(txtpass.Text);

            string mycommand = "insert into tbl_registration values('" + txtname.Text + "','" + gender + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "','" + txtqual.Text + "','" + txtcollege.Text + "','" + ddlyear.SelectedValue + "','" + txtcurrjob.Text + "','" + epass + "','" + profilepic.FileName + "','" + DateTime.Now.ToLongDateString() + "','" + DateTime.Now.ToLongTimeString() + "','"+nullcode +"','"+nullcode +"','"+nullcode +"')";
            bool b = dm.executemyinsertupdateordelete(mycommand);
            if (b == true)
            {
                mycommand = "insert into tbl_login values('" + txtemail.Text + "','" + epass + "',true,0,'')";
                b = dm.executemyinsertupdateordelete(mycommand);
                if (b == true)
                {
                    profilepic.SaveAs(Server.MapPath("~/useruploads/" + profilepic.FileName));
                    Response.Write("<script>alert('You Are Registered Successfully!');</script>");
                    Response.Redirect("Detail.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Unable To Set Login Details!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Sorry! Unable To Register.');</script>");
            }
        }
        }
        else
        {
            Response.Write("<script>alert('INVALID Captcha Code!');</script>");
        }
    }

    protected void imgrefresh_Click(object sender, ImageClickEventArgs e)
    {
        ccode = ccg.getcode();
        lblcaptcha.Text = ccode;
    }


}