<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="adminzone_Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">
<h1>Donation</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">
  <br />  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="alumniid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical"  Width="100%" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="alumniid" HeaderText="Alumni id" InsertVisible="False" ReadOnly="True" SortExpression="alumniid" />
            <asp:BoundField DataField="alname" HeaderText="Name" SortExpression="alname" />
            <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
            <asp:BoundField DataField="emailid" HeaderText="Email id" SortExpression="emailid" />
            <asp:BoundField DataField="passyear" HeaderText="Passing year" SortExpression="passyear" />
            <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose" />
            <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
            <asp:BoundField DataField="ddnumber" HeaderText="DD number" SortExpression="ddnumber" />
            <asp:BoundField DataField="bankname" HeaderText="Bank name" SortExpression="bankname" />
            <asp:BoundField DataField="donatedt" HeaderText="Date time" SortExpression="donatedt" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [donation]"></asp:SqlDataSource>
</asp:Content>

