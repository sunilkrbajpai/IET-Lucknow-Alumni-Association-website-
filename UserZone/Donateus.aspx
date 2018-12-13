<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/userzone.master" AutoEventWireup="true" CodeFile="Donateus.aspx.cs" Inherits="UserZone_Donateus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Donate Us</title>
     <style type="text/css">
        .auto-style1
        {
            width: 100%;
            margin:0px auto ;
        }
        .auto-style2
        {
            width: 270px;
        }
        .auto-style4
        {
            width: 270px;
            height: 42px;
        font-size: large;
        font-weight: bold;
        color: #9900FF;
    }
        .auto-style5
        {
            width: 292px;
            height: 42px;
            text-align: center;
        }
        .auto-style6
        {
            height: 42px;
            text-align: center;
        }
        .btn
        {
            border-radius:30px;
        }
        input
        {
            padding:3%;
            font-size:large;
text-align:center;
            border-radius:25px;
        }
    .auto-style7
    {
            width: 270px;
            font-size: large;
            font-weight: bold;
            color: #9900FF;
        }
        
table
        {
            padding-top:20px;
        }
        .auto-style8
        {
            text-align: center;
        }
        .auto-style9
        {
            width: 292px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">Donate Us
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphmain" Runat="Server">

    <table cellpadding="3" class="auto-style1" style="float: right">
        <tr>
            <td class="auto-style7">Name:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtname" runat="server" Height="29px" Width="237px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Name Field can't be empty" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Email ID:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtemail" runat="server" Height="29px" TextMode="Email" Width="237px" ></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Field can't be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Valid Email" Font-Size="Small" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style7">Contact Number:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtnum" runat="server" Height="29px" Width="237px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnum" ErrorMessage="Please Enter Your Number" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style7">Passing Year:</td>
            <td class="auto-style9">
                <strong> <span class="auto-style1">
                   <asp:DropDownList ID="txtpassyear" runat="server" Height="42px" Width="218px">
                       <asp:ListItem>Select Year</asp:ListItem>
                       <asp:ListItem>2001</asp:ListItem>
                       <asp:ListItem>2002</asp:ListItem>
                       <asp:ListItem>2003</asp:ListItem>
                       <asp:ListItem>2004</asp:ListItem>
                       <asp:ListItem>2005</asp:ListItem>
                       <asp:ListItem>2006</asp:ListItem>
                       <asp:ListItem>2007</asp:ListItem>
                       <asp:ListItem>2008</asp:ListItem>
                       <asp:ListItem>2008</asp:ListItem>
                       <asp:ListItem>2009</asp:ListItem>
                       <asp:ListItem>2010</asp:ListItem>
                       <asp:ListItem>2011</asp:ListItem>
                       <asp:ListItem>2012</asp:ListItem>
                       <asp:ListItem>2013</asp:ListItem>
                       <asp:ListItem>2014</asp:ListItem>
                       <asp:ListItem>2015</asp:ListItem>
                       <asp:ListItem>2016</asp:ListItem>
                   </asp:DropDownList>
       </span></strong>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassyear" ErrorMessage="Enter passing Year" Font-Size="Medium" ForeColor="Red" InitialValue="Select Year"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style7">Donation Amount:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtamount" runat="server" Height="29px" Width="237px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtamount" ErrorMessage="Enter Amount" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style4">Purpose Of Donation:</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlpurpose" runat="server" Height="46px" Width="237px">
                    <asp:ListItem Value="-- Select purpose of donation --">-- Select purpose of donation --</asp:ListItem>
                    <asp:ListItem>Playground</asp:ListItem>
                    <asp:ListItem>Hostel</asp:ListItem>
                    <asp:ListItem>Transportation</asp:ListItem>
                    <asp:ListItem>Canteen</asp:ListItem>
                    <asp:ListItem>Help poor students</asp:ListItem>
                    
                </asp:DropDownList>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlpurpose" ErrorMessage="Select purpose of Donation" Font-Size="Medium" ForeColor="Red" InitialValue="-- Select purpose of donation --"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style7">DD Number:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtddnum" runat="server" Height="29px" Width="237px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtddnum" ErrorMessage="Enter DD Number" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style7">Bank Name:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtbank" runat="server" Height="29px" Width="237px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtbank" ErrorMessage="Enter Full Bank Name" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="btnsubmit" class="btn" runat="server" BackColor="#9900FF" Font-Size="Large" ForeColor="White" Height="40px" Text="Submit" Width="159px" OnClick="btnsubmit_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

