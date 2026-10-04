<%@ Page Title="Settings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Stock_Forgeeee.Settings.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <span>Settings</span>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">General</span>
    </div>

    <!-- Page Header (Matching StockForge Settings.png) -->
    <div class="sf-page-header" style="margin-bottom: 16px;">
        <div>
            <h1 class="sf-page-title">Settings</h1>
            <div class="sf-page-subtitle">Manage StockForge business and system preferences.</div>
        </div>
    </div>

    <!-- Navigation Tabs -->
    <div style="border-bottom: 1px solid #E5E7EB; margin-bottom: 24px; display: flex; gap: 24px;">
        <a href="javascript:void(0)" style="padding-bottom: 10px; font-size: 13.5px; font-weight: 600; color: #006C44; border-bottom: 2px solid #006C44; text-decoration: none;">
            General
        </a>
        <a href="javascript:void(0)" style="padding-bottom: 10px; font-size: 13.5px; font-weight: 500; color: #6B7280; text-decoration: none;">
            Inventory
        </a>
        <a href="javascript:void(0)" style="padding-bottom: 10px; font-size: 13.5px; font-weight: 500; color: #6B7280; text-decoration: none;">
            Sales
        </a>
        <a href="javascript:void(0)" style="padding-bottom: 10px; font-size: 13.5px; font-weight: 500; color: #6B7280; text-decoration: none;">
            Purchases
        </a>
    </div>

    <!-- Card 1: Business Profile -->
    <div class="sf-card" style="margin-bottom: 20px; padding: 24px;">
        <div class="sf-group-title">
            <i class="bi bi-shop"></i> Business Profile
        </div>

        <div style="margin-bottom: 16px;">
            <label class="sf-form-label">Business Name</label>
            <input type="text" class="sf-input" value="StockForge Hardware Supplies" />
        </div>

        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 16px;">
            <div>
                <label class="sf-form-label">Business Phone</label>
                <div style="position: relative;">
                    <i class="bi bi-telephone text-muted" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%);"></i>
                    <input type="tel" class="sf-input" value="+91 98765 43210" style="padding-left: 36px;" />
                </div>
            </div>
            <div>
                <label class="sf-form-label">Business Email</label>
                <div style="position: relative;">
                    <i class="bi bi-envelope text-muted" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%);"></i>
                    <input type="email" class="sf-input" value="contact@stockforge.in" style="padding-left: 36px;" />
                </div>
            </div>
        </div>

        <div>
            <label class="sf-form-label">Address</label>
            <textarea class="sf-textarea" rows="2">123 Industrial Estate, Ahmedabad, Gujarat</textarea>
        </div>
    </div>

    <!-- Card 2: Localization & Formats -->
    <div class="sf-card" style="margin-bottom: 30px; padding: 24px;">
        <div class="sf-group-title">
            <i class="bi bi-globe"></i> Localization &amp; Formats
        </div>

        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 16px;">
            <div>
                <label class="sf-form-label">Base Currency</label>
                <div style="position: relative;">
                    <input type="text" class="sf-input" value="Indian Rupee (₹ / INR)" readonly style="padding-right: 32px;" />
                    <i class="bi bi-lock text-muted" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%);"></i>
                </div>
                <div style="font-size: 11.5px; color: #6B7280; margin-top: 4px;">Currency is locked after initial setup.</div>
            </div>
            <div>
                <label class="sf-form-label">Time Zone</label>
                <select class="sf-select" style="width: 100%;">
                    <option selected>Asia/Kolkata (IST)</option>
                    <option>UTC (GMT+0)</option>
                </select>
            </div>
        </div>

        <div style="max-width: 48%;">
            <label class="sf-form-label">Date Format</label>
            <select class="sf-select" style="width: 100%;">
                <option selected>DD/MM/YYYY</option>
                <option>MM/DD/YYYY</option>
                <option>YYYY-MM-DD</option>
            </select>
        </div>
    </div>

    <!-- Sticky Bottom Bar (Matching StockForge Settings.png) -->
    <div class="sf-sticky-bottom-bar">
        <div style="display: flex; align-items: center; gap: 8px; font-size: 13px; color: #4B5563;">
            <span style="width: 7px; height: 7px; border-radius: 50%; background: #EF4444;"></span>
            <span>You have unsaved changes</span>
        </div>
        <div style="display: flex; gap: 10px;">
            <button type="button" class="btn-outline-action">Discard</button>
            <asp:Button ID="btnSaveSettings" runat="server" Text="Save Changes" CssClass="btn-success-dark" />
        </div>
    </div>
</asp:Content>
