<%@ Page Title="" Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/contactusstyle.css" rel="stylesheet" type="text/css" />
    <script src="jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#lnkenquiry').on({
                mouseover: function () {
                    $(this).animate({
                        'height': 30,
                        'width': 95
                    }, 150);
                },
                mouseout: function () {
                    $(this).animate({
                        'height': 25,
                        'width': 80
                    }, 150);
                }
            });
        }); 
        </script>  <script>
         function enquirypopup() {
             var para = document.getElementById("penquiry");
             var lnk = document.getElementById("lnkenquiry");
             var status = para.style.display;
             if (status != "block") {
                 para.style.display = "block";
                 lnk.style.background = "red";
                 lnk.style.width = "100px";
                 lnk.style.left = "83%";
             }
             else {
                 para.style.display = "none";
                 lnk.style.background = "gray";
                 lnk.style.width = "80px";
                 lnk.style.left = "83%";
             }

         }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphmain" Runat="Server">
    <div id="out">
        <div id="ldiv">
            <h1 style="font-family: 'Vladimir Script';color:red; text-decoration: underline;font-size:35px;">College Address</h1><br />
           <p style="font-size :18px;"> Institute of Engineering and Technology,<br />
            Sitapur Road, Lucknow
            <br />Uttar Pradesh<br />Pin Code : 226021<br />Telephone No. :+91-522-2361692<br />Fax No. : +91-522-2361631<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </p>  </div>
        <div id="rdiv" style="font-family: cursive; font-size: large; font-weight: bolder; font-style: oblique; color: #FF00FF; text-decoration: underline blink">GOOGLE MAP<br /><br />
            <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0Dx_boXQiwvdz8sJHoYeZNVTdoWONYkU&q=place_id:ChIJBY7F3ExWmTkRCWvEHqxgXDo" style="height: 252px; width: 348px; margin-left: 0px; margin-top: 0px;"></iframe></div>
     <a href="#" id="lnkenquiry" onclick="enquirypopup()">Enquiry</a>
    <br /><p id="penquiry">
        <span style="font-size:25px;color:black;font-style:oblique;padding:20px 20px;">Enquiry Form</span><br /><br />
       <asp:TextBox id="txtname" runat="server"  placeholder="Name Here..."></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter your name" Font-Bold="True" Font-Size="small" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        <asp:TextBox id="Txtmob" runat="server" TextMode="Number" placeholder="Mobile number..."></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtmob" ErrorMessage="Enter Mobile no." Font-Bold="True" Font-Size="small" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        <asp:TextBox id="Txtemail" runat="server" TextMode="Email" placeholder="E-Mail..."></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtemail" ErrorMessage="Enter Email ID." Font-Bold="True" Font-Size="small" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        <asp:TextBox id="Txtmessage" runat="server" placeholder="Your Query..." TextMode="MultiLine"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtmessage" ErrorMessage="Enter Your query..." Font-Bold="True" Font-Size="small" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
       <asp:Button ID="sub" runat="server"  Text="Submit Query" OnClick="sub_Click"/>
          </p>


;</asp:Content>

