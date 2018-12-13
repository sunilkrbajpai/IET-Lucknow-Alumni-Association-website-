<%@ Page Title="" Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/registrationstyle.css" rel="stylesheet" type="text/css" />
         <style type="text/css">
        .auto-style1
        {
            text-decoration: underline;
            color: #f80808;
            font-size: medium;
            text-align: left;
        }
        .auto-style4
        {
            width: 866px;
            height: 301px;
            margin-top: 0px;
           
        }
        .auto-style5
        {
            text-decoration: underline;
            color: #FF00FF;
        }
        .auto-style7
        {
            text-decoration: underline;
            font-size: xx-large;
        }
        .auto-style9
        {
            color: #000000;
            width: 115px;
            height: 32px;
            font-weight: normal;
            font-style: normal;
        }
        .auto-style11
        {
            color: #000000;
            width: 115px;
            height: 31px;
        }
        .auto-style14
        {
            height: 29px;
        }
        .auto-style23
        {
            text-decoration: underline;
            color: red;
            font-size: medium;
        
        }
        .auto-style24
        {
            font-size: medium;
            text-decoration: underline;
        }
        .auto-style25
        {
            color: #FF00FF;
            font-size: xx-large;
        }
        .auto-style26
        {
            text-decoration: underline;
        }
        .auto-style36
        {
            height: 29px;
            width: 115px;
        }
        .auto-style58
        {
            color: #000000;
            width: 115px;
            height: 16px;
            font-weight: normal;
            font-style: normal;
        }
        .auto-style62
        {
            height: 16px;
            width: 165px;
        }
        .auto-style70
        {
            height: 28px;
            font-size: small;
        }
        .auto-style75
        {
            height: 16px;
            width: 124px;
        }
        .auto-style78
        {
            height: 29px;
            width: 124px;
        }
        .auto-style90
        {
            height: 16px;
            width: 160px;
        }
        .auto-style92
        {
            height: 29px;
            width: 160px;
        }
        .auto-style95
        {
            height: 29px;
            width: 165px;
        }
        .auto-style96
        {
            height: 32px;
            width: 160px;
        }
        .auto-style98
        {
            height: 32px;
            width: 165px;
        }
        .auto-style99
        {
            height: 32px;
            width: 124px;
        }
        .auto-style104
        {
            height: 31px;
            width: 160px;
        }
        .auto-style106
        {
            height: 31px;
            width: 165px;
        }
        .auto-style107
        {
            height: 31px;
            width: 124px;
        }
        .auto-style115
        {
            height: 23px;
            text-align: center;
            font-size: small;
            width: 115px;
        }
        .auto-style116
        {
            height: 23px;
            width: 160px;
        }
        .auto-style117
        {
            height: 23px;
            width: 169px;
        }
        .auto-style118
        {
            height: 23px;
        }
        .auto-style135
        {
        }
        .auto-style142
        {
            height: 28px;
            text-align: center;
            font-size: small;
            width: 115px;
        }
        .auto-style143
        {
            height: 28px;
            width: 160px;
        }
        .auto-style144
        {
            height: 28px;
            width: 169px;
        }
        .auto-style147
        {
            height: 28px;
            font-size: small;
            width: 122px;
        }
        .auto-style148
        {
            height: 23px;
            width: 122px;
        }
        .auto-style153
        {
            height: 29px;
            width: 169px;
        }
        .auto-style154
        {
            height: 32px;
            width: 169px;
        }
        .auto-style155
        {
            height: 16px;
            width: 169px;
        }
        .auto-style156
        {
            height: 31px;
            width: 169px;
        }
        .auto-style157
        {
            height: 32px;
            width: 122px;
        }
        .auto-style158
        {
            height: 16px;
            width: 122px;
        }
        .auto-style159
        {
            height: 31px;
            width: 122px;
        }
        .auto-style160
        {
            height: 29px;
            width: 122px;
        }
        .auto-style163 {
            text-decoration: underline;
            color: #f80808;
            font-size: xx-large;
        }
        .auto-style164 {
            height: 36px;
            text-align: center;
            font-size: small;
            width: 115px;
        }
        .auto-style165 {
            height: 1px;
            text-align: center;
            font-size: small;
            width: 115px;
        }
        .auto-style167 {
            height: 1px;
            width: 169px;
        }
        .auto-style168 {
            height: 1px;
        }
        .auto-style169 {
            height: 36px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphmain" Runat="Server">
    <div id="box">
        &nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1"><strong><em style="font-size: x-large">&nbsp;</em></span><span class="auto-style163"><em>REGISTRATION FORM</em></span><em style="font-size: x-large">
          <br />
           
       </em>
       <span class="auto-style25">
       <table cellspacing="0" class="auto-style4" style="background-image: url('images/gr.jpg')">
           <tr>
               <td class="auto-style14" colspan="3" style="font-size: 16pt"><span class="auto-style23">PERSONAL PROFILE</span></td>
           </span> 
               <td colspan="3" style="font-size: 16pt" class="auto-style14"><span class="auto-style23">EDUCATIONAL PROFILE</td>
           </tr>
           </span> </strong>
           <span class="auto-style7">
           <tr>
               <td class="auto-style9" style="font-size: medium;font-family:'Times New Roman', Times, serif;"><strong><em>Name:</em></strong></td>
               </span> <strong> <span class="auto-style1">
               <td class="auto-style96">
                   <asp:TextBox ID="txtname" runat="server" Width="150px"></asp:TextBox>
               </td>
               <td class="auto-style154">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" Font-Size="Small" ForeColor="Red" style="text-decoration: underline" ControlToValidate="txtname"></asp:RequiredFieldValidator>
               </td>
               <td class="auto-style157" style="font-size: medium; font-weight: bold; font-style: italic; color: black">Qualification:</td>
               <td class="auto-style98"><strong> <span class="auto-style1">
                   <asp:TextBox ID="txtqual" runat="server" Width="150px"></asp:TextBox>
           </span> </strong>
               </td>
               <td class="auto-style99"> <strong> <span class="auto-style1">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter Qualification" Font-Size="Small" ForeColor="Red" ControlToValidate="txtqual"></asp:RequiredFieldValidator>
       </span></strong>
               </td>
           </tr>
           <span class="auto-style7">
           <tr>
               <td class="auto-style58" style="font-size: medium"><strong><em>Gender:</em></strong></td>
               </span>
               <td class="auto-style90">
                   <asp:RadioButton ID="rdbmale" runat="server" GroupName="gender" Text="Male" ToolTip="male" style="font-size: small; color: #FF6600" CausesValidation="True" />
                   <asp:RadioButton ID="rdbfemale" runat="server" GroupName="gender" Text="Female" ToolTip="female" style="font-size: small; color: #FF6600" CausesValidation="True" />
               </td>
               <td class="auto-style155">
                   </td>
               <td class="auto-style158" style="font-size: medium; font-weight: bold; font-style: italic; color: black">College name:</td>
               <td class="auto-style62"><strong> <span class="auto-style1">
                   <asp:TextBox ID="txtcollege" runat="server" Width="150px"></asp:TextBox>
           </span> </strong>
               </td>
               <td class="auto-style75"> <strong> <span class="auto-style1">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter College name" Font-Size="Small" ForeColor="Red" ControlToValidate="txtcollege"></asp:RequiredFieldValidator>
       </span></strong>
               </td>
           </tr>
           </span> <span class="auto-style5">
           <tr>
               <td class="auto-style11" style="font-size: medium; font-weight: bold; font-style: italic; color: black">Contact number:</td>
               </span> <span class="auto-style1">
               <td class="auto-style104"><strong> <span class="auto-style1">
                   <asp:TextBox ID="txtcontact" runat="server" Width="150px"  TextMode="Number"></asp:TextBox>
                   </span></strong></td>
               <td class="auto-style156"> <strong> <span class="auto-style1">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Any contact" Font-Size="Small" ForeColor="Red" ControlToValidate="txtcontact"></asp:RequiredFieldValidator>
           </span> </strong>
               </td>
               <td class="auto-style159" style="font-size: medium; font-weight: bold; font-style: italic; color: black">Passing Year:</td>
               <td class="auto-style106">
                   <asp:DropDownList ID="ddlyear" runat="server" Height="19px" Width="150px">
                       <asp:ListItem Selected="True">-- Select Year --</asp:ListItem>
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
               </td>
               <td class="auto-style107">
                   <strong> <span class="auto-style1">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Passing Year" Font-Size="Small" ForeColor="Red" ControlToValidate="ddlyear" InitialValue="-- Select Year --"></asp:RequiredFieldValidator>
       </span></strong>
               </td>
           </tr>
           <span class="auto-style5">
           <tr>
               <td class="auto-style36" style="font-size: medium; font-weight: bold; font-style: italic; color: black">Email id:</td>
               </span>
               <td class="auto-style92"><strong> <span class="auto-style1">
                   <asp:TextBox ID="txtemail" runat="server" Width="150px" TextMode="Email"></asp:TextBox>
                   </span></strong></td>
               <td class="auto-style153"> <strong> <span class="auto-style1">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Email ID" Font-Size="Small" ForeColor="Red" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
           </span> </strong>
               </td>
               <td class="auto-style160" style="font-size: medium; font-weight: bold; font-style: italic; color: black">Current job:</td>
               <td class="auto-style95"><strong> <span class="auto-style1">
                   <asp:TextBox ID="txtcurrjob" runat="server"  Width="150px"></asp:TextBox>
           </span> </strong>
               </td>
               <td class="auto-style78"> <strong> <span class="auto-style1">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Enter your job!" Font-Size="Small" ForeColor="Red" ControlToValidate="txtcurrjob"></asp:RequiredFieldValidator>
       </span></strong>
               </td>
           </tr>
           <span class="auto-style5">
           <tr>
               <td class="auto-style142" style="font-size: medium; font-weight: bold; font-style: italic; color: black">Address:</td>
               </span>
               <td class="auto-style143"><strong> <span class="auto-style1">
                   <asp:TextBox ID="txtaddress" runat="server" Width="150px" TextMode="MultiLine"></asp:TextBox>
                   </span></strong></td>
               <td class="auto-style144"> <strong> <span class="auto-style1">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Your Address" Font-Size="Small" ForeColor="Red" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
       </span></strong>
               </td>
               <td class="auto-style147" style="font-size: medium; font-weight: bold; font-style: italic; color: black"></td>
               <td class="auto-style70" colspan="2">
                   <strong> <span class="auto-style1">
                   <asp:Label ID="lblcaptcha" runat="server" Height="33px" Width="98px" style="font-size: x-large; margin-left: 0px"  ForeColor="#6600CC" BorderColor="Black" BorderStyle="Dotted" BorderWidth="2px" Font-Bold="True" Font-Italic="True" Font-Size="Large" Font-Strikeout="True" Font-Underline="True" Background-image="~/images/back.jpg" ToolTip="captcha" BackColor="#FFFF66"></asp:Label>
                   &nbsp;
                   <asp:ImageButton ID="imgrefresh" runat="server" Height="25px" ImageUrl="~/images/43-128.png" OnClick="imgrefresh_Click" ToolTip="refresh" Width="45px" style="margin-left: 10px; margin-top: 0px;" />
       </span></strong>
                   <br />
               </td>
           </tr>
           <tr>
               <td class="auto-style115" style="font-size: medium; font-weight: bold; font-style: italic; color: black">Password:</td>
               <td class="auto-style116">
                   <asp:TextBox ID="txtpass" runat="server"  Width="150px" TextMode="Password"></asp:TextBox>
               </td>
               <td class="auto-style117">
                   <strong> <span class="auto-style1">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter password" Font-Size="Small" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
       </span></strong>
               </td>
               <td class="auto-style148"> <strong> <span style="color:black;font-size:medium;">
                   Enter Captcha:</span></strong></td>
               <td class="auto-style118" colspan="2">
                   <strong> <span class="auto-style1">
                   <asp:TextBox ID="txtcaptcha" runat="server"  Width="150px" BackColor="#66FF33" Height="19px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Captcha is Necessary" Font-Size="Small" ForeColor="Red" ControlToValidate="txtcaptcha"></asp:RequiredFieldValidator>
       </span></strong>
               </td>
           </tr>
           <tr>
               <td class="auto-style165" style="font-size: medium; font-weight: bold; font-style: italic; color: black">Confirm password:</td>
               <td class="auto-style168">
                   <asp:TextBox ID="txtconpass" runat="server"  Width="150px" TextMode="Password" Height="20px"></asp:TextBox>
               </td>
               <td class="auto-style167">
                   <strong> <span class="auto-style1" style="font-size: small;padding:0px;">
                   <asp:RequiredFieldValidator ID="rfv" runat="server" ErrorMessage="Enter Password again" Font-Size="Small" ForeColor="Red" ControlToValidate="txtconpass" Height="10px" Width="129px" style="text-decoration: underline; "></asp:RequiredFieldValidator>
                   <br />
       </span>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtconpass" ErrorMessage="Password must be same!" Font-Size="9pt" style="text-decoration: underline; color: #FF0000; font-size: 10pt;" Height="10px"></asp:CompareValidator>
                   </strong>
               </td>
               <td class="auto-style135" style="font-size: medium; font-weight: bold; font-style: italic;text-align:center;" color: black" colspan="3" rowspan="2"> <strong> <span class="auto-style1">
                   <span class="auto-style1" style="font-size: small">
                   <asp:ImageButton ID="imgregister" runat="server" Height="37px" ImageAlign="Left" ImageUrl="~/images/Register-Now-Button-300x109.jpg" OnClick="imgregister_Click" style="text-align: right; margin-top: 30px; font-size: medium; margin-left: 91px;" ToolTip="Register" Width="177px" />
       </span>
       </span></strong>
               </td>
           </tr>
           <tr>
               <td class="auto-style164" style="font-size: medium; font-weight: bold; font-style: italic; color: black">Profile Pic:</td>
               <td class="auto-style169" colspan="2">
                   <strong> <span class="auto-style1">
                   <asp:FileUpload ID="profilepic" runat="server" Width="157px" BackColor="Gray" Height="18px" />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Please select any profile pic" Font-Size="Small" ForeColor="Red" ControlToValidate="profilepic"></asp:RequiredFieldValidator>
       </span></strong>
               </td>
           </tr>
           </table>
       </span></strong>
   </div>
</asp:Content>

