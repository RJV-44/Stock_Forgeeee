<%@ Page Title="Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportsDashboard.aspx.cs" Inherits="Stock_Forgeeee.Reports.ReportsDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; margin-bottom: 12px;">
        <span style="color: #6B7280; font-weight: 500; letter-spacing: 0.5px;">STOCKFORGE</span>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <span style="color: #006C44; font-weight: 700; letter-spacing: 0.5px;">REPORTS</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <h1 class="sf-page-title" style="font-size: 26px; font-weight: 700; color: #111827; margin: 0 0 4px 0;">Reports</h1>
            <div class="sf-page-subtitle" style="font-size: 13.5px; color: #6B7280;">View inventory, purchasing and sales performance reports.</div>
        </div>
        <div class="sf-header-actions">
            <button type="button" class="btn-outline-action" style="display: inline-flex; align-items: center; gap: 8px; padding: 7px 14px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; cursor: pointer;">
                <i class="bi bi-calendar3" style="font-size: 13px; color: #6B7280;"></i> This Month <i class="bi bi-chevron-down" style="font-size: 10px; color: #6B7280; margin-left: 4px;"></i>
            </button>
        </div>
    </div>

    <!-- Top 4 Metric Stat Cards -->
    <div class="sf-kpi-grid" style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 24px;">
        <div class="sf-kpi-card" style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 13px; font-weight: 500; color: #6B7280;">Sales</div>
                <i class="bi bi-graph-up-arrow" style="color: #16A34A; font-size: 14px;"></i>
            </div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 10px; font-variant-numeric: tabular-nums;">₹12,85,400.00</div>
        </div>

        <div class="sf-kpi-card" style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 13px; font-weight: 500; color: #6B7280;">Purchases</div>
                <i class="bi bi-bag" style="color: #6B7280; font-size: 14px;"></i>
            </div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 10px; font-variant-numeric: tabular-nums;">₹8,45,750.00</div>
        </div>

        <div class="sf-kpi-card" style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 13px; font-weight: 500; color: #6B7280;">Stock Value</div>
                <i class="bi bi-credit-card-2-front" style="color: #6B7280; font-size: 14px;"></i>
            </div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 10px; font-variant-numeric: tabular-nums;">₹24,68,300.00</div>
        </div>

        <div class="sf-kpi-card" style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 13px; font-weight: 500; color: #6B7280;">Low Stock Items</div>
                <i class="bi bi-exclamation-triangle" style="color: #DC2626; font-size: 14px;"></i>
            </div>
            <div style="font-size: 22px; font-weight: 700; color: #DC2626; margin-top: 10px; font-variant-numeric: tabular-nums;">18</div>
        </div>
    </div>

    <!-- 2x2 Report Cards Grid -->
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 28px;">
        <!-- Sales Report Card -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; display: flex; flex-direction: column; justify-content: space-between;">
            <div>
                <div style="display: flex; align-items: center; gap: 8px; font-size: 15px; font-weight: 700; color: #111827;">
                    <i class="bi bi-graph-up" style="color: #16A34A; font-size: 16px;"></i> Sales Report
                </div>
                <div style="font-size: 12.5px; color: #6B7280; margin-top: 4px; margin-bottom: 18px;">
                    Sales performance by date, customer and product.
                </div>
                <!-- Sparkline / Area preview -->
                <div style="height: 68px; background: #FAFAFA; border: 1px solid #F3F4F6; border-radius: 6px; padding: 6px 12px; display: flex; align-items: flex-end; margin-bottom: 16px;">
                    <svg viewBox="0 0 280 44" style="width: 100%; height: 100%;" preserveAspectRatio="none">
                        <defs>
                            <linearGradient id="salesGrad" x1="0" y1="0" x2="0" y2="1">
                                <stop offset="0%" stop-color="#3DA86F" stop-opacity="0.35" />
                                <stop offset="100%" stop-color="#3DA86F" stop-opacity="0.02" />
                            </linearGradient>
                        </defs>
                        <path d="M 0,32 Q 40,36 80,26 T 160,20 L 220,10 L 280,18 L 280,44 L 0,44 Z" fill="url(#salesGrad)" />
                        <path d="M 0,32 Q 40,36 80,26 T 160,20 L 220,10 L 280,18" fill="none" stroke="#3DA86F" stroke-width="2.5" stroke-linecap="round" />
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
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; display: flex; flex-direction: column; justify-content: space-between;">
            <div>
                <div style="display: flex; align-items: center; gap: 8px; font-size: 15px; font-weight: 700; color: #111827;">
                    <i class="bi bi-file-earmark-text" style="color: #4B5563; font-size: 16px;"></i> Purchase Report
                </div>
                <div style="font-size: 12.5px; color: #6B7280; margin-top: 4px; margin-bottom: 18px;">
                    Purchase spending and supplier activity.
                </div>
                <!-- Horizontal bar segments preview matching Figma -->
                <div style="height: 68px; background: #FAFAFA; border: 1px solid #F3F4F6; border-radius: 6px; padding: 26px 16px; display: flex; align-items: center; justify-content: space-between; gap: 8px; margin-bottom: 16px;">
                    <div style="flex: 1; height: 10px; background: #E5E7EB; border-radius: 5px;"></div>
                    <div style="flex: 1.4; height: 10px; background: #3DA86F; border-radius: 5px;"></div>
                    <div style="flex: 1.5; height: 10px; background: #E5E7EB; border-radius: 5px;"></div>
                    <div style="flex: 1.4; height: 10px; background: #3DA86F; border-radius: 5px;"></div>
                    <div style="flex: 1.2; height: 10px; background: #E5E7EB; border-radius: 5px;"></div>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Reports/PurchaseReport.aspx") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 6px;">
                    View Report &rarr;
                </a>
            </div>
        </div>

        <!-- Inventory Report Card -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; display: flex; flex-direction: column; justify-content: space-between;">
            <div>
                <div style="display: flex; align-items: center; gap: 8px; font-size: 15px; font-weight: 700; color: #111827;">
                    <i class="bi bi-box-seam" style="color: #4B5563; font-size: 16px;"></i> Inventory Report
                </div>
                <div style="font-size: 12.5px; color: #6B7280; margin-top: 4px; margin-bottom: 18px;">
                    Stock levels, stock value and inventory movement.
                </div>
                <!-- Horizontal Progress Bars preview matching Figma -->
                <div style="height: 68px; background: #FAFAFA; border: 1px solid #F3F4F6; border-radius: 6px; padding: 8px 14px; display: flex; flex-direction: column; justify-content: center; gap: 6px; margin-bottom: 16px;">
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <div style="flex: 1; height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                            <div style="width: 88%; height: 100%; background: #3DA86F; border-radius: 3px;"></div>
                        </div>
                        <span style="font-size: 10.5px; color: #6B7280; width: 28px; text-align: right;">88%</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <div style="flex: 1; height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                            <div style="width: 45%; height: 100%; background: #CBD5E1; border-radius: 3px;"></div>
                        </div>
                        <span style="font-size: 10.5px; color: #6B7280; width: 28px; text-align: right;">45%</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <div style="flex: 1; height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                            <div style="width: 65%; height: 100%; background: #3DA86F; border-radius: 3px;"></div>
                        </div>
                        <span style="font-size: 10.5px; color: #6B7280; width: 28px; text-align: right;">65%</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <div style="flex: 1; height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                            <div style="width: 30%; height: 100%; background: #CBD5E1; border-radius: 3px;"></div>
                        </div>
                        <span style="font-size: 10.5px; color: #6B7280; width: 28px; text-align: right;">30%</span>
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
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; display: flex; flex-direction: column; justify-content: space-between;">
            <div>
                <div style="display: flex; align-items: center; gap: 8px; font-size: 15px; font-weight: 700; color: #111827;">
                    <i class="bi bi-truck" style="color: #4B5563; font-size: 16px;"></i> Supplier Report
                </div>
                <div style="font-size: 12.5px; color: #6B7280; margin-top: 4px; margin-bottom: 18px;">
                    Supplier activity and purchase performance.
                </div>
                <!-- 5 Vertical bars preview matching Figma -->
                <div style="height: 68px; background: #FAFAFA; border: 1px solid #F3F4F6; border-radius: 6px; padding: 10px 24px; display: flex; align-items: flex-end; justify-content: space-around; gap: 12px; margin-bottom: 16px;">
                    <div style="height: 30px; width: 14px; background: #CBD5E1; border-radius: 3px 3px 0 0;"></div>
                    <div style="height: 18px; width: 14px; background: #CBD5E1; border-radius: 3px 3px 0 0;"></div>
                    <div style="height: 48px; width: 14px; background: #3DA86F; border-radius: 3px 3px 0 0;"></div>
                    <div style="height: 26px; width: 14px; background: #CBD5E1; border-radius: 3px 3px 0 0;"></div>
                    <div style="height: 16px; width: 14px; background: #CBD5E1; border-radius: 3px 3px 0 0;"></div>
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
        <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 14px;">
            QUICK REPORTS
        </div>
        <div style="display: flex; gap: 12px; flex-wrap: wrap;">
            <a href="<%= ResolveUrl("~/Reports/SalesReport.aspx") %>" style="display: inline-flex; align-items: center; padding: 8px 16px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: all 0.15s ease;">Sales by Customer</a>
            <a href="<%= ResolveUrl("~/Reports/SalesReport.aspx") %>" style="display: inline-flex; align-items: center; padding: 8px 16px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: all 0.15s ease;">Sales by Product</a>
            <a href="<%= ResolveUrl("~/Reports/PurchaseReport.aspx") %>" style="display: inline-flex; align-items: center; padding: 8px 16px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: all 0.15s ease;">Purchase by Supplier</a>
            <a href="<%= ResolveUrl("~/Reports/StockValuationReport.aspx") %>" style="display: inline-flex; align-items: center; padding: 8px 16px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: all 0.15s ease;">Stock Valuation</a>
        </div>
    </div>
</asp:Content>
