<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Stock_Forgeeee.Register" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Redirecting to Register...</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script>
                window.location.href = '<%= ResolveUrl("~/Account/Register.aspx") %>';
            </script>
        </div>
    </form>
</body>
</html>
