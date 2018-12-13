<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="Notification.aspx.cs" Inherits="adminzone_Notification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .txt
        {
            width:500px;
            height:150px;
            margin:0px auto;
            text-align:center;
            font-size:large;
            font-family:Verdana;
           resize:none;
           padding:5px 15px;
        }
        .n
        {
            width:70%;
            padding-top :30px;
            font-size:x-large;
            color:red;
            background-image:radial-gradient(aqua,white);
            height:400px;
            font-family:Algerian;
            font-weight:bolder;
        }
        .btn
        {
            width:100px;
            height:50px;
            color:white;
            background-color:green;
            font-size:large;
            font-weight:bold;
            border-radius:25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">
    <h1> Notification Message</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">
    <center>
        <br />
        <br /><div id="n" class="n" runat="server">
        Notification Message: &nbsp;&nbsp;<asp:TextBox CssClass="txt" ID="txtnotification" runat="server" TextMode="MultiLine" ></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnotification" ErrorMessage="Enter New Notification.." Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
        <asp:Button ID="btnclick" runat="server" Text="Click..." CssClass="btn" OnClick="btnclick_Click"/></div>
    </center>
</asp:Content>

