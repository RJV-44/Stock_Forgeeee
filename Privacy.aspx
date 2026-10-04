<%@ Page Title="Privacy Policy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Privacy.aspx.cs" Inherits="Stock_Forgeeee.Privacy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-shell">
        <div class="page-header">
            <div>
                <span class="eyebrow">Data Security</span>
                <h1 class="page-title">Privacy Policy</h1>
                <p class="page-subtitle">Learn how StockForge protects your hardware store inventory, customer, and supplier data.</p>
            </div>
            <div class="header-actions">
                <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="btn-secondary">
                    <i class="bi bi-house"></i>
                    <span>Landing Page</span>
                </a>
            </div>
        </div>

        <div class="panel">
            <div style="padding: 32px; color: var(--text-primary); line-height: 1.7; font-size: 14px;">
                <h3 style="font-size: 18px; font-weight: 700; margin-top: 0;">1. Information We Collect</h3>
                <p>We collect hardware store information provided during registration, including business name, owner contact details, inventory product SKUs, supplier contacts, and sales transaction logs.</p>

                <h3 style="font-size: 18px; font-weight: 700; margin-top: 24px;">2. How We Use Your Data</h3>
                <p>Your data is strictly utilized to provide stock management, purchase order generation, sales receipts, low-stock notifications, and analytical business reports.</p>

                <h3 style="font-size: 18px; font-weight: 700; margin-top: 24px;">3. Data Protection & Encryption</h3>
                <p>All sensitive information is stored securely using industry-standard ASP.NET security measures, role-based access control, and encrypted database connections.</p>
            </div>
        </div>
    </div>
</asp:Content>
