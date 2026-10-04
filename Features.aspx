<%@ Page Title="System Features" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Features.aspx.cs" Inherits="Stock_Forgeeee.Features" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-shell">
        <div class="page-header">
            <div>
                <span class="eyebrow">StockForge Platform Capabilities</span>
                <h1 class="page-title">Enterprise Hardware Management Features</h1>
                <p class="page-subtitle">Built specifically for hardware retailers, power tool vendors, building material suppliers, and electrical distributors.</p>
            </div>
            <div class="header-actions">
                <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="btn-secondary">
                    <i class="bi bi-globe"></i>
                    <span>Landing Page</span>
                </a>
            </div>
        </div>

        <!-- Feature Grid -->
        <div class="inventory-metric-grid" style="grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));">
            <div class="inventory-metric-card" style="padding: 24px;">
                <div style="width: 48px; height: 48px; border-radius: 12px; background: rgba(76, 175, 125, 0.15); display: flex; align-items: center; justify-content: center; color: #4CAF7D; font-size: 24px; margin-bottom: 16px;">
                    <i class="bi bi-qr-code-scan"></i>
                </div>
                <h3 style="font-size: 18px; font-weight: 700; margin: 0 0 8px;">Barcode & Hardware SKU Scanner</h3>
                <p style="font-size: 13px; color: var(--text-secondary); line-height: 1.6; margin: 0;">
                    Instant SKU lookup with automatic barcode scanning support. Compatible with all standard USB and Bluetooth barcode readers for fast checkout and stock audits.
                </p>
            </div>

            <div class="inventory-metric-card" style="padding: 24px;">
                <div style="width: 48px; height: 48px; border-radius: 12px; background: rgba(59, 130, 246, 0.15); display: flex; align-items: center; justify-content: center; color: #3B82F6; font-size: 24px; margin-bottom: 16px;">
                    <i class="bi bi-bell-fill"></i>
                </div>
                <h3 style="font-size: 18px; font-weight: 700; margin: 0 0 8px;">Automated Low Stock Alerts</h3>
                <p style="font-size: 13px; color: var(--text-secondary); line-height: 1.6; margin: 0;">
                    Set custom minimum threshold limits per item. Receive real-time notifications on your topbar and stock dashboard before running out of high-demand items.
                </p>
            </div>

            <div class="inventory-metric-card" style="padding: 24px;">
                <div style="width: 48px; height: 48px; border-radius: 12px; background: rgba(168, 85, 247, 0.15); display: flex; align-items: center; justify-content: center; color: #A855F7; font-size: 24px; margin-bottom: 16px;">
                    <i class="bi bi-truck"></i>
                </div>
                <h3 style="font-size: 18px; font-weight: 700; margin: 0 0 8px;">Supplier Purchase Orders</h3>
                <p style="font-size: 13px; color: var(--text-secondary); line-height: 1.6; margin: 0;">
                    Streamline purchase order generation for hardware vendors. Track incoming stock shipments, vendor payment statuses, and partial deliveries.
                </p>
            </div>

            <div class="inventory-metric-card" style="padding: 24px;">
                <div style="width: 48px; height: 48px; border-radius: 12px; background: rgba(245, 158, 11, 0.15); display: flex; align-items: center; justify-content: center; color: #F59E0B; font-size: 24px; margin-bottom: 16px;">
                    <i class="bi bi-receipt"></i>
                </div>
                <h3 style="font-size: 18px; font-weight: 700; margin: 0 0 8px;">POS Billing & PDF Receipts</h3>
                <p style="font-size: 13px; color: var(--text-secondary); line-height: 1.6; margin: 0;">
                    Create sales receipts for retail hardware buyers or contractor trade accounts. Apply trade discounts, tax rates, and export itemized invoices.
                </p>
            </div>

            <div class="inventory-metric-card" style="padding: 24px;">
                <div style="width: 48px; height: 48px; border-radius: 12px; background: rgba(236, 72, 153, 0.15); display: flex; align-items: center; justify-content: center; color: #EC4899; font-size: 24px; margin-bottom: 16px;">
                    <i class="bi bi-shield-check"></i>
                </div>
                <h3 style="font-size: 18px; font-weight: 700; margin: 0 0 8px;">Role-Based Staff Access</h3>
                <p style="font-size: 13px; color: var(--text-secondary); line-height: 1.6; margin: 0;">
                    Configure distinct user permissions for System Admins, Inventory Managers, and Cashiers to ensure sensitive profit margins and settings remain protected.
                </p>
            </div>

            <div class="inventory-metric-card" style="padding: 24px;">
                <div style="width: 48px; height: 48px; border-radius: 12px; background: rgba(16, 185, 129, 0.15); display: flex; align-items: center; justify-content: center; color: #10B981; font-size: 24px; margin-bottom: 16px;">
                    <i class="bi bi-graph-up-arrow"></i>
                </div>
                <h3 style="font-size: 18px; font-weight: 700; margin: 0 0 8px;">Valuation & Analytics Reports</h3>
                <p style="font-size: 13px; color: var(--text-secondary); line-height: 1.6; margin: 0;">
                    Gain full visibility into stock turnover rates, profit breakdown by category, fast-moving items, and stock valuation totals.
                </p>
            </div>
        </div>
    </div>
</asp:Content>
