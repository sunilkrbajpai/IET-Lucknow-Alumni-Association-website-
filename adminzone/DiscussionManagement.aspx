<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="DiscussionManagement.aspx.cs" Inherits="adminzone_DiscussionManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">
    <h1>Discussion Management</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="qid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="qid" HeaderText="Question No." InsertVisible="False" ReadOnly="True" SortExpression="qid" />
            <asp:BoundField DataField="ques" HeaderText="Question" SortExpression="ques" />
            <asp:BoundField DataField="askby" HeaderText="Ask By" SortExpression="askby" />
            <asp:BoundField DataField="qdt" HeaderText="Date time" SortExpression="qdt" />
            <asp:HyperLinkField DataNavigateUrlFields="qid" DataNavigateUrlFormatString="postanswer.aspx?qid={0}" HeaderText="Post answer" Text="Click Here.." />
            <asp:HyperLinkField DataNavigateUrlFields="qid" DataNavigateUrlFormatString="view.aspx?qid={0}" HeaderText="View Answers" Text="Click Here..." />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [question] WHERE [qid] = ?" InsertCommand="INSERT INTO [question] ([qid], [ques], [askby], [qdt]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [question] ORDER BY [qid] DESC" UpdateCommand="UPDATE [question] SET [ques] = ?, [askby] = ?, [qdt] = ? WHERE [qid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="qid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="qid" Type="Int32" />
            <asp:Parameter Name="ques" Type="String" />
            <asp:Parameter Name="askby" Type="String" />
            <asp:Parameter Name="qdt" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ques" Type="String" />
            <asp:Parameter Name="askby" Type="String" />
            <asp:Parameter Name="qdt" Type="String" />
            <asp:Parameter Name="qid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

