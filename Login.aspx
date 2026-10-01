<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Stock_Forgeeee.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Redirecting to Login...</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script>
                window.location.href = '<%= ResolveUrl("~/Account/Login.aspx") %>';
            </script>
        </div>
    </form>
</body>
</html>
