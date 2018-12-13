<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="feedbackmanagemant.aspx.cs" Inherits="adminzone_feedbackmanagemant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server"><h1>Feedback Management</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server"><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="feedId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="feedId" HeaderText="Feedback Id" InsertVisible="False" ReadOnly="True" SortExpression="feedId" />
            <asp:BoundField DataField="uname" HeaderText="User Name" SortExpression="uname" />
            <asp:BoundField DataField="emailid" HeaderText="Email id" SortExpression="emailid" />
            <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
            <asp:BoundField DataField="feedbacktext" HeaderText="Feedback" SortExpression="feedbacktext" />
            <asp:BoundField DataField="feedbackdt" HeaderText="Date time" SortExpression="feedbackdt" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [feedback] WHERE [feedId] = ?" InsertCommand="INSERT INTO [feedback] ([feedId], [uname], [emailid], [contact], [feedbacktext], [feedbackdt]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [feedback]" UpdateCommand="UPDATE [feedback] SET [uname] = ?, [emailid] = ?, [contact] = ?, [feedbacktext] = ?, [feedbackdt] = ? WHERE [feedId] = ?">
        <DeleteParameters>
            <asp:Parameter Name="feedId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="feedId" Type="Int32" />
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="feedbacktext" Type="String" />
            <asp:Parameter Name="feedbackdt" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="feedbacktext" Type="String" />
            <asp:Parameter Name="feedbackdt" Type="String" />
            <asp:Parameter Name="feedId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

