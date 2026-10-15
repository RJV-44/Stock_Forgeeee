<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Stock_Forgeeee.Account.Register" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Get Started - StockForge</title>
    
    <!-- Google Fonts & Bootstrap Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
        }
        body {
            background-color: #F8FAFC;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 30px 20px;
        }
        .register-card {
            background: #FFFFFF;
            border: 1px solid #E2E8F0;
            border-radius: 12px;
            width: 100%;
            max-width: 980px;
            min-height: 600px;
            display: grid;
            grid-template-columns: 42% 58%;
            overflow: hidden;
            box-shadow: 0 4px 20px -2px rgba(0, 0, 0, 0.05);
        }
        @media (max-width: 820px) {
            .register-card {
                grid-template-columns: 1fr;
            }
            .left-panel {
                display: none;
            }
        }
        .left-panel {
            background-color: #E8F7ED;
            padding: 44px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .logo-wrap {
            display: flex;
            align-items: center;
            gap: 10px;
            text-decoration: none;
        }
        .logo-icon {
            width: 28px;
            height: 28px;
            background: #006C44;
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #FFFFFF;
            font-size: 15px;
        }
        .logo-text {
            font-size: 20px;
            font-weight: 700;
            color: #111827;
        }
        .left-title {
            font-size: 20px;
            font-weight: 700;
            color: #111827;
            line-height: 1.35;
            margin-top: 24px;
            max-width: 280px;
        }
        .right-panel {
            padding: 44px 56px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .form-header h1 {
            font-size: 22px;
            font-weight: 700;
            color: #111827;
            margin-bottom: 6px;
        }
        .form-header p {
            font-size: 13px;
            color: #6B7280;
            margin-bottom: 24px;
        }
        .form-grid-2 {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 14px;
        }
        @media (max-width: 540px) {
            .form-grid-2 {
                grid-template-columns: 1fr;
            }
        }
        .input-group {
            margin-bottom: 14px;
        }
        .input-label {
            display: block;
            font-size: 12px;
            font-weight: 600;
            color: #374151;
            margin-bottom: 5px;
        }
        .input-wrapper {
            position: relative;
            display: flex;
            align-items: center;
        }
        .input-wrapper i.lead-icon {
            position: absolute;
            left: 14px;
            color: #9CA3AF;
            font-size: 15px;
            pointer-events: none;
        }
        .custom-input {
            width: 100%;
            height: 42px;
            padding: 0 14px 0 38px;
            border: 1px solid #D1D5DB;
            border-radius: 8px;
            font-size: 13px;
            color: #1F2937;
            background: #FFFFFF;
            outline: none;
            transition: all 0.15s ease;
        }
        .custom-input:focus {
            border-color: #3DA86F;
            box-shadow: 0 0 0 3px rgba(61, 168, 111, 0.15);
        }
        .input-wrapper select.custom-input {
            cursor: pointer;
            appearance: none;
            background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='%236B7280' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6 9 12 15 18 9'%3e%3c/polyline%3e%3c/svg%3e");
            background-repeat: no-repeat;
            background-position: right 12px center;
            background-size: 14px;
        }
        .toggle-pwd-btn {
            position: absolute;
            right: 12px;
            background: none;
            border: none;
            color: #9CA3AF;
            cursor: pointer;
            font-size: 15px;
            padding: 4px;
        }
        .toggle-pwd-btn:hover {
            color: #4B5563;
        }
        .val-error {
            color: #EF4444;
            font-size: 11px;
            margin-top: 4px;
            display: block;
        }
        .checkbox-row {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 6px;
            margin-bottom: 20px;
            font-size: 12.5px;
            color: #4B5563;
        }
        .checkbox-row input[type="checkbox"] {
            accent-color: #3DA86F;
            width: 15px;
            height: 15px;
            cursor: pointer;
        }
        .btn-register-submit {
            width: 100%;
            height: 44px;
            background-color: #3DA86F;
            border: none;
            border-radius: 8px;
            color: #FFFFFF;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.15s ease;
        }
        .btn-register-submit:hover {
            background-color: #33925F;
        }
        .footer-note {
            text-align: center;
            font-size: 13px;
            color: #6B7280;
            margin-top: 20px;
        }
        .footer-note a {
            color: #3DA86F;
            text-decoration: none;
            font-weight: 600;
        }
        .footer-note a:hover {
            text-decoration: underline;
        }
        .auth-alert-box {
            padding: 10px 14px;
            border-radius: 8px;
            font-size: 12.5px;
            margin-bottom: 16px;
        }
        .auth-alert-danger {
            background: #FEE2E2;
            color: #991B1B;
            border: 1px solid #FCA5A5;
        }
        .auth-alert-success {
            background: #DCFCE7;
            color: #166534;
            border: 1px solid #86EFAC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="register-card">
            <!-- Left Side Mint Green Branded Illustration Panel -->
            <div class="left-panel">
                <div>
                    <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="logo-wrap">
                        <div class="logo-icon">
                            <i class="bi bi-box-seam-fill"></i>
                        </div>
                        <span class="logo-text">StockForge</span>
                    </a>
                    <h2 class="left-title">Simple inventory management for your hardware business.</h2>
                </div>

                <!-- Precise Vector Graphic: Stacked Hardware Boxes (CPU, RAM, GPU) with Checklist -->
                <div style="display: flex; justify-content: center; margin-top: 24px;">
                    <svg width="270" height="230" viewBox="0 0 340 300" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <!-- Checklist Card on the Right -->
                        <g opacity="0.95">
                            <line x1="240" y1="90" x2="280" y2="90" stroke="#94A3B8" stroke-width="2.5" stroke-linecap="round"/>
                            <circle cx="295" cy="90" r="5" fill="#3DA86F"/>
                            <circle cx="310" cy="90" r="5" fill="#F59E0B"/>
                            <rect x="228" y="84" width="11" height="11" rx="2" stroke="#64748B" stroke-width="1.8" fill="white"/>
                            <path d="M230 89.5L233 92.5L237 86.5" stroke="#3DA86F" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/>

                            <line x1="240" y1="116" x2="280" y2="116" stroke="#94A3B8" stroke-width="2.5" stroke-linecap="round"/>
                            <circle cx="295" cy="116" r="5" fill="#3DA86F"/>
                            <circle cx="310" cy="116" r="5" fill="#F59E0B"/>
                            <rect x="228" y="110" width="11" height="11" rx="2" stroke="#64748B" stroke-width="1.8" fill="white"/>
                            <path d="M230 115.5L233 118.5L237 112.5" stroke="#3DA86F" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/>

                            <line x1="240" y1="142" x2="280" y2="142" stroke="#94A3B8" stroke-width="2.5" stroke-linecap="round"/>
                            <rect x="228" y="136" width="11" height="11" rx="2" stroke="#94A3B8" stroke-width="1.8" fill="white"/>

                            <line x1="240" y1="168" x2="280" y2="168" stroke="#94A3B8" stroke-width="2.5" stroke-linecap="round"/>
                            <circle cx="295" cy="168" r="5" fill="#94A3B8"/>
                            <circle cx="310" cy="168" r="5" fill="#F59E0B"/>
                            <rect x="228" y="162" width="11" height="11" rx="2" stroke="#94A3B8" stroke-width="1.8" fill="white"/>
                        </g>

                        <!-- Ground Baseline Shadow Line -->
                        <line x1="50" y1="262" x2="270" y2="262" stroke="#64748B" stroke-width="1.5" stroke-linecap="round"/>

                        <!-- Left Large Box (Bottom-Left) -->
                        <g>
                            <rect x="68" y="180" width="75" height="82" fill="#E2E8F0" stroke="#475569" stroke-width="1.8" rx="2"/>
                            <path d="M 68 180 L 90 192 L 143 180" stroke="#475569" stroke-width="1.5" fill="none"/>
                            <polygon points="100,180 111,180 111,194 105.5,190 100,194" fill="#3DA86F"/>
                            <rect x="74" y="238" width="18" height="7" rx="1" fill="#94A3B8"/>
                        </g>

                        <!-- Box Above (CPU Box 1) -->
                        <g>
                            <rect x="80" y="138" width="60" height="42" fill="#F1F5F9" stroke="#475569" stroke-width="1.8" rx="2"/>
                            <text x="110" y="163" font-size="11" font-family="'Inter', sans-serif" font-weight="700" fill="#64748B" text-anchor="middle">CPU</text>
                            <polygon points="105,138 115,138 115,148 110,144 105,148" fill="#94A3B8"/>
                        </g>

                        <!-- Center Middle Box (RAM Box) -->
                        <g>
                            <rect x="143" y="160" width="62" height="102" fill="#E2E8F0" stroke="#475569" stroke-width="1.8" rx="2"/>
                            <text x="164" y="186" font-size="11" font-family="'Inter', sans-serif" font-weight="700" fill="#64748B" text-anchor="middle">RAM</text>
                            <rect x="184" y="170" width="14" height="82" rx="2" fill="#86EFAC" stroke="#16A34A" stroke-width="1.2"/>
                            <rect x="187" y="176" width="8" height="10" rx="1" fill="#15803D"/>
                            <rect x="187" y="192" width="8" height="10" rx="1" fill="#15803D"/>
                            <rect x="187" y="208" width="8" height="10" rx="1" fill="#15803D"/>
                            <rect x="187" y="224" width="8" height="10" rx="1" fill="#15803D"/>
                            <line x1="184" y1="248" x2="198" y2="248" stroke="#EAB308" stroke-width="2"/>
                        </g>

                        <!-- Center Upper Box (CPU Box 2) -->
                        <g>
                            <rect x="143" y="120" width="60" height="40" fill="#DCFCE7" stroke="#16A34A" stroke-width="1.8" rx="2"/>
                            <rect x="160" y="128" width="26" height="24" rx="2" fill="white" stroke="#16A34A" stroke-width="1.2"/>
                            <text x="173" y="144" font-size="9" font-family="'Inter', sans-serif" font-weight="700" fill="#15803D" text-anchor="middle">CPU</text>
                            <line x1="165" y1="124" x2="165" y2="128" stroke="#16A34A" stroke-width="1.2"/>
                            <line x1="173" y1="124" x2="173" y2="128" stroke="#16A34A" stroke-width="1.2"/>
                            <line x1="181" y1="124" x2="181" y2="128" stroke="#16A34A" stroke-width="1.2"/>
                        </g>

                        <!-- Bottom Center-Right Box (GPU Box) -->
                        <g>
                            <rect x="133" y="220" width="98" height="42" fill="#DCFCE7" stroke="#16A34A" stroke-width="1.8" rx="2"/>
                            <text x="175" y="246" font-size="14" font-family="'Inter', sans-serif" font-weight="700" fill="#15803D" text-anchor="middle">GPU</text>
                            <rect x="206" y="230" width="16" height="6" rx="1" fill="#86EFAC"/>
                            <line x1="133" y1="220" x2="231" y2="220" stroke="#16A34A" stroke-width="1.5"/>
                        </g>
                    </svg>
                </div>
            </div>

            <!-- Right Side Registration Form -->
            <div class="right-panel">
                <div class="form-header">
                    <h1>Get Started</h1>
                    <p>Create your StockForge hardware management account.</p>
                </div>

                <!-- Alert Messages -->
                <asp:Panel ID="pnlAlert" runat="server" Visible="false">
                    <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
                </asp:Panel>

                <!-- Grid Form Fields -->
                <div class="form-grid-2">
                    <!-- Store Name -->
                    <div class="input-group">
                        <label class="input-label" for="txtStoreName">Store Name</label>
                        <div class="input-wrapper">
                            <i class="bi bi-shop lead-icon"></i>
                            <asp:TextBox ID="txtStoreName" runat="server" CssClass="custom-input" placeholder="e.g. Apex Tools"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvStoreName" runat="server" ControlToValidate="txtStoreName"
                            ErrorMessage="Store Name is required" EnableClientScript="false" CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Owner / Contact Name -->
                    <div class="input-group">
                        <label class="input-label" for="txtFullName">Full Name</label>
                        <div class="input-wrapper">
                            <i class="bi bi-person lead-icon"></i>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="custom-input" placeholder="e.g. John Doe"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName"
                            ErrorMessage="Full name is required" EnableClientScript="false" CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-grid-2">
                    <!-- Work Email -->
                    <div class="input-group">
                        <label class="input-label" for="txtEmail">Email Address</label>
                        <div class="input-wrapper">
                            <i class="bi bi-envelope lead-icon"></i>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="custom-input" placeholder="Enter your email"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Email is required" EnableClientScript="false" CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Business Category -->
                    <div class="input-group">
                        <label class="input-label" for="ddlStoreCategory">Store Category</label>
                        <div class="input-wrapper">
                            <i class="bi bi-tags lead-icon"></i>
                            <asp:DropDownList ID="ddlStoreCategory" runat="server" CssClass="custom-input">
                                <asp:ListItem Text="General Hardware Store" Value="General Hardware"></asp:ListItem>
                                <asp:ListItem Text="Electrical & Lighting Tools" Value="Electrical"></asp:ListItem>
                                <asp:ListItem Text="Plumbing & Sanitary Supplies" Value="Plumbing"></asp:ListItem>
                                <asp:ListItem Text="Power Tools & Machinery" Value="Power Tools"></asp:ListItem>
                                <asp:ListItem Text="Building & Construction" Value="Building Materials"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="form-grid-2">
                    <!-- Password -->
                    <div class="input-group">
                        <label class="input-label" for="txtPassword">Password</label>
                        <div class="input-wrapper">
                            <i class="bi bi-lock lead-icon"></i>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="custom-input" placeholder="Create password"></asp:TextBox>
                            <button type="button" class="toggle-pwd-btn" onclick="togglePasswordVisibility('<%= txtPassword.ClientID %>', this)">
                                <i class="bi bi-eye-slash"></i>
                            </button>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="Password is required" EnableClientScript="false" CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Confirm Password -->
                    <div class="input-group">
                        <label class="input-label" for="txtConfirmPassword">Confirm Password</label>
                        <div class="input-wrapper">
                            <i class="bi bi-shield-lock lead-icon"></i>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="custom-input" placeholder="Confirm password"></asp:TextBox>
                            <button type="button" class="toggle-pwd-btn" onclick="togglePasswordVisibility('<%= txtConfirmPassword.ClientID %>', this)">
                                <i class="bi bi-eye-slash"></i>
                            </button>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                            ErrorMessage="Confirmation required" EnableClientScript="false" CssClass="val-error" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"
                            ErrorMessage="Passwords do not match" EnableClientScript="false" CssClass="val-error" Display="Dynamic"></asp:CompareValidator>
                    </div>
                </div>

                <!-- Terms & Conditions Checkbox -->
                <div class="checkbox-row">
                    <asp:CheckBox ID="chkTerms" runat="server" />
                    <label for="<%= chkTerms.ClientID %>">I agree to the <a href="<%= ResolveUrl("~/Terms.aspx") %>" target="_blank" style="color: #3DA86F;">Terms of Service</a> and <a href="<%= ResolveUrl("~/Privacy.aspx") %>" target="_blank" style="color: #3DA86F;">Privacy Policy</a></label>
                </div>

                <!-- Submit Button -->
                <asp:Button ID="btnRegister" runat="server" Text="Create Account" CssClass="btn-register-submit" OnClick="btnRegister_Click" />

                <!-- Footer Note -->
                <div class="footer-note">
                    Already have an account? <a href="<%= ResolveUrl("~/Account/Login.aspx") %>">Sign In</a>
                </div>
            </div>
        </div>
    </form>

    <script>
        function togglePasswordVisibility(fieldId, btn) {
            var input = document.getElementById(fieldId);
            var icon = btn.querySelector('i');
            if (input.type === 'password') {
                input.type = 'text';
                icon.classList.remove('bi-eye-slash');
                icon.classList.add('bi-eye');
            } else {
                input.type = 'password';
                icon.classList.remove('bi-eye');
                icon.classList.add('bi-eye-slash');
            }
        }
    </script>
</body>
</html>
