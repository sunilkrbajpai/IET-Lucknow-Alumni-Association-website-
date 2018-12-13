using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_profile : System.Web.UI.Page
{
    DBmanager dm = new DBmanager();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            displayprofile();
            disablecontrol();
        }
    }
    void displayprofile()
    {
        string command = "select * from tbl_registration where emailid='"+Session["userid"].ToString()+"'";
        System.Data.DataTable dt = dm.executemyselect(command);
        txtname.Text = dt.Rows[0][0].ToString();
        string gender = dt.Rows[0][1].ToString();
        if (gender == "male")
            rdbmale.Checked = true;
        else
            rdbfemale.Checked = true;
        txtcontact.Text = dt.Rows[0][2].ToString();
        lblemail.Text = dt.Rows[0][3].ToString();
        txtaddress.Text=dt.Rows[0][4].ToString();
        txtqual.Text=dt.Rows[0][5].ToString();
        txtcollege.Text=dt.Rows[0][6].ToString();
        txtpassyear.Text = dt.Rows[0][7].ToString();
        txtcurrjob.Text = dt.Rows[0][8].ToString();
        Imgpro.ImageUrl = "~/useruploads/" + dt.Rows[0][10].ToString();
        lblregd.Text = dt.Rows[0][11].ToString();
        lblregt.Text = dt.Rows[0][12].ToString();
        txtdob1.Text=dt.Rows[0][13].ToString();
      ddlquestion.SelectedValue = dt.Rows[0][14].ToString();
        txtsecans.Text = dt.Rows[0][15].ToString();
        txtsecques.Text = dt.Rows[0][14].ToString();
        ddlyear.SelectedValue=dt.Rows[0][7].ToString();
    }
    void disablecontrol()
    {
        txtaddress.ReadOnly = true;
        txtcollege.ReadOnly = true;
        txtcontact.ReadOnly = true;
        txtcurrjob.ReadOnly = true;
        txtname.ReadOnly = true;
        txtpassyear.ReadOnly = true;
        txtqual.ReadOnly = true;
        btnupdate.Visible = false;
        btnedit.Visible = true;
        fupic.Visible = false;
        rdbmale.Enabled = false;
        rdbfemale.Enabled = false;
        txtsecans.ReadOnly= true;
        txtdob1.ReadOnly= true;
        ddlquestion.Visible=false;
        txtsecques.Visible = true;
        txtsecques.ReadOnly = true;
        ddlyear.Visible = false;
        txtpassyear.Visible = true;
    }
    void enablecontrol()
    {
        txtaddress.ReadOnly = false;
        txtcollege.ReadOnly = false;
        txtcontact.ReadOnly = false;
        txtcurrjob.ReadOnly = false;
        txtname.ReadOnly = true;
        txtpassyear.ReadOnly = false;
        txtqual.ReadOnly = false;
        btnupdate.Visible = true;
        btnedit.Visible = false;
        fupic.Visible = true;
        rdbmale.Enabled = false;
        rdbfemale.Enabled =false;
        txtsecans.ReadOnly = false ;
        txtdob1.ReadOnly =false ;
        ddlquestion.Visible = true;
        txtsecques.Visible = false;
        txtsecques.ReadOnly = true;
        ddlyear.Visible = true;
        txtpassyear.Visible = false;
    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        enablecontrol();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string mycom;
        string fname;
        if (fupic.HasFile == true)
        {
            fupic.SaveAs(Server.MapPath("~/useruploads/" + fupic.FileName));
            fname = fupic.FileName;
        }
        else
        {
            string s = Imgpro.ImageUrl;
            fname = s.Substring(s.LastIndexOf('/')+1);
        }
        string gen;
        if (rdbmale.Checked == true)
            gen = "male";
        else
            gen = "female";
        mycom = "update tbl_registration set uname='"+txtname.Text+"',gender='"+gen+"',contactnum='"+txtcontact.Text+"',collegename='"+txtcollege.Text+"',address='"+txtaddress.Text+"',qualification='"+txtqual.Text+"',passyear='"+ddlyear.SelectedValue +"',currjob='"+txtcurrjob.Text+"',profilepic='"+fname+"',dob='"+txtdob1.Text+"',securityquest='"+ddlquestion.SelectedValue +"',securityans='"+txtsecans.Text +"' where emailid='"+Session["userid"].ToString()+"'";
        bool b = dm.executemyinsertupdateordelete(mycom);
        if (b == true)
        {
            disablecontrol();
            displayprofile();
            Response.Write("<script>alert('Profile Updated!')</script>");

        }
        else { Response.Write("<script>alert('Unable to update profile info!')</script>"); }

    }
}