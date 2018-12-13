<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="ContactUsManagement.aspx.cs" Inherits="adminzone_ContactUsManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">
    <h1>Contact Us Management</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">
    <br />  <center>
        <asp:GridView ID="gv1" runat="server" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="enquiryid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Left">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="enquiryid" HeaderText="Enquiryid" InsertVisible="False" ReadOnly="True" SortExpression="enquiryid" />
                <asp:BoundField DataField="uname" HeaderText="Uname" SortExpression="uname" />
                <asp:BoundField DataField="mobno" HeaderText="Mobile number" SortExpression="mobno" />
                <asp:BoundField DataField="emailid" HeaderText="Email Id" SortExpression="emailid" />
                <asp:BoundField DataField="msg" HeaderText="Message" SortExpression="msg" />
                <asp:BoundField DataField="enquiryDT" HeaderText="Enquiry DateTime" SortExpression="enquiryDT" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_enquiry] WHERE [enquiryid] = ?" InsertCommand="INSERT INTO [tbl_enquiry] ([enquiryid], [uname], [mobno], [emailid], [msg], [enquiryDT]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_enquiry]" UpdateCommand="UPDATE [tbl_enquiry] SET [uname] = ?, [mobno] = ?, [emailid] = ?, [msg] = ?, [enquiryDT] = ? WHERE [enquiryid] = ?">
            <DeleteParameters>
                <asp:Parameter Name="enquiryid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="enquiryid" Type="Int32" />
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="mobno" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="msg" Type="String" />
                <asp:Parameter Name="enquiryDT" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="mobno" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="msg" Type="String" />
                <asp:Parameter Name="enquiryDT" Type="String" />
                <asp:Parameter Name="enquiryid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

