<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/userzone.master" AutoEventWireup="true" CodeFile="Postanswer.aspx.cs" Inherits="UserZone_Postanswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Post Answer</title>
    <style>
        #tbl
        {
            padding-top :70px;
            margin:0px auto ;
        }
         textarea
        {
        resize:none;
        border-radius:25px;
        padding:20px;
        text-align:center;
       font-size:x-large;
        }
        .btn
        {
            border-radius:25px;
            color:green;
            background-color:yellow;
            font-size:large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">Post Your Answer
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphmain" Runat="Server">
     <table id="tbl">
        <tr>
            <td style="text-align: center">
                <asp:TextBox ID="txtanswer" runat="server" Height="71px" placeholder="Type Answer Here..." TextMode="MultiLine" ToolTip="Type answer here.." Width="735px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtanswer" ErrorMessage="Please type your answer here..." ForeColor="Red" ToolTip="Type here.."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: center"><br />
                <asp:Button ID="btnanswer" runat="server" Height="45px" Text="Post" CssClass="btn" Width="149px" Font-Size="Large" OnClick="btnanswer_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

