using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_userzone : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        { 
        if(IsPostBack==false)
            {
                string cmd = "select uname,profilepic from tbl_registration where emailid='" + Session["userid"].ToString() + "'";
                DBmanager dm=new DBmanager();
            System.Data.DataTable dt=dm.executemyselect(cmd);
 if(dt.Rows.Count>0)
 {
     lbltext.Text = "WELCOME!";
     if(dt.Rows[0][0]!="")
        lbluser.Text=dt.Rows[0][0].ToString();
 }
 else
     lbluser.Text="User";
            if(dt.Rows[0][1]!="")
            {
            imgpro.ImageUrl="~/useruploads/"+dt.Rows[0][1].ToString();
            }




            }
        
        }
else
            Response.Redirect("~/login.aspx");
    }
     
}
