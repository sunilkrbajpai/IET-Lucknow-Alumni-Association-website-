<%@ Page Title="" Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
       
        #box {
        height:435px;
        width:800px;
        background:white;
        margin:0px auto;
        }
        #box1 {
        height:435px;
        width:800px;
        background:white;
        display:none;
        margin:0px auto;
        }
        .row {
        height:156px;
        width:1000px;
        margin-left:100px;
        }
        .col {
       height:130px;
       width:155px;
       float:left;
      
       border-radius:10px;
       border:5px double navy;
       padding:4px;
       box-shadow:3px 3px 35px black inset;
       -webkit-transition:background 2s,border-radius 2s,border 2s;
             }
        .imgG {
        height:130px;
        width:154px;
        border-radius:20px;
        border:1px solid yellow;
             margin-left: 0px;
         }
        .col:hover {
        background:#07f5bb;
        border-radius:20px;
        border:5px dotted #1eeb54;
        -webkit-transition:background 2s,border-radius 2s,border 2s;
        }
        #lnkNP {
        border-radius:8px;
        border:1px solid black;
        background-color:red;
        color:white;
        position:relative;
        font-weight:bold;
        font-size:large;
        padding:10px;
        height:55px;
        width:200px;
        text-decoration:none;
        left:400px;
        bottom:30px;
        }
        h1 {
        color:black;
        font-family:Algerian;
        text-align:center;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphmain" Runat="Server">
    <div id="out">
    <div id="box">     <h1>Image Gallery</h1>

      <div class="row">
            <div class="col"><img src="images/slid/1.jpg" class="imgG"/></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <div class="col"><img src="images/slid/2.jpg" class="imgG"/></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <div class="col"><img src="images/slid/5.jpg" class="imgG" /></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div><br />
        <div class="row">
             <div class="col"><img src="images/slid/7.jpg" class="imgG"/></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <div class="col"><img src="images/slid/8.jpg" class="imgG"/></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <div class="col"><img src="images/slid/9.jpg" class="imgG"/></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </div>
</asp:Content>

