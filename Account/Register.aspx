<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Stock_Forgeeee.Account.Register" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register Hardware Store - StockForge</title>
    
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
                        Start Managing Your <span>Hardware Store</span> Today
                    </h2>
                    <p class="auth-side-subtitle">
                        Create a StockForge account in less than 2 minutes. Free 14-day trial with full access to all inventory, billing, and supplier tools.
                    </p>
                    <ul class="auth-feature-list">
                        <li class="auth-feature-item">
                            <i class="bi bi-check-lg"></i>
                            <span>No Credit Card Required for Trial</span>
                        </li>
                        <li class="auth-feature-item">
                            <i class="bi bi-check-lg"></i>
                            <span>Pre-loaded Hardware & Tool Categories</span>
                        </li>
                        <li class="auth-feature-item">
                            <i class="bi bi-check-lg"></i>
                            <span>Instant Setup & Data Import Tools</span>
                        </li>
                    </ul>
                </div>

                <div class="auth-side-footer">
                    &copy; <%= DateTime.Now.Year %> StockForge Hardware System. All rights reserved.
                </div>
            </div>

            <!-- Right Side Registration Form -->
            <div class="auth-form-panel">
                <div class="auth-card" style="max-width: 480px;">
                    <div class="auth-header">
                        <h1 class="auth-title">Create Hardware Account</h1>
                        <p class="auth-sub">Enter details to set up your store management portal</p>
                    </div>

                    <!-- Alert / Status Feedback -->
                    <asp:Panel ID="pnlAlert" runat="server" Visible="false">
                        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
                    </asp:Panel>

                    <div class="auth-form-group">
                        <label for="txtStoreName">Hardware Store Name</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-shop input-icon"></i>
                            <asp:TextBox ID="txtStoreName" runat="server" CssClass="auth-input" placeholder="Apex Hardware & Tools"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvStoreName" runat="server" ControlToValidate="txtStoreName" 
                            ErrorMessage="Store Name is required" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    </div>

                    <div class="auth-form-group">
                        <label for="ddlStoreType">Business Category</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-tags input-icon"></i>
                            <asp:DropDownList ID="ddlStoreType" runat="server" CssClass="auth-input">
                                <asp:ListItem Text="General Hardware Store" Value="General Hardware"></asp:ListItem>
                                <asp:ListItem Text="Electrical & Lighting Tools" Value="Electrical"></asp:ListItem>
                                <asp:ListItem Text="Plumbing & Sanitary Supplies" Value="Plumbing"></asp:ListItem>
                                <asp:ListItem Text="Construction & Building Materials" Value="Building Materials"></asp:ListItem>
                                <asp:ListItem Text="Wholesale Tools Distributor" Value="Wholesale"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="auth-form-group">
                        <label for="txtFullName">Owner / Manager Name</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-person input-icon"></i>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="auth-input" placeholder="John Doe"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" 
                            ErrorMessage="Full name is required" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    </div>

                    <div class="auth-form-group">
                        <label for="txtEmail">Work Email Address</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-envelope input-icon"></i>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="auth-input" placeholder="john@apexhardware.com"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                            ErrorMessage="Email address is required" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid email address format" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    </div>

                    <div class="auth-form-group">
                        <label for="txtPassword">Account Password</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-lock input-icon"></i>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="auth-input" placeholder="••••••••"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                            ErrorMessage="Password is required" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    </div>

                    <div class="auth-form-group">
                        <label for="txtConfirmPassword">Confirm Password</label>
                        <div class="auth-input-wrapper">
                            <i class="bi bi-shield-lock input-icon"></i>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="auth-input" placeholder="••••••••"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" 
                            ErrorMessage="Please confirm your password" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"
                            ErrorMessage="Passwords do not match" CssClass="val-error" Display="Dynamic" EnableClientScript="false"></asp:CompareValidator>
                    </div>

                    <div class="auth-form-group" style="margin-bottom: 24px;">
                        <label class="auth-checkbox">
                            <asp:CheckBox ID="chkTerms" runat="server" />
                            <span>I agree to the <a href="<%= ResolveUrl("~/Terms.aspx") %>" target="_blank" class="auth-link">Terms of Service</a> and <a href="<%= ResolveUrl("~/Privacy.aspx") %>" target="_blank" class="auth-link">Privacy Policy</a></span>
                        </label>
                    </div>

                    <asp:Button ID="btnRegister" runat="server" Text="Create Store Account" OnClick="btnRegister_Click" CssClass="btn-auth-submit" />

                    <div class="auth-footer-text">
                        Already have a StockForge account? 
                        <a href="<%= ResolveUrl("~/Account/Login.aspx") %>" class="auth-link">Sign In</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
