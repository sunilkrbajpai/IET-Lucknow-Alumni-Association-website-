<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="adminzone_changepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
      
        input
        {
            width:350px;
            height:40px;
          text-align:center;
          border-radius:20px 0px;
        padding:3px 5px;
        margin:5px;
        font-size:x-large;
          }
        #tblchange
        {
            width:50%;
          height:415px;
            color:navy;
            border-radius:20px;
            padding:5% 15%;
            margin:0px auto;
            background:lemonchiffon;
        }
            #tblchange tr
            {
                padding:15px;
            }
                #tblchange tr td
                {
                    text-align:center;
                }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">
    <h1>Change Password</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">
    <br /> <center>  <table id="tblchange">
        <tr>
            <td>
                <asp:TextBox ID="txtcurrpass" runat="server" TextMode="Password" placeholder="Enter Current Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcurrpass" ErrorMessage="Enter Your Current Password.." Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password" placeholder="Enter new Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpass" ErrorMessage="Enter new Password.." Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtconpass" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtconpass" ErrorMessage="Enter Password Again.." Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpass" ControlToValidate="txtconpass" ErrorMessage="Both Password Must Be Same.." Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
     <tr>
         <td><br /><br />
             <asp:Button  ID="btnchange" style="width:160px;font-size:medium;border-radius:30px;background-color:darkgreen;color:white;" text="Change Password" runat="server" OnClick="btnchange_Click" />
         </td>
     </tr>
    </table></center> <br />
</asp:Content>

