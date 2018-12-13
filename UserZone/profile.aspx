<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/userzone.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="UserZone_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Profile</title>
            <style type="text/css">
        .auto-style1
        {
            width: 100%;
            margin:0px auto ;
        }
        .auto-style12
        {
            width: 149px;
        }
        .auto-style14
        {
            width: 313px;
            text-align: left;
        }
        .auto-style15
        {
            width: 173px;
        }
        textarea
        {
            resize:none;
            height:70px;
            width:170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">
    My Profile
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphmain" Runat="Server">

    <table class="auto-style1" style="color:black;font-family:Vijaya;font-size:large;font-style:italic; height: 422px;">
        <tr>
            <td class="auto-style12">Name:</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtname" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style15">Profile Pic:</td>
            <td rowspan="4">
                <asp:Image ID="Imgpro" runat="server" Height="125px" Width="120px" BorderStyle="Double" EnableTheming="False" ToolTip="Profile Picture" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Gender:</td>
            <td class="auto-style14">
                <asp:RadioButton ID="rdbmale" runat="server" Text="Male" />
                <asp:RadioButton ID="rdbfemale" runat="server" Text="Female" />
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Contact number:</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcontact" runat="server" style="height: 22px" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Email ID:</td>
            <td class="auto-style14">
                <asp:Label ID="lblemail" runat="server" Text="Label" Width="150px"></asp:Label>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Address:</td>
            <td class="auto-style14" rowspan="2">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width ="150px"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>
                <asp:FileUpload ID="fupic" runat="server" Width="180px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style15">Date of REGISTRATION:</td>
            <td>
                <asp:Label ID="lblregd" runat="server" Text="Label" Width="150px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">College Name:</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcollege" runat="server" style="height: 22px" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>
                <asp:Label ID="lblregt" runat="server" Text="Label" Width="150px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Qualification:</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtqual" runat="server" style="height: 22px" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Passing Year:</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtpassyear" runat="server" style="height: 22px" Width="150px" Height="20px"></asp:TextBox>
                <br />
                <strong> <span class="auto-style1">
                   <asp:DropDownList ID="ddlyear" runat="server" Height="20px" Width="150px" Visible="False">
                       <asp:ListItem>2001</asp:ListItem>
                       <asp:ListItem>2002</asp:ListItem>
                       <asp:ListItem>2003</asp:ListItem>
                       <asp:ListItem>2004</asp:ListItem>
                       <asp:ListItem>2005</asp:ListItem>
                       <asp:ListItem>2006</asp:ListItem>
                       <asp:ListItem>2007</asp:ListItem>
                       <asp:ListItem>2008</asp:ListItem>
                       <asp:ListItem>2008</asp:ListItem>
                       <asp:ListItem>2009</asp:ListItem>
                       <asp:ListItem>2010</asp:ListItem>
                       <asp:ListItem>2011</asp:ListItem>
                       <asp:ListItem>2012</asp:ListItem>
                       <asp:ListItem>2013</asp:ListItem>
                       <asp:ListItem>2014</asp:ListItem>
                       <asp:ListItem>2015</asp:ListItem>
                       <asp:ListItem>2016</asp:ListItem>
                   </asp:DropDownList>
       </span></strong>
            </td>
            <td class="auto-style15">Date of Birth:</td>
            <td>
                <asp:TextBox ID="txtdob1" runat="server" style="height: 22px" Width="150px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Current Job:</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcurrjob" runat="server" style="height: 22px" Width="150px" ></asp:TextBox>
            </td>
            <td class="auto-style15">Security Question:</td>
            <td> <asp:DropDownList ID="ddlquestion" runat="server" Height="38px" Width="150px" AutoPostBack="True" ValidationGroup="g1">
                       <asp:ListItem>Your Mother Name</asp:ListItem>
                       <asp:ListItem>Your Pet Name</asp:ListItem>
                       <asp:ListItem>Your favourite Book</asp:ListItem>
                       <asp:ListItem>Your Favourite Movie</asp:ListItem>
                       <asp:ListItem>What was your favourite sports in schooltime ?</asp:ListItem>
                       <asp:ListItem>What is name of your girlfriend ?</asp:ListItem>
                       <asp:ListItem>Name of company where you get your first job ?</asp:ListItem>
                       <asp:ListItem>Name of your Best Friend ?</asp:ListItem>
                   </asp:DropDownList>
                <br />
                <asp:TextBox ID="txtsecques" runat="server" style="height: 22px" Width="150px" ReadOnly="True" Height="38px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">Security Answer:</td>
            <td>
                <asp:TextBox ID="txtsecans" runat="server" style="height: 22px" Width="150px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Button ID="btnedit" runat="server" Text="Edit" BackColor="#FF6600" ForeColor="White" Width="140px" Height="30px" style="border-radius:15px;" ToolTip="edit" OnClick="btnedit_Click" Font-Bold="True" />
            </td>
            <td class="auto-style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Text="Update" BackColor="LightGreen" ForeColor="Navy" Width="140px" Height="30px" style="border-radius:15px;" ToolTip="update" OnClick="btnupdate_Click" Font-Bold="True" />
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

