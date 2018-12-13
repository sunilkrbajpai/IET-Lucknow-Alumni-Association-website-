<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="loginInfo.aspx.cs" Inherits="adminzone_loginInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server"><h1>User's Login Information</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">
   <br /> <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="userid" DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Left" Width="100%">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="userid" HeaderText="User id" ReadOnly="True" SortExpression="userid" />
            <asp:CheckBoxField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:BoundField DataField="lcount" HeaderText="Login count" SortExpression="lcount" />
            <asp:BoundField DataField="logintime" HeaderText="Login Time" SortExpression="logintime" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Left" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_login] WHERE (([userid] = ?) OR ([userid] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tbl_login] ([userid], [status], [lcount], [logintime]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [userid], [status], [lcount], [logintime] FROM [tbl_login]" UpdateCommand="UPDATE [tbl_login] SET [status] = ?, [lcount] = ?, [logintime] = ? WHERE (([userid] = ?) OR ([userid] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="userid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="lcount" Type="String" />
            <asp:Parameter Name="logintime" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="lcount" Type="String" />
            <asp:Parameter Name="logintime" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

