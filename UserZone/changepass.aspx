<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/userzone.master" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="UserZone_changepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <title>Change Password</title> <style>
       
        input
        {
            width:350px;
            height:40px;
          border-radius:20px 0px;
        padding:3px 5px;
        margin:5px;
        font-size:x-large;
            text-align: center;
        }
        #tblchange
        {
            width:95%;
          height:420px;
            color:navy;
            border-radius:20px;
            padding:5% 0%;
            margin:0px auto;
            background-color:lightgrey;
        }
            #tblchange tr
            {
                padding:15px;
            }
                #tblchange tr td
                {
                    text-align:center;
                }
      
        .auto-style1
        {
            width: 403px;
            text-align: center;
        }
        .auto-style2
        {
            width: 403px;
            text-align: right;
        }
      
        .auto-style3 {
            width: 228px;
            text-align: right;
        }
        .auto-style4 {
            width: 228px;
            text-align: center;
        }
      
        .auto-style5 {
            text-align: left;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">
    Change Password
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Cphmain" Runat="Server">
    <center>  <table id="tblchange">
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcurrpass" runat="server" TextMode="Password" placeholder="Enter Current Password"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcurrpass" ErrorMessage="Please Enter Current Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password" placeholder="Enter new Password"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtnewpass" ErrorMessage="Enter New Password" ForeColor="red" style="text-align: left"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtconpass" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtconpass" ErrorMessage="Confirm Your Password" ForeColor="red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpass" ControlToValidate="txtconpass" ErrorMessage="Password Must Be Same" ForeColor="Red" style="text-align: left"></asp:CompareValidator>
            </td>
        </tr>
     <tr>
         <td class="auto-style4">&nbsp;</td>
         <td class="auto-style1"><br /><br style="text-align: center" />
             <asp:Button  ID="btnchange" style="width:200px;font-size:medium;border-radius:30px;background-color:yellowgreen;color:navy;" text="Change Password" runat="server" OnClick="btnchange_Click" />
         </td>
     </tr>
    </table></center> 
</asp:Content>

