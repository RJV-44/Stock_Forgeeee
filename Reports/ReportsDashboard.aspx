<%@ Page Title="Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportsDashboard.aspx.cs" Inherits="Stock_Forgeeee.Reports.ReportsDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <span>STOCKFORGE</span>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">REPORTS</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">Reports</h1>
            <div class="sf-page-subtitle">View inventory, purchasing and sales performance reports.</div>
        </div>
        <div class="sf-header-actions">
            <button type="button" class="btn-outline-action">
                <i class="bi bi-calendar3"></i> This Month <i class="bi bi-chevron-down" style="font-size: 11px;"></i>
            </button>
        </div>
    </div>

    <!-- Top 4 Metric Stat Cards -->
    <div class="sf-kpi-grid">
        <div class="sf-kpi-card">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div class="kpi-title">Sales</div>
                <i class="bi bi-graph-up-arrow" style="color: #16A34A; font-size: 14px;"></i>
            </div>
            <div class="kpi-value" style="margin-top: 10px;">₹12,85,400.00</div>
        </div>

        <div class="sf-kpi-card">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div class="kpi-title">Purchases</div>
                <i class="bi bi-box" style="color: #6B7280; font-size: 14px;"></i>
            </div>
            <div class="kpi-value" style="margin-top: 10px;">₹8,45,750.00</div>
        </div>

        <div class="sf-kpi-card">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div class="kpi-title">Stock Value</div>
                <i class="bi bi-credit-card-2-front" style="color: #6B7280; font-size: 14px;"></i>
            </div>
            <div class="kpi-value" style="margin-top: 10px;">₹24,68,300.00</div>
        </div>

        <div class="sf-kpi-card">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div class="kpi-title">Low Stock Items</div>
                <i class="bi bi-exclamation-triangle" style="color: #DC2626; font-size: 14px;"></i>
            </div>
            <div class="kpi-value" style="margin-top: 10px; color: #DC2626;">18</div>
        </div>
    </div>

    <!-- 2x2 Report Cards Grid (Matching StockForge Reports Dashboard.png) -->
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 30px;">
        <!-- Sales Report Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px; display: flex; flex-direction: column; justify-content: space-between;">
            <div>
                <div style="display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 700; color: #111827;">
                    <i class="bi bi-graph-up text-success"></i> Sales Report
                </div>
                <div style="font-size: 12.5px; color: #6B7280; margin-top: 4px; margin-bottom: 16px;">
                    Sales performance by date, customer and product.
                </div>
                <!-- Sparkline / Area preview -->
                <div style="height: 60px; background: #F9FAFB; border-radius: 6px; padding: 8px; display: flex; align-items: flex-end; gap: 4px; margin-bottom: 16px;">
                    <svg viewBox="0 0 200 40" style="width: 100%; height: 100%;" preserveAspectRatio="none">
                        <defs>
                            <linearGradient id="salesGrad" x1="0" y1="0" x2="0" y2="1">
                                <stop offset="0%" stop-color="#4CAF7D" stop-opacity="0.3" />
                                <stop offset="100%" stop-color="#4CAF7D" stop-opacity="0.0" />
                            </linearGradient>
                        </defs>
                        <path d="M 0,25 Q 40,30 80,18 T 160,10 L 200,14 L 200,40 L 0,40 Z" fill="url(#salesGrad)" />
                        <path d="M 0,25 Q 40,30 80,18 T 160,10 L 200,14" fill="none" stroke="#4CAF7D" stroke-width="2" />
                    </svg>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Reports/SalesReport.aspx") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 6px;">
                    View Report &rarr;
                </a>
            </div>
        </div>

        <!-- Purchase Report Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px; display: flex; flex-direction: column; justify-content: space-between;">
            <div>
                <div style="display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 700; color: #111827;">
                    <i class="bi bi-file-earmark-text text-secondary"></i> Purchase Report
                </div>
                <div style="font-size: 12.5px; color: #6B7280; margin-top: 4px; margin-bottom: 16px;">
                    Purchase spending and supplier activity.
                </div>
                <!-- Mini Bar preview -->
                <div style="height: 60px; background: #F9FAFB; border-radius: 6px; padding: 12px 16px; display: flex; align-items: flex-end; justify-content: space-between; gap: 12px; margin-bottom: 16px;">
                    <div style="height: 12px; width: 40px; background: #E5E7EB; border-radius: 3px;"></div>
                    <div style="height: 24px; width: 40px; background: #4CAF7D; border-radius: 3px;"></div>
                    <div style="height: 14px; width: 40px; background: #E5E7EB; border-radius: 3px;"></div>
                    <div style="height: 28px; width: 40px; background: #4CAF7D; border-radius: 3px;"></div>
                    <div style="height: 16px; width: 40px; background: #E5E7EB; border-radius: 3px;"></div>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Reports/PurchaseReport.aspx") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 6px;">
                    View Report &rarr;
                </a>
            </div>
        </div>

        <!-- Inventory Report Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px; display: flex; flex-direction: column; justify-content: space-between;">
            <div>
                <div style="display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 700; color: #111827;">
                    <i class="bi bi-box-seam text-secondary"></i> Inventory Report
                </div>
                <div style="font-size: 12.5px; color: #6B7280; margin-top: 4px; margin-bottom: 16px;">
                    Stock levels, stock value and inventory movement.
                </div>
                <!-- Horizontal Progress Bars preview -->
                <div style="background: #F9FAFB; border-radius: 6px; padding: 14px 16px; display: flex; flex-direction: column; gap: 8px; margin-bottom: 16px;">
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <div style="flex: 1; height: 8px; background: #E5E7EB; border-radius: 4px; overflow: hidden;">
                            <div style="width: 88%; height: 100%; background: #4CAF7D;"></div>
                        </div>
                        <span style="font-size: 11px; color: #6B7280;">88%</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <div style="flex: 1; height: 8px; background: #E5E7EB; border-radius: 4px; overflow: hidden;">
                            <div style="width: 45%; height: 100%; background: #9CA3AF;"></div>
                        </div>
                        <span style="font-size: 11px; color: #6B7280;">45%</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <div style="flex: 1; height: 8px; background: #E5E7EB; border-radius: 4px; overflow: hidden;">
                            <div style="width: 65%; height: 100%; background: #4CAF7D;"></div>
                        </div>
                        <span style="font-size: 11px; color: #6B7280;">65%</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <div style="flex: 1; height: 8px; background: #E5E7EB; border-radius: 4px; overflow: hidden;">
                            <div style="width: 30%; height: 100%; background: #9CA3AF;"></div>
                        </div>
                        <span style="font-size: 11px; color: #6B7280;">30%</span>
                    </div>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Reports/InventoryReport.aspx") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 6px;">
                    View Report &rarr;
                </a>
            </div>
        </div>

        <!-- Supplier Report Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px; display: flex; flex-direction: column; justify-content: space-between;">
            <div>
                <div style="display: flex; align-items: center; gap: 8px; font-size: 16px; font-weight: 700; color: #111827;">
                    <i class="bi bi-truck text-secondary"></i> Supplier Report
                </div>
                <div style="font-size: 12.5px; color: #6B7280; margin-top: 4px; margin-bottom: 16px;">
                    Supplier activity and purchase performance.
                </div>
                <!-- Mini Bar preview -->
                <div style="height: 60px; background: #F9FAFB; border-radius: 6px; padding: 12px 24px; display: flex; align-items: flex-end; justify-content: space-between; gap: 12px; margin-bottom: 16px;">
                    <div style="height: 32px; width: 14px; background: #CBD5E1; border-radius: 3px;"></div>
                    <div style="height: 20px; width: 14px; background: #CBD5E1; border-radius: 3px;"></div>
                    <div style="height: 44px; width: 14px; background: #4CAF7D; border-radius: 3px;"></div>
                    <div style="height: 26px; width: 14px; background: #CBD5E1; border-radius: 3px;"></div>
                    <div style="height: 18px; width: 14px; background: #CBD5E1; border-radius: 3px;"></div>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Reports/PurchaseReport.aspx") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 6px;">
                    View Report &rarr;
                </a>
            </div>
        </div>
    </div>

    <!-- Quick Reports Section -->
    <div style="border-top: 1px solid #E5E7EB; padding-top: 24px;">
        <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 12px;">
            Quick Reports
        </div>
        <div style="display: flex; gap: 12px; flex-wrap: wrap;">
            <a href="<%= ResolveUrl("~/Reports/SalesReport.aspx") %>" class="btn-outline-action">Sales by Customer</a>
            <a href="<%= ResolveUrl("~/Reports/SalesReport.aspx") %>" class="btn-outline-action">Sales by Product</a>
            <a href="<%= ResolveUrl("~/Reports/PurchaseReport.aspx") %>" class="btn-outline-action">Purchase by Supplier</a>
            <a href="<%= ResolveUrl("~/Reports/StockValuationReport.aspx") %>" class="btn-outline-action">Stock Valuation</a>
        </div>
    </div>
</asp:Content>
