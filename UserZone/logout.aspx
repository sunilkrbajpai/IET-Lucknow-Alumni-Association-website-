<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="UserZone_logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script type="text/javascript">
        function logout()
        {
            window.history.forward();
            window.setTimeout("location.href='../login.aspx'",500);
        }

    </script>
</head>
<body onload="logout()">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
