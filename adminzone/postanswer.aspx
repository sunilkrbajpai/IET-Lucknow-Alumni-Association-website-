<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="postanswer.aspx.cs" Inherits="adminzone_postanswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #tbl
        {
            padding-top:70px;
            margin:0px auto;
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
            color:darkolivegreen;
            background-color:aquamarine;
            font-size:large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server"><h1>Post Answer</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">
     <table id="tbl">
        <tr>
            <td style="text-align: center">
                <asp:TextBox ID="txtanswer" runat="server" Height="71px" placeholder="Type Answer Here..." TextMode="MultiLine" ToolTip="Type answer here.." Width="735px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtanswer" ErrorMessage="Please give your answer..." Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="btnanswer" runat="server" Height="45px" Text="Post" CssClass="btn" Width="149px" Font-Size="Large" OnClick="btnanswer_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

