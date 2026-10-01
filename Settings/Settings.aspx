<%@ Page Title="System Settings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Stock_Forgeeee.Settings.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">System Settings</h1>
            <div class="page-subtitle">Configure company details, stock valuation policies, invoice parameters, alerts, and system security.</div>
        </div>
        <div class="page-actions">
            <asp:Button ID="btnSaveAll" runat="server" Text="Save All Changes" CssClass="btn-primary" CausesValidation="false" OnClick="btnSaveAll_Click" />
        </div>
    </div>

    <!-- Settings Navigation Tabs -->
    <div class="notification-toolbar mb-4" style="margin-bottom: 24px;">
        <div class="notification-type-tabs" style="border-radius: var(--radius-md); padding: 4px;">
            <button type="button" class="notification-tab active" onclick="switchSettingsTab('general', this)">
                <i class="bi bi-building me-1"></i> Company Profile
            </button>
            <button type="button" class="notification-tab" onclick="switchSettingsTab('inventory', this)">
                <i class="bi bi-stack me-1"></i> Stock Rules
            </button>
            <button type="button" class="notification-tab" onclick="switchSettingsTab('billing', this)">
                <i class="bi bi-receipt me-1"></i> Billing &amp; Tax
            </button>
            <button type="button" class="notification-tab" onclick="switchSettingsTab('notifications', this)">
                <i class="bi bi-bell me-1"></i> Notifications
            </button>
            <button type="button" class="notification-tab" onclick="switchSettingsTab('security', this)">
                <i class="bi bi-shield-lock me-1"></i> Security &amp; Backup
            </button>
        </div>
    </div>

    <!-- Tab Section 1: Company Profile -->
    <div id="tab-general" class="settings-tab-pane card">
        <div class="card-header">
            <h3 class="card-title"><i class="bi bi-building me-2 text-primary"></i> Business &amp; Organization Profile</h3>
        </div>
        <div class="card-body">
            <asp:ValidationSummary ID="valGeneral" runat="server" ValidationGroup="GeneralSettings" CssClass="alert alert-danger" HeaderText="Please correct the following errors:" DisplayMode="BulletList" EnableClientScript="false" />
            <div class="form-grid">
                <div class="form-group">
                    <label class="form-label">Company Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" Text="StockForge Hardware Solutions Pvt Ltd"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCompanyName" runat="server" ValidationGroup="GeneralSettings" ControlToValidate="txtCompanyName" ErrorMessage="Company name is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revCompanyName" runat="server" ValidationGroup="GeneralSettings" ControlToValidate="txtCompanyName" ValidationExpression="^[\s\S]{2,100}$" ErrorMessage="Company name must be between 2 and 100 characters." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">GSTIN / Business Registration No. <span class="required">*</span></label>
                    <asp:TextBox ID="txtGstin" runat="server" CssClass="form-control" Text="27AAACS9988K1Z2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvGstin" runat="server" ValidationGroup="GeneralSettings" ControlToValidate="txtGstin" ErrorMessage="GSTIN or business registration number is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revGstin" runat="server" ValidationGroup="GeneralSettings" ControlToValidate="txtGstin" ValidationExpression="^[A-Za-z0-9][A-Za-z0-9&amp;./ -]{4,29}$" ErrorMessage="Registration number must be 5 to 30 characters and contain only letters, numbers, spaces, or - / . &amp;." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Primary Support Email <span class="required">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="admin@stockforge.io"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ValidationGroup="GeneralSettings" ControlToValidate="txtEmail" ErrorMessage="Support email is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ValidationGroup="GeneralSettings" ControlToValidate="txtEmail" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Enter a valid support email address." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Contact Hotline Phone <span class="required">*</span></label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Text="+91 1800-456-7890"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ValidationGroup="GeneralSettings" ControlToValidate="txtPhone" ErrorMessage="Contact phone is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvPhone" runat="server" ValidationGroup="GeneralSettings" ControlToValidate="txtPhone" OnServerValidate="ValidatePhone" ErrorMessage="Phone must contain 7 to 15 digits and only common phone separators." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:CustomValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">System Currency Symbol</label>
                    <asp:DropDownList ID="ddlCurrency" runat="server" CssClass="form-select">
                        <asp:ListItem Value="INR" Selected="True">₹ (INR - Indian Rupee)</asp:ListItem>
                        <asp:ListItem Value="USD">$ (USD - US Dollar)</asp:ListItem>
                        <asp:ListItem Value="EUR">€ (EUR - Euro)</asp:ListItem>
                        <asp:ListItem Value="AED">AED (UAE Dirham)</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Time Zone</label>
                    <asp:DropDownList ID="ddlTimezone" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Asia/Kolkata" Selected="True">(UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi</asp:ListItem>
                        <asp:ListItem Value="UTC">(UTC+00:00) Coordinated Universal Time</asp:ListItem>
                        <asp:ListItem Value="America/New_York">(UTC-05:00) Eastern Time (US &amp; Canada)</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Headquarters Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Text="102 Industrial Hub, Outer Ring Road, MIDC Tech Park, Mumbai, MH - 400072"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revAddress" runat="server" ValidationGroup="GeneralSettings" ControlToValidate="txtAddress" ValidationExpression="^[\s\S]{0,500}$" ErrorMessage="Headquarters address cannot exceed 500 characters." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="pt-3 border-top mt-2 text-end">
                <asp:Button ID="btnSaveGeneral" runat="server" Text="Save Profile Settings" CssClass="btn-primary" CausesValidation="false" OnClick="btnSaveGeneral_Click" />
            </div>
        </div>
    </div>

    <!-- Tab Section 2: Stock & Inventory Rules -->
    <div id="tab-inventory" class="settings-tab-pane card" style="display: none;">
        <div class="card-header">
            <h3 class="card-title"><i class="bi bi-stack me-2 text-primary"></i> Stock &amp; Inventory Management Policies</h3>
        </div>
        <div class="card-body">
            <asp:ValidationSummary ID="valInventory" runat="server" ValidationGroup="InventorySettings" CssClass="alert alert-danger" HeaderText="Please correct the following errors:" DisplayMode="BulletList" EnableClientScript="false" />
            <div class="form-grid">
                <div class="form-group">
                    <label class="form-label">Default Low Stock Alert Threshold (Units)</label>
                    <asp:TextBox ID="txtLowStockThreshold" runat="server" CssClass="form-control" Text="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLowStockThreshold" runat="server" ValidationGroup="InventorySettings" ControlToValidate="txtLowStockThreshold" ErrorMessage="Low-stock threshold is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revLowStockThreshold" runat="server" ValidationGroup="InventorySettings" ControlToValidate="txtLowStockThreshold" ValidationExpression="^(0|[1-9][0-9]{0,6})$" ErrorMessage="Low-stock threshold must be a whole number from 0 to 9999999." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <small class="text-secondary">Triggers system alert when product stock drops below this quantity.</small>
                </div>
                <div class="form-group">
                    <label class="form-label">Inventory Valuation Method</label>
                    <asp:DropDownList ID="ddlValuationMethod" runat="server" CssClass="form-select">
                        <asp:ListItem Value="FIFO" Selected="True">FIFO (First In, First Out)</asp:ListItem>
                        <asp:ListItem Value="LIFO">LIFO (Last In, First Out)</asp:ListItem>
                        <asp:ListItem Value="WeightedAvg">Weighted Average Cost</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">SKU Auto-Generation Format Pattern</label>
                    <asp:TextBox ID="txtSkuPattern" runat="server" CssClass="form-control" Text="HW-{CAT}-{NUM}"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSkuPattern" runat="server" ValidationGroup="InventorySettings" ControlToValidate="txtSkuPattern" ErrorMessage="SKU format pattern is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revSkuPattern" runat="server" ValidationGroup="InventorySettings" ControlToValidate="txtSkuPattern" ValidationExpression="^[A-Za-z0-9{}_\-]{1,50}$" ErrorMessage="SKU pattern may contain letters, numbers, braces, hyphens, and underscores (maximum 50 characters)." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <small class="text-secondary">Example output: <code>HW-BSH-501</code></small>
                </div>
                <div class="form-group">
                    <label class="form-label">Negative Stock Policy</label>
                    <asp:DropDownList ID="ddlNegativeStock" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Block" Selected="True">Strict Block (Prevent sales if stock is zero)</asp:ListItem>
                        <asp:ListItem Value="AllowWithWarning">Allow sales with Low Stock Warning</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group full-width">
                    <div class="d-flex align-items-center justify-content-between p-3 bg-light rounded border">
                        <div>
                            <strong>Automatic Reorder Trigger Notifications</strong>
                            <div class="text-secondary small">Automatically generate purchase draft orders when SKUs reach critical stock limits.</div>
                        </div>
                        <asp:CheckBox ID="chkAutoReorder" runat="server" Checked="true" />
                    </div>
                </div>
            </div>
            <div class="pt-3 border-top mt-2 text-end">
                <asp:Button ID="btnSaveInventory" runat="server" Text="Save Inventory Rules" CssClass="btn-primary" CausesValidation="false" OnClick="btnSaveInventory_Click" />
            </div>
        </div>
    </div>

    <!-- Tab Section 3: Billing & Tax -->
    <div id="tab-billing" class="settings-tab-pane card" style="display: none;">
        <div class="card-header">
            <h3 class="card-title"><i class="bi bi-receipt me-2 text-primary"></i> Invoicing, Billing &amp; Tax Configuration</h3>
        </div>
        <div class="card-body">
            <asp:ValidationSummary ID="valBilling" runat="server" ValidationGroup="BillingSettings" CssClass="alert alert-danger" HeaderText="Please correct the following errors:" DisplayMode="BulletList" EnableClientScript="false" />
            <div class="form-grid">
                <div class="form-group">
                    <label class="form-label">Default GST Tax Rate (%)</label>
                    <asp:DropDownList ID="ddlGstRate" runat="server" CssClass="form-select">
                        <asp:ListItem Value="18" Selected="True">18% (Standard Hardware GST)</asp:ListItem>
                        <asp:ListItem Value="12">12% (Reduced Tax Bracket)</asp:ListItem>
                        <asp:ListItem Value="28">28% (Luxury / Power Machinery)</asp:ListItem>
                        <asp:ListItem Value="5">5% (Essential Supplies)</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Invoice Number Prefix</label>
                    <asp:TextBox ID="txtInvoicePrefix" runat="server" CssClass="form-control" Text="INV-2026-"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInvoicePrefix" runat="server" ValidationGroup="BillingSettings" ControlToValidate="txtInvoicePrefix" ErrorMessage="Invoice number prefix is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revInvoicePrefix" runat="server" ValidationGroup="BillingSettings" ControlToValidate="txtInvoicePrefix" ValidationExpression="^[A-Za-z0-9_-]{1,20}$" ErrorMessage="Invoice prefix may contain letters, numbers, hyphens, or underscores (maximum 20 characters)." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Default Credit Payment Terms</label>
                    <asp:DropDownList ID="ddlDefaultTerms" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Net 30" Selected="True">Net 30 Days</asp:ListItem>
                        <asp:ListItem Value="Net 15">Net 15 Days</asp:ListItem>
                        <asp:ListItem Value="Immediate">Immediate Cash/UPI</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Receipt Printing Layout Format</label>
                    <asp:DropDownList ID="ddlPrintFormat" runat="server" CssClass="form-select">
                        <asp:ListItem Value="A4" Selected="True">Standard A4 Invoice Document</asp:ListItem>
                        <asp:ListItem Value="Thermal80">Thermal POS Receipt (80mm Paper)</asp:ListItem>
                        <asp:ListItem Value="Thermal58">Mini Thermal Receipt (58mm Paper)</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Invoice Footer Legal Notes &amp; Terms</label>
                    <asp:TextBox ID="txtInvoiceFooter" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Text="Thank you for choosing StockForge Hardware. Goods once sold carry manufacturer warranty terms. Please retain invoice copy for service claims."></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revInvoiceFooter" runat="server" ValidationGroup="BillingSettings" ControlToValidate="txtInvoiceFooter" ValidationExpression="^[\s\S]{0,1000}$" ErrorMessage="Invoice footer cannot exceed 1000 characters." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="pt-3 border-top mt-2 text-end">
                <asp:Button ID="btnSaveBilling" runat="server" Text="Save Billing Configuration" CssClass="btn-primary" CausesValidation="false" OnClick="btnSaveBilling_Click" />
            </div>
        </div>
    </div>

    <!-- Tab Section 4: Notifications -->
    <div id="tab-notifications" class="settings-tab-pane card" style="display: none;">
        <div class="card-header">
            <h3 class="card-title"><i class="bi bi-bell me-2 text-primary"></i> Alert Preferences &amp; Email Subscriptions</h3>
        </div>
        <div class="card-body">
            <div class="d-flex flex-column gap-3">
                <div class="d-flex align-items-center justify-content-between p-3 bg-light rounded border">
                    <div>
                        <strong>Low Stock Email Alerts</strong>
                        <div class="text-secondary small">Send instant email notifications to inventory managers when stock reaches alert threshold.</div>
                    </div>
                    <asp:CheckBox ID="chkLowStockNotif" runat="server" Checked="true" />
                </div>
                <div class="d-flex align-items-center justify-content-between p-3 bg-light rounded border">
                    <div>
                        <strong>Daily Sales &amp; Stock Summary Digest</strong>
                        <div class="text-secondary small">Receive daily automated PDF report summarizing total sales, top products, and low stock items.</div>
                    </div>
                    <asp:CheckBox ID="chkDailyDigest" runat="server" Checked="true" />
                </div>
                <div class="d-flex align-items-center justify-content-between p-3 bg-light rounded border">
                    <div>
                        <strong>Purchase Order Status Alerts</strong>
                        <div class="text-secondary small">Notify procurement team when vendor updates delivery status or PO is fulfilled.</div>
                    </div>
                    <asp:CheckBox ID="chkPoNotif" runat="server" Checked="true" />
                </div>
                <div class="d-flex align-items-center justify-content-between p-3 bg-light rounded border">
                    <div>
                        <strong>Security &amp; Audit Log Notifications</strong>
                        <div class="text-secondary small">Receive alerts for unauthorized login attempts or administrative settings updates.</div>
                    </div>
                    <asp:CheckBox ID="chkAuditNotif" runat="server" Checked="true" />
                </div>
            </div>
            <div class="pt-3 border-top mt-3 text-end">
                <asp:Button ID="btnSaveNotif" runat="server" Text="Save Notification Preferences" CssClass="btn-primary" CausesValidation="false" OnClick="btnSaveNotif_Click" />
            </div>
        </div>
    </div>

    <!-- Tab Section 5: Security & Backup -->
    <div id="tab-security" class="settings-tab-pane card" style="display: none;">
        <div class="card-header">
            <h3 class="card-title"><i class="bi bi-shield-lock me-2 text-primary"></i> System Security &amp; Database Backup</h3>
        </div>
        <div class="card-body">
            <div class="form-grid mb-4">
                <div class="form-group">
                    <label class="form-label">Session Idle Timeout</label>
                    <asp:DropDownList ID="ddlSessionTimeout" runat="server" CssClass="form-select">
                        <asp:ListItem Value="15">15 Minutes</asp:ListItem>
                        <asp:ListItem Value="30" Selected="True">30 Minutes (Recommended)</asp:ListItem>
                        <asp:ListItem Value="60">60 Minutes</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Automated Database Backup Schedule</label>
                    <asp:DropDownList ID="ddlBackupSchedule" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Daily" Selected="True">Daily (At 02:00 AM IST)</asp:ListItem>
                        <asp:ListItem Value="Weekly">Weekly (Every Sunday)</asp:ListItem>
                        <asp:ListItem Value="Disabled">Manual Backups Only</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="d-flex align-items-center justify-content-between p-3 bg-light rounded border mb-3">
                <div>
                    <strong>Enforce Two-Factor Authentication (2FA) for Admins</strong>
                    <div class="text-secondary small">Require authenticator app code for users with Administrator role.</div>
                </div>
                <asp:CheckBox ID="chkRequire2FA" runat="server" Checked="true" />
            </div>

            <div class="p-3 bg-primary-light rounded border border-success d-flex align-items-center justify-content-between">
                <div>
                    <strong class="text-success"><i class="bi bi-database-check me-1"></i> Database Status: Healthy</strong>
                    <div class="text-secondary small">Last successful automated backup: <strong>Today at 02:00 AM IST</strong> (File Size: 4.8 MB)</div>
                </div>
                <asp:Button ID="btnManualBackup" runat="server" Text="Backup Database Now" CssClass="btn-secondary btn-sm" />
            </div>

            <div class="pt-3 border-top mt-3 text-end">
                <asp:Button ID="btnSaveSecurity" runat="server" Text="Save Security Settings" CssClass="btn-primary" CausesValidation="false" OnClick="btnSaveSecurity_Click" />
            </div>
        </div>
    </div>

    <!-- Client-side Tab Switcher Script -->
    <script type="text/javascript">
        function switchSettingsTab(tabId, tabBtn) {
            // Hide all tab panes
            $('.settings-tab-pane').hide();
            // Remove active class from all buttons
            $('.notification-tab').removeClass('active');

            // Show selected tab pane & set active button
            $('#tab-' + tabId).fadeIn(150);
            $(tabBtn).addClass('active');
        }
    </script>
</asp:Content>
