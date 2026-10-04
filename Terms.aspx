<%@ Page Title="Terms of Service" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Terms.aspx.cs" Inherits="Stock_Forgeeee.Terms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-shell">
        <div class="page-header">
            <div>
                <span class="eyebrow">Legal & Compliance</span>
                <h1 class="page-title">Terms of Service</h1>
                <p class="page-subtitle">Last updated: October 1, 2026. Please read these terms carefully before using StockForge.</p>
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
                <h3 style="font-size: 18px; font-weight: 700; margin-top: 0;">1. Acceptance of Terms</h3>
                <p>By registering for or accessing the StockForge Hardware Management System, you agree to be bound by these Terms of Service. If you do not agree, do not use the application.</p>

                <h3 style="font-size: 18px; font-weight: 700; margin-top: 24px;">2. Hardware Store Account & Security</h3>
                <p>You are responsible for maintaining the confidentiality of your credentials and restricting unauthorized access to your store inventory data. You accept responsibility for all activities that occur under your store account.</p>

                <h3 style="font-size: 18px; font-weight: 700; margin-top: 24px;">3. Data Accuracy & Inventory Records</h3>
                <p>StockForge provides tools to assist hardware store owners in managing stock levels, purchase orders, and sales receipts. Users are responsible for verifying physical stock inventory and pricing accuracy.</p>

                <h3 style="font-size: 18px; font-weight: 700; margin-top: 24px;">4. Limitation of Liability</h3>
                <p>StockForge shall not be held liable for indirect, incidental, or consequential damages resulting from inventory stockouts, supplier order delays, or system downtime.</p>
            </div>
        </div>
    </div>
</asp:Content>
