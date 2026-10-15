<%@ Page Title="System Features" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Features.aspx.cs" Inherits="Stock_Forgeeee.Features" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-shell">
        <!-- Page Header -->
        <div class="page-header" style="margin-bottom: 28px;">
            <div>
                <span class="eyebrow" style="color: var(--primary); font-weight: 700; text-transform: uppercase; font-size: 11px; letter-spacing: 0.8px;">StockForge Platform Capabilities</span>
                <h1 class="page-title" style="font-size: 26px; font-weight: 800; color: var(--text-primary); margin: 6px 0 8px;">Enterprise Hardware Management Features</h1>
                <p class="page-subtitle" style="font-size: 14px; color: var(--text-secondary); max-width: 720px; line-height: 1.6; margin: 0;">
                    Engineered specifically for hardware retail stores, tool supply houses, plumbing & electrical distributors, and contractor trade depots.
                </p>
            </div>
            <div class="header-actions" style="display: flex; gap: 12px; align-items: center;">
                <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="btn-secondary" style="display: inline-flex; align-items: center; gap: 8px; padding: 9px 16px; border-radius: 6px; font-weight: 600; font-size: 13px;">
                    <i class="bi bi-globe"></i>
                    <span>Public Landing Page</span>
                </a>
                <a href="<%= ResolveUrl("~/Dashboard.aspx") %>" class="btn-primary" style="display: inline-flex; align-items: center; gap: 8px; padding: 9px 18px; border-radius: 6px; font-weight: 600; font-size: 13px;">
                    <i class="bi bi-grid"></i>
                    <span>Open Dashboard</span>
                </a>
            </div>
        </div>

        <!-- Capability Showcase Cards -->
        <div class="inventory-metric-grid" style="grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 20px;">
            <!-- Card 1: Barcode & SKU Lookup -->
            <div class="inventory-metric-card" style="padding: 26px; border-radius: 12px; border: 1px solid var(--border); background: var(--surface); transition: transform 0.18s ease, box-shadow 0.18s ease;">
                <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 18px;">
                    <div style="width: 50px; height: 50px; border-radius: 12px; background: rgba(76, 175, 125, 0.14); display: flex; align-items: center; justify-content: center; color: #4CAF7D; font-size: 24px;">
                        <i class="bi bi-qr-code-scan"></i>
                    </div>
                    <span style="font-size: 11px; font-weight: 700; background: #EAF8EF; color: #15803D; padding: 4px 10px; border-radius: 999px; text-transform: uppercase;">Hardware POS</span>
                </div>
                <h3 style="font-size: 17px; font-weight: 700; margin: 0 0 10px; color: var(--text-primary);">Barcode & Hardware SKU Scanner</h3>
                <p style="font-size: 13.5px; color: var(--text-secondary); line-height: 1.6; margin: 0 0 16px;">
                    Instant SKU lookup with automatic barcode scanning support. Compatible with all standard USB and Bluetooth barcode readers for fast contractor checkout and quick warehouse bin audits.
                </p>
                <div style="display: flex; gap: 8px; flex-wrap: wrap;">
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Universal SKUs</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">USB Scanners</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Bin Locations</span>
                </div>
            </div>

            <!-- Card 2: Automated Low Stock Alerts -->
            <div class="inventory-metric-card" style="padding: 26px; border-radius: 12px; border: 1px solid var(--border); background: var(--surface); transition: transform 0.18s ease, box-shadow 0.18s ease;">
                <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 18px;">
                    <div style="width: 50px; height: 50px; border-radius: 12px; background: rgba(59, 130, 246, 0.14); display: flex; align-items: center; justify-content: center; color: #3B82F6; font-size: 24px;">
                        <i class="bi bi-bell-fill"></i>
                    </div>
                    <span style="font-size: 11px; font-weight: 700; background: #EFF6FF; color: #1D4ED8; padding: 4px 10px; border-radius: 999px; text-transform: uppercase;">Real-Time Alert</span>
                </div>
                <h3 style="font-size: 17px; font-weight: 700; margin: 0 0 10px; color: var(--text-primary);">Automated Low Stock Alerts</h3>
                <p style="font-size: 13.5px; color: var(--text-secondary); line-height: 1.6; margin: 0 0 16px;">
                    Set custom minimum threshold limits per item. Receive instant notifications on your topbar and stock dashboard before running out of high-demand fasteners, power tools, or consumables.
                </p>
                <div style="display: flex; gap: 8px; flex-wrap: wrap;">
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Min Thresholds</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Notification Bell</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Zero Stockout</span>
                </div>
            </div>

            <!-- Card 3: Supplier Purchase Orders -->
            <div class="inventory-metric-card" style="padding: 26px; border-radius: 12px; border: 1px solid var(--border); background: var(--surface); transition: transform 0.18s ease, box-shadow 0.18s ease;">
                <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 18px;">
                    <div style="width: 50px; height: 50px; border-radius: 12px; background: rgba(168, 85, 247, 0.14); display: flex; align-items: center; justify-content: center; color: #A855F7; font-size: 24px;">
                        <i class="bi bi-truck"></i>
                    </div>
                    <span style="font-size: 11px; font-weight: 700; background: #FAF5FF; color: #7E22CE; padding: 4px 10px; border-radius: 999px; text-transform: uppercase;">Procurement</span>
                </div>
                <h3 style="font-size: 17px; font-weight: 700; margin: 0 0 10px; color: var(--text-primary);">Supplier Purchase Orders</h3>
                <p style="font-size: 13.5px; color: var(--text-secondary); line-height: 1.6; margin: 0 0 16px;">
                    Streamline purchase order generation for hardware vendors. Track incoming stock shipments, vendor payment statuses, and partial deliveries directly into active inventory.
                </p>
                <div style="display: flex; gap: 8px; flex-wrap: wrap;">
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Vendor Directory</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">PO Print & PDF</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Goods Receipt</span>
                </div>
            </div>

            <!-- Card 4: POS Billing & Invoicing -->
            <div class="inventory-metric-card" style="padding: 26px; border-radius: 12px; border: 1px solid var(--border); background: var(--surface); transition: transform 0.18s ease, box-shadow 0.18s ease;">
                <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 18px;">
                    <div style="width: 50px; height: 50px; border-radius: 12px; background: rgba(245, 158, 11, 0.14); display: flex; align-items: center; justify-content: center; color: #F59E0B; font-size: 24px;">
                        <i class="bi bi-receipt"></i>
                    </div>
                    <span style="font-size: 11px; font-weight: 700; background: #FEF3C7; color: #B45309; padding: 4px 10px; border-radius: 999px; text-transform: uppercase;">Billing</span>
                </div>
                <h3 style="font-size: 17px; font-weight: 700; margin: 0 0 10px; color: var(--text-primary);">POS Billing & Itemized Invoices</h3>
                <p style="font-size: 13.5px; color: var(--text-secondary); line-height: 1.6; margin: 0 0 16px;">
                    Create sales receipts for retail walk-in buyers or contractor trade accounts. Apply contractor discounts, customize sales tax rates, and print clean thermal or standard PDF invoices.
                </p>
                <div style="display: flex; gap: 8px; flex-wrap: wrap;">
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Trade Accounts</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Itemized Tax</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Auto Stock Deduct</span>
                </div>
            </div>

            <!-- Card 5: Role-Based Access Control -->
            <div class="inventory-metric-card" style="padding: 26px; border-radius: 12px; border: 1px solid var(--border); background: var(--surface); transition: transform 0.18s ease, box-shadow 0.18s ease;">
                <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 18px;">
                    <div style="width: 50px; height: 50px; border-radius: 12px; background: rgba(236, 72, 153, 0.14); display: flex; align-items: center; justify-content: center; color: #EC4899; font-size: 24px;">
                        <i class="bi bi-shield-check"></i>
                    </div>
                    <span style="font-size: 11px; font-weight: 700; background: #FCE7F3; color: #BE185D; padding: 4px 10px; border-radius: 999px; text-transform: uppercase;">Security</span>
                </div>
                <h3 style="font-size: 17px; font-weight: 700; margin: 0 0 10px; color: var(--text-primary);">Role-Based Staff Access (RBAC)</h3>
                <p style="font-size: 13.5px; color: var(--text-secondary); line-height: 1.6; margin: 0 0 16px;">
                    Configure granular permissions for Administrators, Warehouse Managers, and Cashiers. Protect vendor wholesale costs, profit margins, and system configuration settings.
                </p>
                <div style="display: flex; gap: 8px; flex-wrap: wrap;">
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Admin & Manager</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Cashier Portal</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Audit Trails</span>
                </div>
            </div>

            <!-- Card 6: Valuation & Analytics -->
            <div class="inventory-metric-card" style="padding: 26px; border-radius: 12px; border: 1px solid var(--border); background: var(--surface); transition: transform 0.18s ease, box-shadow 0.18s ease;">
                <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 18px;">
                    <div style="width: 50px; height: 50px; border-radius: 12px; background: rgba(16, 185, 129, 0.14); display: flex; align-items: center; justify-content: center; color: #10B981; font-size: 24px;">
                        <i class="bi bi-graph-up-arrow"></i>
                    </div>
                    <span style="font-size: 11px; font-weight: 700; background: #D1FAE5; color: #047857; padding: 4px 10px; border-radius: 999px; text-transform: uppercase;">Analytics</span>
                </div>
                <h3 style="font-size: 17px; font-weight: 700; margin: 0 0 10px; color: var(--text-primary);">Valuation & Real-Time Reports</h3>
                <p style="font-size: 13.5px; color: var(--text-secondary); line-height: 1.6; margin: 0 0 16px;">
                    Gain full visibility into stock turnover rates, profit breakdown by department (Tools, Electrical, Plumbing, Building Materials), and live total inventory asset valuation.
                </p>
                <div style="display: flex; gap: 8px; flex-wrap: wrap;">
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Stock Valuation</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">Category Margin</span>
                    <span style="font-size: 11.5px; background: var(--surface-muted); color: var(--text-secondary); padding: 3px 8px; border-radius: 4px;">CSV Export</span>
                </div>
            </div>
        </div>

        <!-- Bottom Call to Action Card -->
        <div class="panel" style="margin-top: 32px; padding: 28px 32px; background: linear-gradient(135deg, rgba(61, 168, 111, 0.08) 0%, rgba(59, 130, 246, 0.06) 100%); border: 1px solid rgba(61, 168, 111, 0.25); border-radius: 12px; display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap; gap: 20px;">
            <div>
                <h3 style="font-size: 18px; font-weight: 700; color: var(--text-primary); margin: 0 0 6px;">Ready to Explore Live Inventory?</h3>
                <p style="font-size: 13.5px; color: var(--text-secondary); margin: 0;">Access your product database, manage supplier catalog, and monitor real-time stock levels.</p>
            </div>
            <div style="display: flex; gap: 12px;">
                <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" class="btn-primary" style="display: inline-flex; align-items: center; gap: 8px; padding: 10px 20px; border-radius: 6px; font-weight: 600; font-size: 13.5px;">
                    <i class="bi bi-box-seam"></i>
                    <span>Hardware Catalog</span>
                </a>
                <a href="<%= ResolveUrl("~/Sales/NewSale.aspx") %>" class="btn-secondary" style="display: inline-flex; align-items: center; gap: 8px; padding: 10px 18px; border-radius: 6px; font-weight: 600; font-size: 13.5px;">
                    <i class="bi bi-cart-plus"></i>
                    <span>New Sale (POS)</span>
                </a>
            </div>
        </div>
    </div>
</asp:Content>
