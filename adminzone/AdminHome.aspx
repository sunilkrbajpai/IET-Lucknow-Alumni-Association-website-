<%@ Page Title="" Language="C#" MasterPageFile="~/adminzone/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="adminzone_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2
        {
            width: 100%;
        }
         #tbldash
        {
            width:90%;
            height:100%;
            margin:0px auto;
            padding:15px;

           
            font-size:40px;
            font-weight:bold;
            border-radius:20px;
            text-decoration:none;

        }
            #tbldash tr td
            {
                width:15%;
                height:180px;
                padding:2%;
                margin:1%;
                background-color:white;
                color:green;
                text-align:center;
                 text-decoration:none;
                border:2px dotted brown ;
                border-radius:50px;
            }
                #tbldash tr td:hover
                {
                    background-color:lemonchiffon;
                    color:white;
                    text-decoration:none;
                }
        a {
        text-decoration:none;

        color:indianred;
        }
            a:hover {

            color:red;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server"><h1>

    HOME</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphcontent" Runat="Server">


  


    <table id="tbldash" class="auto-style2">
        <tr>
            <td><a href="AlumniProfile.aspx"> Alumni Profile</a></td>
            <td><a href="DiscussionManagement.aspx">Discussion Management</a></td>
            <td><a href="ContactUsManagement.aspx">Contact us Management</a></td>
        </tr>
        <tr>
            <td><a href="feedbackmanagemant.aspx">Feedback Management</a></td>
            <td><a href="loginInfo.aspx">Login info</a></td>
            <td><a href="Notification.aspx">Notification</a></td>
        </tr>
        <tr>
            <td><a href="Donation.aspx">Donation</a></td>
            <td><a href="changepass.aspx">Change Password</a></td>
            <td><a href="logout.aspx">Logout</a></td>
        </tr>
    </table>


  


</asp:Content>

