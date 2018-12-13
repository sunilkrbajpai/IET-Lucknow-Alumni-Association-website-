<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminzone_adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin LOGIN</title>
        <link rel="Shortcut icon" href="../images/slid/logo.jpg" />

    <style>
        #outer
        {
            width:100%;
            height:680px;

        }
        #head
        {
            width:100%;
            height:30%;
       
        }
        #logo
        {
            width:16%;
            height:98%;
            float:left;

        }
        #title
        {
            width:100%;
            height:186px;
                 float:left;
            border-radius:35px;
                  background:linear-gradient(white,lightgreen,lightgreen,white);
        }
        #box
        {
        width:30%;
        height:auto;
        margin:0px auto;
        border-radius:35px;
        text-align:center;
        padding:5% 15%;
        font-size :large ;
        font-weight:bold;
        background-color:beige;
        }
        input
        {
            padding:7px;
            font-family:'Times New Roman';
            font-size:large;
            font-weight:bold;
            margin-bottom:10px;
            border-radius:20px 0px ;
            text-align:center;
        }
        #btnlogin
        {
            border-radius:40px;
            background-color:green;
            color:white;
        }
         .auto-style11
        {
            font-size: 65pt;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
    <div id="outer">
    <div id="head">
        <div id="title" style="text-align: center;padding-top:10px"><br />
            <span style="font-size:40px;font-family:Verdana;">Institute of Engineering & Technology 
Alumni Association <br />
(IETAA) </span><br /><br />
         <span style="font-weight:bold;color:black;font-family :Cambria ;font-size:25px;">(ADMIN PANEL)</span ></span></div>
    </div>
        <div id="box">
           E-Mail: &nbsp;&nbsp;<asp:TextBox ID="txtemail"  TextMode="Email"    runat="server" Width="280px" Height="50px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email Here.." Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
           Password: <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="280px" Height="50px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter Password Here.." Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="btnlogin" BorderStyle="Dotted" Text="LOGIN" runat="server" Width="120px" Height="40px" OnClick="btnlogin_Click"/><br /><br />
        </div>
    </div>
    </form>
</body>
</html>
