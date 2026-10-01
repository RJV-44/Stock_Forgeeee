<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Stock_Forgeeee.Account.ResetPassword" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Set New Password - StockForge</title>
    
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
                        Choose a <span>Strong Password</span>
                    </h2>
                    <p class="auth-side-subtitle">
                        Ensure your account security by selecting a password containing letters, numbers, and special characters.
                    </p>
                </div>

                <div class="auth-side-footer">
                    &copy; <%= DateTime.Now.Year %> StockForge Hardware System.
                </div>
            </div>

            <div class="auth-form-panel">
                <div class="auth-card">
                    <div class="auth-header">
                        <h1 class="auth-title">Set New Password</h1>
                        <p class="auth-sub">Enter your new account password below</p>
                    </div>

                    <asp:Panel ID="pnlAlert" runat="server" Visible="false">
                        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
                    </asp:Panel>

                    <div class="auth-form-group">
                        <label for="txtNewPassword">New Password</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-lock input-icon"></i>
                            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="auth-input" placeholder="••••••••"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" 
                            ErrorMessage="Please enter a new password" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    </div>

                    <div class="auth-form-group">
                        <label for="txtConfirmPassword">Confirm New Password</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-shield-lock input-icon"></i>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="auth-input" placeholder="••••••••"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" 
                            ErrorMessage="Please confirm your new password" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword"
                            ErrorMessage="Passwords do not match" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:CompareValidator>
                    </div>

                    <asp:Button ID="btnResetPassword" runat="server" Text="Update Password & Sign In" OnClick="btnResetPassword_Click" CssClass="btn-auth-submit" />

                    <div class="auth-footer-text">
                        <a href="<%= ResolveUrl("~/Account/Login.aspx") %>" class="auth-link">Cancel & Return to Login</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
