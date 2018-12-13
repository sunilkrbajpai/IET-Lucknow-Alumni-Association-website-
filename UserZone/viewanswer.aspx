<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/userzone.master" AutoEventWireup="true" CodeFile="viewanswer.aspx.cs" Inherits="UserZone_viewanswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><title>Answers</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">View Answers
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphmain" Runat="Server">
   <div style="margin:0px auto;">&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%" style="margin-top: 10px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="qid" HeaderText="Question No." SortExpression="qid" />
             <asp:BoundField DataField="answer" HeaderText="Answer" SortExpression="answer" />
            <asp:BoundField DataField="givenby" HeaderText="Given by" SortExpression="givenby" />
            <asp:BoundField DataField="adt" HeaderText="Date" SortExpression="adt" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="center" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [answer], [givenby], [adt], [qid] FROM [answers]"></asp:SqlDataSource>

</asp:Content> 

