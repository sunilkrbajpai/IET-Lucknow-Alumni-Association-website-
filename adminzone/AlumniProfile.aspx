<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="AlumniProfile.aspx.cs" Inherits="adminzone_AlumniProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">
    <h1>Alumni Profile</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">
    <br />
    <center>
        <asp:GridView ID="gv1" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="emailid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Horizontal" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField>
                    <ItemTemplate>
                        Name:<asp:Label ID="lblname" runat="server" Text='<%#Eval("uname") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        Gender:<asp:Label ID="lblgen" runat="server" Text='<%#Eval("gender") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        Contact Number:<asp:Label ID="lblcontact" runat="server" Text='<%#Eval("contactnum") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        Email ID:<asp:Label ID="lblemail" runat="server" Text='<%#Eval("emailid") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        Address:<asp:Label ID="lbladdress" runat="server" Text='<%#Eval("address") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        Qualification:<asp:Label ID="lblqual" runat="server" Text='<%#Eval("qualification") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        College Name:<asp:Label ID="lblcoll" runat="server" Text='<%#Eval("collegename") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        Passing Year:<asp:Label ID="lblpassyear" runat="server" Text='<%#Eval("passyear") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;<br />
                        Current Job:<asp:Label ID="lblcurrjob" runat="server" Text='<%#Eval("currjob") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        Registeration Date:<asp:Label ID="lblregd" runat="server" Text='<%#Eval("regdate") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        Registration Time:<asp:Label ID="lblregt" runat="server" Text='<%#Eval("regtime") %>' ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       Profile Picture:<asp:Image ImageUrl='<%#"~/useruploads/"+Eval("profilepic") %>'  Height="100px" Width="100px" runat="server"  />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_registration] WHERE (([emailid] = ?) OR ([emailid] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tbl_registration] ([uname], [gender], [contactnum], [emailid], [address], [qualification], [passyear], [currjob], [regtime], [regdate], [profilepic], [collegename]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [uname], [gender], [contactnum], [emailid], [address], [qualification], [passyear], [currjob], [regtime], [regdate], [profilepic], [collegename] FROM [tbl_registration]" UpdateCommand="UPDATE [tbl_registration] SET [uname] = ?, [gender] = ?, [contactnum] = ?, [address] = ?, [qualification] = ?, [passyear] = ?, [currjob] = ?, [regtime] = ?, [regdate] = ?, [profilepic] = ?, [collegename] = ? WHERE (([emailid] = ?) OR ([emailid] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="emailid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="contactnum" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="qualification" Type="String" />
                <asp:Parameter Name="passyear" Type="String" />
                <asp:Parameter Name="currjob" Type="String" />
                <asp:Parameter Name="regtime" Type="String" />
                <asp:Parameter Name="regdate" Type="String" />
                <asp:Parameter Name="profilepic" Type="String" />
                <asp:Parameter Name="collegename" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="contactnum" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="qualification" Type="String" />
                <asp:Parameter Name="passyear" Type="String" />
                <asp:Parameter Name="currjob" Type="String" />
                <asp:Parameter Name="regtime" Type="String" />
                <asp:Parameter Name="regdate" Type="String" />
                <asp:Parameter Name="profilepic" Type="String" />
                <asp:Parameter Name="collegename" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

