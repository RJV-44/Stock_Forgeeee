<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Stock_Forgeeee._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        window.location.href = '<%= ResolveUrl("~/Dashboard.aspx") %>';
    </script>
</asp:Content>
