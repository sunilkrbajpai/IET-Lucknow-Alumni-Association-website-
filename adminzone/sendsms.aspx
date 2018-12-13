<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="sendsms.aspx.cs" Inherits="adminzone_sendsms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #dvsms
        {
            width: 82%;
            margin:0px auto;
           
        }
            #dvsms input[type='text'], textarea
            {
                border-radius:35px 0px;
                padding-left:30px;
                padding-right:30px;
                color:#a9e417;
                font-weight:bold;
                font-size:22px;
                resize:none;
                text-align:center;
            }

        .auto-style1
        {
            height:415px;
             background:linear-gradient(skyblue,aqua,white);
                         border-radius: 20px;
                          padding: 15px 10%;
           
            color: orangered;
            font-size:large;

        }
        .auto-style2
        {
            height: 49px;
            width: 62px;
        }
        .auto-style3
        {
            height: 43px;
            width: 62px;
        }
        .btn
        {
            background-color:navy;
            color:white;
            font-size:large;
            border-radius:30px;
            height:45px;

        }
        .auto-style4
        {
            width: 458px;
            text-align: left;
        }
        .auto-style5
        {
            height: 49px;
            width: 458px;
        }
        .auto-style6
        {
            height: 43px;
            width: 458px;
        }
        .auto-style10
        {
            width: 62px;
            font-weight: 700;
            font-size: x-large;
        }
        .auto-style11
        {
            width: 438px;
            text-align: center;
        }
        .auto-style12
        {
            height: 49px;
            width: 438px;
        }
        .auto-style13
        {
            height: 43px;
            width: 438px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server"><h1>Send SMS</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">
    <br />  <div id="dvsms">

        <table cellpadding="4" class="auto-style1">
            <tr>
                <td class="auto-style10">Send To:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtto" runat="server" Height="54px" Width="379px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtto" ErrorMessage="Type Numbers Here.." Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style12"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style10">Message:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" Width="379px" Height="96px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmsg" ErrorMessage="Type Message Here.." Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style13"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button CssClass="btn" ID="btnsend" runat="server" Height="45px" Text="Send" Width="161px" OnClick="btnsend_Click" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

