<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Stock_Forgeeee.Account.ResetPassword" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Create New Password - StockForge</title>
    
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
            padding: 24px;
        }
        .login-card {
            background: #FFFFFF;
            border: 1px solid #E2E8F0;
            border-radius: 12px;
            width: 100%;
            max-width: 960px;
            min-height: 540px;
            display: grid;
            grid-template-columns: 42% 58%;
            overflow: hidden;
            box-shadow: 0 4px 20px -2px rgba(0, 0, 0, 0.05);
        }
        @media (max-width: 768px) {
            .login-card {
                grid-template-columns: 1fr;
            }
            .left-panel {
                display: none;
            }
        }
        .left-panel {
            background-color: #E8F7ED;
            padding: 40px;
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
            padding: 48px 56px;
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
            line-height: 1.45;
            margin-bottom: 24px;
            max-width: 380px;
        }
        .input-group {
            margin-bottom: 16px;
        }
        .input-label {
            display: block;
            font-size: 12px;
            font-weight: 600;
            color: #374151;
            margin-bottom: 6px;
        }
        .input-wrapper {
            position: relative;
            display: flex;
            align-items: center;
        }
        .input-wrapper i.trail-icon {
            position: absolute;
            right: 14px;
            font-size: 14px;
            color: #9CA3AF;
            cursor: pointer;
        }
        .form-input {
            width: 100%;
            height: 42px;
            padding: 8px 38px 8px 14px;
            border: 1px solid #D1D5DB;
            border-radius: 6px;
            font-size: 13.5px;
            color: #111827;
            outline: none;
            transition: border-color 0.15s;
        }
        .form-input:focus {
            border-color: #3DA86F;
        }
        .requirements-box {
            background: #F9FAFB;
            border: 1px solid #E5E7EB;
            border-radius: 8px;
            padding: 14px 16px;
            margin-bottom: 20px;
        }
        .requirements-title {
            font-size: 12px;
            font-weight: 600;
            color: #4B5563;
            margin-bottom: 10px;
        }
        .requirements-list {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
            font-size: 12.5px;
            color: #4B5563;
        }
        .requirements-list li {
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .btn-submit {
            width: 100%;
            height: 42px;
            background: #3DA86F;
            border: none;
            border-radius: 6px;
            color: #FFFFFF;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.15s;
        }
        .btn-submit:hover {
            background: #349460;
        }
        .bottom-link {
            text-align: center;
            margin-top: 20px;
            font-size: 13px;
        }
        .bottom-link a {
            color: #4B5563;
            text-decoration: none;
            font-weight: 500;
            display: inline-flex;
            align-items: center;
            gap: 6px;
        }
        .bottom-link a:hover {
            color: #111827;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-card">
            <!-- Left Panel (Matching Screenshot 1) -->
            <div class="left-panel">
                <div>
                    <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="logo-wrap">
                        <div class="logo-icon">
                            <i class="bi bi-box-seam-fill"></i>
                        </div>
                        <span class="logo-text">StockForge</span>
                    </a>
                    <h2 class="left-title">
                        Simple inventory management for your hardware business.
                    </h2>
                </div>

                <!-- Vector Illustration matching Figma -->
                <div style="display: flex; justify-content: center; align-items: center; margin: 30px 0;">
                    <svg width="240" height="200" viewBox="0 0 240 200" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <!-- Ground line -->
                        <line x1="20" y1="185" x2="220" y2="185" stroke="#94A3B8" stroke-width="1.2" stroke-linecap="round"/>
                        
                        <!-- Box 1 (Bottom Left tall box) -->
                        <rect x="35" y="115" width="48" height="70" fill="#E2E8F0" stroke="#64748B" stroke-width="1.2"/>
                        <polygon points="35,115 59,102 83,115" fill="#CBD5E1" stroke="#64748B" stroke-width="1.2"/>
                        <rect x="55" y="122" width="8" height="15" fill="#94A3B8" opacity="0.6"/>

                        <!-- Box 2 (Standing Middle Left box - CPU) -->
                        <rect x="44" y="78" width="40" height="46" fill="#EEF2F6" stroke="#64748B" stroke-width="1.2"/>
                        <polygon points="44,78 64,68 84,78" fill="#E2E8F0" stroke="#64748B" stroke-width="1.2"/>
                        <text x="54" y="97" font-family="'Inter', sans-serif" font-size="9" font-weight="700" fill="#475569">CPU</text>

                        <!-- Box 3 (Top Middle box - CPU with circuit/chip) -->
                        <rect x="86" y="65" width="40" height="42" fill="#DCFCE7" stroke="#4ADE80" stroke-width="1.2"/>
                        <polygon points="86,65 106,55 126,65" fill="#BBF7D0" stroke="#4ADE80" stroke-width="1.2"/>
                        <rect x="99" y="75" width="14" height="14" rx="2" fill="#FFFFFF" stroke="#16A34A" stroke-width="1"/>
                        <text x="101" y="85" font-family="'Inter', sans-serif" font-size="6" font-weight="700" fill="#16A34A">CPU</text>

                        <!-- Box 4 (Middle RAM box) -->
                        <rect x="86" y="107" width="46" height="36" fill="#F8FAFC" stroke="#64748B" stroke-width="1.2"/>
                        <text x="91" y="121" font-family="'Inter', sans-serif" font-size="8" font-weight="700" fill="#475569">RAM</text>
                        <rect x="113" y="110" width="10" height="30" rx="1" fill="#DCFCE7" stroke="#16A34A" stroke-width="0.8"/>
                        <rect x="115" y="114" width="6" height="3" fill="#16A34A"/>
                        <rect x="115" y="120" width="6" height="3" fill="#16A34A"/>
                        <rect x="115" y="126" width="6" height="3" fill="#16A34A"/>

                        <!-- Box 5 (Bottom Large Green box - GPU) -->
                        <rect x="80" y="143" width="65" height="42" fill="#DCFCE7" stroke="#4ADE80" stroke-width="1.2"/>
                        <polygon points="80,143 112,130 145,143" fill="#BBF7D0" stroke="#4ADE80" stroke-width="1.2"/>
                        <text x="96" y="169" font-family="'Inter', sans-serif" font-size="12" font-weight="700" fill="#16A34A">GPU</text>
                        <rect x="124" y="161" width="14" height="6" rx="1" fill="#FFFFFF" stroke="#16A34A" stroke-width="0.8"/>

                        <!-- Checklist on the right -->
                        <rect x="142" y="72" width="7" height="7" rx="1" fill="#FFFFFF" stroke="#64748B" stroke-width="0.8"/>
                        <path d="M143.5 75.5 L145 77 L147.5 73.5" stroke="#16A34A" stroke-width="1.2" fill="none" stroke-linecap="round"/>
                        <line x1="153" y1="75.5" x2="175" y2="75.5" stroke="#94A3B8" stroke-width="1.2" stroke-linecap="round"/>
                        <circle cx="184" cy="75.5" r="3" fill="#86EFAC" stroke="#22C55E" stroke-width="0.8"/>
                        <circle cx="192" cy="75.5" r="3" fill="#FDBA74" stroke="#F97316" stroke-width="0.8"/>

                        <rect x="142" y="84" width="7" height="7" rx="1" fill="#FFFFFF" stroke="#64748B" stroke-width="0.8"/>
                        <path d="M143.5 87.5 L145 89 L147.5 85.5" stroke="#16A34A" stroke-width="1.2" fill="none" stroke-linecap="round"/>
                        <line x1="153" y1="87.5" x2="175" y2="87.5" stroke="#94A3B8" stroke-width="1.2" stroke-linecap="round"/>
                        <circle cx="184" cy="87.5" r="3" fill="#86EFAC" stroke="#22C55E" stroke-width="0.8"/>
                        <circle cx="192" cy="87.5" r="3" fill="#FDBA74" stroke="#F97316" stroke-width="0.8"/>

                        <rect x="142" y="96" width="7" height="7" rx="1" fill="#FFFFFF" stroke="#64748B" stroke-width="0.8"/>
                        <path d="M143.5 99.5 L145 101 L147.5 97.5" stroke="#16A34A" stroke-width="1.2" fill="none" stroke-linecap="round"/>
                        <line x1="153" y1="99.5" x2="175" y2="99.5" stroke="#94A3B8" stroke-width="1.2" stroke-linecap="round"/>
                        <circle cx="192" cy="99.5" r="3" fill="#FDBA74" stroke="#F97316" stroke-width="0.8"/>

                        <rect x="142" y="108" width="7" height="7" rx="1" fill="#FFFFFF" stroke="#94A3B8" stroke-width="0.8"/>
                        <line x1="153" y1="111.5" x2="175" y2="111.5" stroke="#94A3B8" stroke-width="1.2" stroke-linecap="round"/>
                        <circle cx="184" cy="111.5" r="3" fill="#86EFAC" stroke="#22C55E" stroke-width="0.8"/>
                        <circle cx="192" cy="111.5" r="3" fill="#FDBA74" stroke="#F97316" stroke-width="0.8"/>
                    </svg>
                </div>

                <div></div>
            </div>

            <!-- Right Panel (Form matching Screenshot 1) -->
            <div class="right-panel">
                <div class="form-header">
                    <h1>Create New Password</h1>
                    <p>Your new password must be different from previous used passwords.</p>
                </div>

                <!-- Alert Feedback -->
                <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #EAF8EF; border: 1px solid #BBF7D0; color: #15803D; padding: 10px 14px; border-radius: 6px; margin-bottom: 20px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
                    <i class="bi bi-check-circle-fill"></i>
                    <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
                </asp:Panel>

                <!-- New Password Input -->
                <div class="input-group">
                    <label class="input-label" for="txtNewPassword">New Password</label>
                    <div class="input-wrapper">
                        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Enter new password"></asp:TextBox>
                        <i class="bi bi-eye-slash trail-icon" onclick="togglePasswordVisibility('txtNewPassword', this)"></i>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required" EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 12px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
                </div>

                <!-- Confirm Password Input -->
                <div class="input-group">
                    <label class="input-label" for="txtConfirmPassword">Confirm Password</label>
                    <div class="input-wrapper">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-input" placeholder="Confirm new password"></asp:TextBox>
                        <i class="bi bi-eye-slash trail-icon" onclick="togglePasswordVisibility('txtConfirmPassword', this)"></i>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password is required" EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 12px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword" ErrorMessage="Passwords must match" EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 12px; margin-top: 4px; display: block;"></asp:CompareValidator>
                </div>

                <!-- Password Requirements Box -->
                <div class="requirements-box">
                    <div class="requirements-title">Password Requirements:</div>
                    <ul class="requirements-list">
                        <li>
                            <i class="bi bi-check-circle-fill" style="color: #3DA86F;"></i>
                            <span>At least 8 characters</span>
                        </li>
                        <li>
                            <i class="bi bi-circle" style="color: #CBD5E1;"></i>
                            <span>Contains uppercase letter</span>
                        </li>
                        <li>
                            <i class="bi bi-circle" style="color: #CBD5E1;"></i>
                            <span>Contains a number</span>
                        </li>
                        <li>
                            <i class="bi bi-circle" style="color: #CBD5E1;"></i>
                            <span>Contains special character</span>
                        </li>
                    </ul>
                </div>

                <!-- Submit Button -->
                <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" OnClick="btnResetPassword_Click" CssClass="btn-submit" />

                <!-- Bottom Link -->
                <div class="bottom-link">
                    <a href="<%= ResolveUrl("~/Account/Login.aspx") %>">
                        <i class="bi bi-arrow-left"></i> Back to Login
                    </a>
                </div>
            </div>
        </div>
    </form>

    <script>
        function togglePasswordVisibility(inputId, icon) {
            var input = document.getElementById(inputId);
            if (input.type === "password") {
                input.type = "text";
                icon.classList.remove("bi-eye-slash");
                icon.classList.add("bi-eye");
            } else {
                input.type = "password";
                icon.classList.remove("bi-eye");
                icon.classList.add("bi-eye-slash");
            }
        }
    </script>
</body>
</html>
