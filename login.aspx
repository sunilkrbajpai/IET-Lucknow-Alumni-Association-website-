<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    
    <link href="css/loginStyle.css" rel="stylesheet" type="text/css" />
        <link rel="Shortcut icon" href="images/slid/logo.jpg" />
     <script src="jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#back').on({
                mouseover: function () {
                    $(this).animate({
                        'height': 50,
                        'width': 60
                    }, 150);
                },
                mouseout: function () {
                    $(this).animate({
                        'height': 40,
                        'width': 50
                    }, 150);
                }
            });
        });
       </script>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
            height: 143px;
        }
        .auto-style3
        {
            color: #FF00FF;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style4
        {
            width: 291px;
            height: 104px;
        }
        .auto-style8
        {
            width: 291px;
            height: 54px;
            }
        .auto-style10
        {
            height: 54px;
            width: 362px;
        }
        .auto-style11
        {
            font-size: 35pt;
            text-decoration:underline;
            text-align:center;
        }
        .btn
        {
            border-radius:30px;

        }
        .auto-style13 {
            width: 291px;
        }
        .auto-style14 {
            width: 362px;
        }
        .auto-style15 {
            height: 104px;
            width: 362px;
            font-size:large;
            font-weight:bold;
            text-align: left;
        }
        .auto-style16 {
            width: 291px;
            }
        .auto-style17 {
            width: 304px;
        }
        .auto-style18 {
            height: 54px;
            width: 304px;
        }
        .auto-style19 {
            height: 104px;
            width: 304px;
        }
        .auto-style23 {
            width: 291px;
            height: 54px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="out">
    <table class="auto-style1">
        <tr>
            <td class="auto-style13"><div id="logo" style="padding:5px 5px 5px 5px;"><img src="images/slid/logo.jpg" width="130px" height="130px" style="border-radius:50px;"/></div></td>
       <td class="auto-style17"> <div id="title" style="text-align: center">
            <span style="color:black;" class="auto-style11">IET Alumni Association</span>
        </div></td>
       </tr> 
            <tr>
                <td class="auto-style23" style="font-weight: 700; font-style: italic; color: #FF00FF; font-size: xx-large; "><a href="Default.aspx">
                    <input id="back" style="color:white;background-color:blueviolet;border-radius:24px;font-size:large;font-weight:bold; width: 50px; height: 40px;" type="button" value="<<" /></a>&nbsp;</td>
                <td class="auto-style18" style="text-align:center;">
                    &nbsp;</td>
                <td class="auto-style10"> &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" style="font-weight: 700; font-style: italic; color: #FF00FF; font-size: xx-large; text-align: right;">Email ID:&nbsp; </td>
                <td class="auto-style18" style="text-align:center;">
                    <asp:TextBox ID="txtuid" runat="server" Height="35px" Width="540px" TextMode="Email" style="text-align: center;padding:3px 3px;"></asp:TextBox>
                </td>
                <td class="auto-style10"> <strong> <span class="auto-style1">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Email id to login!" Font-Size="Small" ForeColor="Red" style="font-size: large; text-align: left;" ControlToValidate="txtuid"></asp:RequiredFieldValidator>
       </span></strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-weight: 700; font-style: italic; color: #6600FF; text-align: right;"><span class="auto-style3">Password:</span>&nbsp; </td>
                <td class="auto-style17" style="text-align:center;">
                    <asp:TextBox ID="txtpass" runat="server" Height="35px" Width="540px" TextMode="Password" style="text-align:center;"></asp:TextBox>
                </td>
                <td class="auto-style14"> <strong> <span class="auto-style1">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Password to login!" Font-Size="Small" ForeColor="Red" ControlToValidate="txtpass" style="font-size: large"></asp:RequiredFieldValidator>
       </span></strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style19" style="text-align:center;">
                    <asp:Button ID="Button1" class="btn" runat="server" BackColor="DarkGreen" BorderStyle="Outset" Font-Size="Large" Height="54px" Text="Login.." Width="144px" OnClick="Button1_Click" ForeColor="White" />
                </td>
                <td class="auto-style15"><a href="forgetpassword.aspx">Forgot Password ?</a></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
