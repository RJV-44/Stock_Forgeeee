<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Stock_Forgeeee.Account.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign In - StockForge Hardware System</title>
    
    <!-- Google Fonts & Bootstrap Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <!-- Auth CSS -->
    <link href="<%= ResolveUrl("~/Content/auth.css") %>" rel="stylesheet" type="text/css" />
</head>
<body class="auth-body">
    <form id="form1" runat="server">
        <div class="auth-wrapper">
            <!-- Left Side Branded Showcase Panel -->
            <div class="auth-side-panel">
                <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="auth-brand-logo">
                    <div class="auth-brand-icon">
                        <i class="bi bi-box-seam-fill"></i>
                    </div>
                    <span class="auth-brand-name">StockForge</span>
                </a>

                <div class="auth-side-content">
                    <h2 class="auth-side-title">
                        Empowering <span>Hardware Stores</span> Every Day
                    </h2>
                    <p class="auth-side-subtitle">
                        Sign in to access your hardware inventory, process customer orders, monitor purchase receipts, and view real-time sales reports.
                    </p>
                    <ul class="auth-feature-list">
                        <li class="auth-feature-item">
                            <i class="bi bi-check-lg"></i>
                            <span>Real-Time Stock Movement & Barcode Support</span>
                        </li>
                        <li class="auth-feature-item">
                            <i class="bi bi-check-lg"></i>
                            <span>Automated Reorder Threshold Alerts</span>
                        </li>
                        <li class="auth-feature-item">
                            <i class="bi bi-check-lg"></i>
                            <span>Multi-user Granular Role Security</span>
                        </li>
                    </ul>
                </div>

                <div class="auth-side-footer">
                    &copy; <%= DateTime.Now.Year %> StockForge Hardware System. All rights reserved.
                </div>
            </div>

            <!-- Right Side Login Form -->
            <div class="auth-form-panel">
                <div class="auth-card">
                    <div class="auth-header">
                        <h1 class="auth-title">Welcome Back</h1>
                        <p class="auth-sub">Enter your store credentials to access your account</p>
                    </div>

                    <!-- Alert / Status Feedback -->
                    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="auth-alert-box auth-alert-danger">
                        <i class="bi bi-exclamation-triangle-fill"></i>
                        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
                    </asp:Panel>

                    <div class="auth-form-group">
                        <label for="txtEmail">Email or Username</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-envelope input-icon"></i>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="auth-input" placeholder="admin@stockforge.com"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                            ErrorMessage="Please enter your email or username" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    </div>

                    <div class="auth-form-group">
                        <label for="txtPassword">Password</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-lock input-icon"></i>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="auth-input" placeholder="••••••••"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                            ErrorMessage="Please enter your password" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    </div>

                    <div class="auth-row-between">
                        <label class="auth-checkbox">
                            <asp:CheckBox ID="chkRemember" runat="server" Checked="true" />
                            <span>Remember me for 30 days</span>
                        </label>
                        <a href="<%= ResolveUrl("~/Account/ForgotPassword.aspx") %>" class="auth-link">Forgot Password?</a>
                    </div>

                    <asp:Button ID="btnLogin" runat="server" Text="Sign In to Dashboard" OnClick="btnLogin_Click" CssClass="btn-auth-submit" />

                    <!-- Quick Demo Credentials Box -->
                    <div class="demo-account-box">
                        <div class="demo-title"><i class="bi bi-lightning-charge-fill text-warning"></i> Demo Login Quick Fill</div>
                        <div class="demo-buttons">
                            <asp:Button ID="btnDemoAdmin" runat="server" Text="Admin" OnClick="btnDemoAdmin_Click" CssClass="btn-demo-chip" CausesValidation="false" />
                            <asp:Button ID="btnDemoManager" runat="server" Text="Manager" OnClick="btnDemoManager_Click" CssClass="btn-demo-chip" CausesValidation="false" />
                            <asp:Button ID="btnDemoStaff" runat="server" Text="Staff" OnClick="btnDemoStaff_Click" CssClass="btn-demo-chip" CausesValidation="false" />
                        </div>
                    </div>

                    <div class="auth-footer-text">
                        Don't have a hardware store account? 
                        <a href="<%= ResolveUrl("~/Account/Register.aspx") %>" class="auth-link">Register Store</a>
                    </div>

                    <div style="text-align: center; margin-top: 16px;">
                        <a href="<%= ResolveUrl("~/Landing.aspx") %>" style="font-size: 13px; color: #9CA3AF; text-decoration: none;">
                            <i class="bi bi-arrow-left"></i> Back to Landing Page
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
