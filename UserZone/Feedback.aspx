<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/userzone.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="UserZone_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Feedback</title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
margin:0px auto ;        }
        .auto-style2
        {
            width: 376px;
        }
        .auto-style3
        {
            width: 323px;
        }
        .auto-style4
        {
            width: 376px;
            height: 36px;
        }
        .auto-style5
        {
            width: 323px;
            height: 36px;
        }
        .auto-style6
        {
            height: 36px;
            width: 464px;
        }
        .auto-style7
        {
            width: 464px;
        }
        .auto-style8
        {
            width: 376px;
            font-weight: bold;
            font-size: large;
            color: #CC66FF;
            text-align: center;
        }
        #tbl tr
        {
            padding:10px;
            text-align:center;
            height:60px;
        }
        textarea
        {
            resize:none;
            text-align:center;
            padding:10px;
             font-size: large;
        font-weight: bold;
         border-radius:15px;
        }
        input
        {
            text-align:center;
            padding:10px;
             font-size: large;
        font-weight: bold;
        border-radius:15px;
        }
        .btn
        {
            border-radius:30px;
            color:white;
            background-color:green;
            text-shadow:2px 2px 1px black;
            font-size:large;
        }
        #tbl
        {
            margin-top :20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">Give Your Feedback
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphmain" Runat="Server">
    <table id="tbl" class="auto-style1">
        <tr>
            <td class="auto-style8">Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtname" runat="server" Height="30px"  Width="275px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter your Name.." Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Email ID:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="275px" TextMode="Email"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email id.." Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Contact Number:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtcon" runat="server" Height="30px" Width="275px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcon" ErrorMessage="Enter Contact number.." Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Give Feedback:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtfeed" runat="server" Height="160px" TextMode="MultiLine" Width="267px" ></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtfeed" ErrorMessage="Please Give your valuable Feedback.." Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:Button class="btn" ID="btnsubmit" runat="server" Height="50px" Text="Submit" Width="104px" OnClick="btnsubmit_Click" />
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

