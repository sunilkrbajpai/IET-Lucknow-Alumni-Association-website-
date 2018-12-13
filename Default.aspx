<%@ Page Title="" Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/defaultstyle.css" rel="stylesheet" type="text/css" />
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
    </script>
    <script>
   
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
    <div id="box">
    <div id="lmain">
       <marquee height="420px" behavior="up" onmouseover="stop()" onmouseout="start()" direction="up" scrolldelay="100">
          <asp:GridView ID="gv1" runat="server" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:TemplateField>
                      <ItemTemplate>
                          <img src="images/new.gif" height="30px" width="30px" />
                          <asp:Label ID="lblnmsg" runat="server" Text='<%#Eval("nmsg") %>' ForeColor="Red"></asp:Label> 
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
          </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [nmsg] FROM [notification]"></asp:SqlDataSource></marquee>
    </div>
    <div id="rmain"><center><span style="font-size:35px;color:green;font-weight:bold;text-decoration:underline;">Introduction</span></center>

        <br />
        Institute of Engineering And Technology, Lucknow (better known as the "Engineering College" in Lucknow) is one of the premier engineering college in Uttar Pradesh and is the most sought after college during UPSEE counseling, The Institute was established in 1984.<br /> Admission is given on the basis of the rank obtained by the candidate in UPSEE-AKTU.

The institute has hostel facilities for boys and girls, committees consisting of elected student representatives manage them. All the hostels are located in the campus.

The institute is fully residential. <br />The institute was formerly affiliated (1984-1999) to The University of Lucknow, currently An Autonomous Institute and recognised by AICTE. The institute is a constituent college of Dr. A.P.J. Abdul Kalam Technical University.
    </div>
</div>
    <a href="#" id="lnkenquiry" onclick="enquirypopup()" >Enquiry</a>
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
</asp:Content>