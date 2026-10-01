<%@ Page Title="Help & Knowledge Base" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="Stock_Forgeeee.Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-shell">
        <div class="page-header">
            <div>
                <span class="eyebrow">Support & Documentation</span>
                <h1 class="page-title">StockForge Help Center</h1>
                <p class="page-subtitle">Learn how to manage inventory, track purchases, set up barcode scanners, and generate hardware reports.</p>
            </div>
            <div class="header-actions">
                <a href="<%= ResolveUrl("~/Dashboard.aspx") %>" class="btn-secondary">
                    <i class="bi bi-arrow-left"></i>
                    <span>Back to Dashboard</span>
                </a>
            </div>
        </div>

        <!-- Help Category Cards -->
        <div class="inventory-metric-grid">
            <div class="inventory-metric-card" style="cursor: pointer;">
                <span class="metric-label"><i class="bi bi-boxes text-primary"></i> Inventory Setup</span>
                <div style="font-size: 16px; font-weight: 700; margin-top: 8px;">Stock & Barcodes</div>
                <p style="font-size: 12px; color: var(--text-secondary); margin: 6px 0 0;">Adding SKUs, categories, and barcode setup.</p>
            </div>

            <div class="inventory-metric-card" style="cursor: pointer;">
                <span class="metric-label"><i class="bi bi-cart-check text-primary"></i> Sales & POS</span>
                <div style="font-size: 16px; font-weight: 700; margin-top: 8px;">Order Processing</div>
                <p style="font-size: 12px; color: var(--text-secondary); margin: 6px 0 0;">Creating receipts, discounts, and customer billing.</p>
            </div>

            <div class="inventory-metric-card" style="cursor: pointer;">
                <span class="metric-label"><i class="bi bi-truck text-primary"></i> Supplier Orders</span>
                <div style="font-size: 16px; font-weight: 700; margin-top: 8px;">Purchase POs</div>
                <p style="font-size: 12px; color: var(--text-secondary); margin: 6px 0 0;">Ordering stock, receiving shipments, and vendor management.</p>
            </div>

            <div class="inventory-metric-card" style="cursor: pointer;">
                <span class="metric-label"><i class="bi bi-shield-lock text-primary"></i> Security & RBAC</span>
                <div style="font-size: 16px; font-weight: 700; margin-top: 8px;">User Roles</div>
                <p style="font-size: 12px; color: var(--text-secondary); margin: 6px 0 0;">Cashier, manager, and administrator permissions.</p>
            </div>
        </div>

        <!-- FAQ Articles Accordion / List -->
        <div class="panel">
            <div class="panel-header">
                <div>
                    <span class="panel-label">Knowledge Base</span>
                    <h3 style="margin: 0; font-size: 16px; font-weight: 700;">Frequently Asked Technical Questions</h3>
                </div>
            </div>
            <div style="padding: 24px;">
                <div class="alert-list" style="padding: 0;">
                    <div class="alert-item" style="background: var(--surface); border-color: var(--border); display: block;">
                        <strong style="font-size: 15px; color: var(--text-primary);"><i class="bi bi-question-circle-fill text-primary" style="margin-right: 8px;"></i> How do I connect a barcode scanner to StockForge?</strong>
                        <p style="font-size: 13px; color: var(--text-secondary); margin: 8px 0 0;">
                            StockForge automatically detects hardware input from any standard USB or Bluetooth barcode scanner. Simply focus on the SKU or product search field and scan any hardware item barcode.
                        </p>
                    </div>

                    <div class="alert-item" style="background: var(--surface); border-color: var(--border); display: block;">
                        <strong style="font-size: 15px; color: var(--text-primary);"><i class="bi bi-question-circle-fill text-primary" style="margin-right: 8px;"></i> What happens when an item reaches minimum stock level?</strong>
                        <p style="font-size: 13px; color: var(--text-secondary); margin: 8px 0 0;">
                            The system will automatically trigger a low-stock alert badge on the Topbar and Notification Panel, and highlight the item in red on the Stock Overview page.
                        </p>
                    </div>

                    <div class="alert-item" style="background: var(--surface); border-color: var(--border); display: block;">
                        <strong style="font-size: 15px; color: var(--text-primary);"><i class="bi bi-question-circle-fill text-primary" style="margin-right: 8px;"></i> How do I export reports to Excel or PDF?</strong>
                        <p style="font-size: 13px; color: var(--text-secondary); margin: 8px 0 0;">
                            Navigate to the Reports module, choose Inventory, Sales, or Purchase valuation report, and click the "Export Data" button at the top right of the page.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
