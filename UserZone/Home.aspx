<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/userzone.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="UserZone_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Home</title>
    <style>
        #tbldash
        {
            width:100%;
            height:100%;
            margin:0px auto;
            padding:15px;
            text-align:center;
        
            
            font-size:40px;
            font-weight:bold;
            border-radius:20px;
            text-decoration:none;

        }
            #tbldash tr td
            {
                width:5%;
                height:150px;
                padding:2%;
                margin:1%;
                background-color:lightslategrey;
                text-align:center;
                text-decoration:none;
                border-radius:50px;
            }
                #tbldash tr td:hover
                {
                    background-color:pink;
                }
        a {
        text-decoration:none;
        color:white;
        }
            a:hover {
            color:blue;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphheading" Runat="Server">
    HOME 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphmain" Runat="Server">
    <table id="tbldash" style="float: right; text-align: center;" >
        <tr>
            <td><a href="Home.aspx">HOME</a></td>
            <td><a href="Discussion.aspx">Discussion<br /> Board</a></td>
            <td><a href="Donateus.aspx">Donate Us</a></td>
        </tr>
        <tr>
            <td><a href="Newsupdates.aspx">News And Updates</a></td>
            <td><a href="Feedback.aspx">Feedback</a></td>
            <td><a href="profile.aspx">My Profile</a></td>
        </tr>
    </table>
</asp:Content>
