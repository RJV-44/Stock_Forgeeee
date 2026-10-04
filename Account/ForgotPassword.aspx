<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Stock_Forgeeee.Account.ForgotPassword" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Forgot Password - StockForge</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="<%= ResolveUrl("~/Content/auth.css") %>" rel="stylesheet" type="text/css" />
</head>
<body class="auth-body">
    <form id="form1" runat="server">
        <div class="auth-wrapper">
            <div class="auth-side-panel">
                <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="auth-brand-logo">
                    <div class="auth-brand-icon">
                        <i class="bi bi-box-seam-fill"></i>
                    </div>
                    <span class="auth-brand-name">StockForge</span>
                </a>

                <div class="auth-side-content">
                    <h2 class="auth-side-title">
                        Secure <span>Password Recovery</span>
                    </h2>
                    <p class="auth-side-subtitle">
                        Don't worry! Enter your registered account email and we'll send you a password reset verification link.
                    </p>
                </div>

                <div class="auth-side-footer">
                    &copy; <%= DateTime.Now.Year %> StockForge Hardware System.
                </div>
            </div>

            <div class="auth-form-panel">
                <div class="auth-card">
                    <div class="auth-header">
                        <h1 class="auth-title">Reset Password</h1>
                        <p class="auth-sub">Enter your email to receive recovery instructions</p>
                    </div>

                    <asp:Panel ID="pnlAlert" runat="server" Visible="false">
                        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
                    </asp:Panel>

                    <div class="auth-form-group">
                        <label for="txtEmail">Registered Email</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-envelope input-icon"></i>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="auth-input" placeholder="admin@stockforge.com"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                            ErrorMessage="Please enter your email address" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    </div>

                    <asp:Button ID="btnSendResetLink" runat="server" Text="Send Reset Instructions" OnClick="btnSendResetLink_Click" CssClass="btn-auth-submit" />

                    <div class="auth-footer-text">
                        Remember your password? 
                        <a href="<%= ResolveUrl("~/Account/Login.aspx") %>" class="auth-link">Back to Sign In</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
