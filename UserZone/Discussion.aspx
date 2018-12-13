<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/userzone.master" AutoEventWireup="true" CodeFile="Discussion.aspx.cs" Inherits="UserZone_Discussion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Discussion</title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
            margin:0px auto;
        }
        table
        {
            padding-top:40px;
            
        }
        textarea
        {
        resize:none;
        border-radius:25px;
        padding:20px;
        text-align:center;
         font-size: large;
        font-weight: bold;
        }
        .btn
        {
            border-radius:25px;
            color:green;
            background-color:yellow;
            font-size:large;
        }
        
        .auto-style2
        {
            height: 35px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">Discussion Board
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphmain" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="text-align: center">
                <asp:TextBox ID="txtquestion" runat="server" Height="71px" placeholder="Type Question Here..." TextMode="MultiLine" ToolTip="Type question here.." Width="735px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="txtquestion" ErrorMessage="Please Type Question Here..." ForeColor="Red" style="font-weight: 700; font-size: medium; text-align: center"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="Button1" runat="server" Height="45px" Text="Post" CssClass="btn" Width="149px" Font-Size="Large" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical" Width="100%" DataKeyNames="qid" AllowSorting="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="qid" HeaderText="Ques. No." InsertVisible="False" ReadOnly="True" SortExpression="qid" />
            <asp:BoundField DataField="ques" HeaderText="Question" SortExpression="ques" />
            <asp:BoundField DataField="askby" HeaderText="Ask By" SortExpression="askby" />
            <asp:BoundField DataField="qdt" HeaderText="DATE" SortExpression="qdt" />
            <asp:HyperLinkField DataNavigateUrlFields="qid" DataNavigateUrlFormatString="Postanswer.aspx?qid={0}" HeaderText="Post answer" Text="Click Here..." />
            <asp:HyperLinkField DataNavigateUrlFields="qid" DataNavigateUrlFormatString="viewanswer.aspx?qid={0}" HeaderText="View Answer" Text="Click here..." />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [question]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [question]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [question], [askby], [qdt] FROM [question]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

</asp:Content>

