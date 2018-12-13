<%@ Page Title="" Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style>
        #box {
        width:100%;height:100%;
        background-color:yellowgreen;
        border-radius:25px;
        border:2px dotted red;
        }
       
        .auto-style1 {
            width: 439px;
            text-align: left;
        }
        .auto-style2 {
            width: 204px;
            text-align: right;
            color:navy;
            font-family:Castellar;
            font-size:15px;
            font-weight:bold;
        }
        .input {
        padding-left:10px;
        padding-right:10px;
        font-family:Elephant ;
        }
        .auto-style3 {
            width: 204px;
            text-align: right;
            color: navy;
            font-family: Castellar;
            font-size: 15px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphmain" Runat="Server">
    <div id="box">
        <h1 style="color:firebrick;">...More Details...</h1>
        <h3 style="color:blue;">Remember these fields for password recovery</h3>
        
        
        <table style="width:100%;height:70%;">
            <tr>
                <td class="auto-style2"> Email ID:-&nbsp;</td>
               
                <td class="auto-style1">
                <asp:TextBox ID="txtemail" placeholder="Type Email-ID again.." runat="server" Width="350px" Height ="30px" CssClass="input" TextMode="Email"></asp:TextBox>&nbsp;</td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Type Correct Email ID" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please type email ID" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">Date Of Birth:-&nbsp;</td>
                
                <td class="auto-style1">
                <asp:TextBox ID="txtdob" placeholder="DD/MM/YYYY" runat="server" Width="350px" Height ="30px" CssClass="input"></asp:TextBox></td>
                
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdob" ErrorMessage="Please give your Date of Birth" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style3">Security Question:-&nbsp;</td>
                
                <td class="auto-style1"> <asp:DropDownList ID="ddlquestion" runat="server" Height="43px" Width="350px" AutoPostBack="True" ValidationGroup="g1">
                       <asp:ListItem>-- Choose Security Question --</asp:ListItem>
                       <asp:ListItem>Your Mother Name</asp:ListItem>
                       <asp:ListItem>Your Pet Name</asp:ListItem>
                       <asp:ListItem>Your favourite Book</asp:ListItem>
                       <asp:ListItem>Your Favourite Movie</asp:ListItem>
                       <asp:ListItem>What was your favourite sports in schooltime ?</asp:ListItem>
                       <asp:ListItem>What is name of your girlfriend ?</asp:ListItem>
                       <asp:ListItem>Name of company where you get your first job ?</asp:ListItem>
                       <asp:ListItem>Name of your Best Friend ?</asp:ListItem>
                   </asp:DropDownList>&nbsp;</td>
                
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlquestion" ErrorMessage="Please choose Security Question" Font-Bold="True" ForeColor="Red" InitialValue="-- Choose Security Question --"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">Security Answer:-&nbsp;</td>
                
                <td class="auto-style1">
                <asp:TextBox ID="txtanswer" placeholder="Answer Here.." runat="server" Width="350px" Height ="30px" CssClass="input"></asp:TextBox></td>
                
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtanswer" ErrorMessage="Type Security Answer" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                
                <td class="auto-style1">
   <asp:ImageButton ID="imgsubmit" OnClick="imgsubmit_Click" runat="server" Height="37px" ImageAlign="Left" ImageUrl="~/images/sub.jpg"  style="border-radius:28px;text-align: right; margin-top: 30px; font-size: medium; margin-left: 90px;" ToolTip="Submit Details" Width="170px" />
&nbsp;</td>
                
                <td>&nbsp;</td>
                
            </tr>
        </table>

    </div>
</asp:Content>

