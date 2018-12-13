<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/userzone.master" AutoEventWireup="true" CodeFile="Newsupdates.aspx.cs" Inherits="UserZone_Newsupdates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><title>News & Updates</title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
            margin:0px auto ;
        }
        .auto-style2
        {
            width: 300px;
        }
        .auto-style3
        {
            width: 193px;
            font-size: x-large;
            font-weight: bold;
            color: #6666FF;
        }
        .btn
        {
            border-radius:30px;
    
            font-size:large;

        }
        table
        {
            padding-top:40px;
        }
        textarea
        {
                 resize:none;
                 border-radius:25px;
                 text-align:center;
                 font-size: large;
                  font-weight: bold;
                 padding:6%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">News & Updates
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphmain" Runat="Server">

    <table cellpadding="2" class="auto-style1">
        <tr>
            <td class="auto-style3">NEWS:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtnews" runat="server" Height="52px" TextMode="MultiLine" ToolTip="news" Width="429px"></asp:TextBox>
            </td>
            <td style="text-align: center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="txtnews" ErrorMessage="Type Any News" ForeColor="Red" style="font-weight: 700; text-align: center"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Your Suggestion:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtsuggestion" runat="server" Height="135px" TextMode="MultiLine" ToolTip="suggestion" Width="430px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2" style="text-align: center">
                <asp:Button ID="btnpost" CssClass="btn" runat="server" Height="45px"  Text="POST" Width="165px" BackColor="SkyBlue" Font-Size="Large" ForeColor="Red" OnClick="btnpost_Click" ToolTip="Post" />
            </td>
            <td>
                <asp:Button ID="btnview"  CssClass="btn" runat="server" BackColor="#FF66FF" Font-Size="Large" ForeColor="White" Height="37px" Text="View Updates" ToolTip="updates" Width="223px" OnClick="btnview_Click" CausesValidation="False" />
            </td>
        </tr>
    </table>

</asp:Content>

