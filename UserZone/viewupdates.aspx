<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/userzone.master" AutoEventWireup="true" CodeFile="viewupdates.aspx.cs" Inherits="UserZone_viewupdates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Updates</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">Updates
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphmain" Runat="Server">
   <div style="margin:0px auto;"> <br /><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="givenby" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="givenby" HeaderText="Given By" ReadOnly="True" SortExpression="givenby" />
            <asp:BoundField DataField="news" HeaderText="News" SortExpression="news" />
            <asp:BoundField DataField="suggestion" HeaderText="Suggestion" SortExpression="suggestion" />
            <asp:BoundField DataField="postdt" HeaderText="DATE" SortExpression="postdt" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" BorderStyle="Dotted" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView></div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [news] ORDER BY [postdt] DESC"></asp:SqlDataSource>
</asp:Content>

