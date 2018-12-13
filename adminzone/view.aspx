<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="adminzone_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server"><h1>Answers</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">
    <br /> <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="aid" DataSourceID="SqlDataSource1" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="aid" HeaderText="Answer id" InsertVisible="False" ReadOnly="True" SortExpression="aid" />
            <asp:BoundField DataField="qid" HeaderText="Questionid" SortExpression="qid" />
            <asp:BoundField DataField="answer" HeaderText="Answer" SortExpression="answer" />
            <asp:BoundField DataField="givenby" HeaderText="Given by" SortExpression="givenby" />
            <asp:BoundField DataField="adt" HeaderText="Date time" SortExpression="adt" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BorderColor="Lavender" Font-Bold="True" Font-Underline="True" HorizontalAlign="Left" BackColor="#507CD1" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [answers] ORDER BY [adt] DESC"></asp:SqlDataSource>
</asp:Content>

