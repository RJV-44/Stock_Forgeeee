<%@ Page Title="Sales Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalesReport.aspx.cs" Inherits="Stock_Forgeeee.Reports.SalesReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Reports/ReportsDashboard.aspx") %>">Reports</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Sales Report</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">Sales Report</h1>
            <div class="sf-page-subtitle">Analyze sales performance, customers, products and payment activity.</div>
        </div>
        <div class="sf-header-actions">
            <button type="button" class="btn-outline-action">
                <i class="bi bi-download"></i> Export <i class="bi bi-chevron-down" style="font-size: 11px;"></i>
            </button>
        </div>
    </div>

    <!-- Filter Bar (Matching StockForge Sales Report.png) -->
    <div class="sf-card" style="padding: 12px 18px; margin-bottom: 20px;">
        <div style="display: flex; align-items: center; gap: 12px; flex-wrap: wrap;">
            <select class="sf-select">
                <option>📅 This Month</option>
                <option>Last Month</option>
                <option>This Quarter</option>
            </select>
            <select class="sf-select">
                <option>Customer: All</option>
                <option>Rajesh Patel</option>
                <option>Acme Industries</option>
                <option>BuildRight Const.</option>
            </select>
            <select class="sf-select">
                <option>Product: All</option>
                <option>Bosch 10mm Drill Kit</option>
                <option>Makita Angle Grinder</option>
            </select>
            <select class="sf-select">
                <option>Payment: All</option>
                <option>Paid</option>
                <option>Partial</option>
                <option>Unpaid</option>
            </select>
            <select class="sf-select">
                <option>Status: All</option>
                <option>Completed</option>
                <option>Pending</option>
            </select>
            <div style="margin-left: auto; display: flex; align-items: center; gap: 10px;">
                <button type="button" class="sf-text-btn" style="color: #6B7280;">Clear</button>
                <button type="button" class="btn-primary-action">Apply</button>
            </div>
        </div>
    </div>

    <!-- 4 Metric Cards -->
    <div class="sf-kpi-grid">
        <div class="sf-kpi-card">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div class="kpi-title">Total Sales</div>
                <div class="kpi-icon-box" style="background: #EAF8EF; color: #15803D;"><i class="bi bi-credit-card"></i></div>
            </div>
            <div class="kpi-value" style="margin-top: 6px;">₹12,85,400.00</div>
        </div>

        <div class="sf-kpi-card">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div class="kpi-title">Orders</div>
                <div class="kpi-icon-box" style="background: #F3F4F6; color: #4B5563;"><i class="bi bi-receipt"></i></div>
            </div>
            <div class="kpi-value" style="margin-top: 6px;">124</div>
        </div>

        <div class="sf-kpi-card">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div class="kpi-title">Average Sale</div>
                <div class="kpi-icon-box" style="background: #F3F4F6; color: #4B5563;">&Sigma;</div>
            </div>
            <div class="kpi-value" style="margin-top: 6px;">₹10,366.94</div>
        </div>

        <div class="sf-kpi-card">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div class="kpi-title">Outstanding</div>
                <div class="kpi-icon-box" style="background: #FEE2E2; color: #DC2626;"><i class="bi bi-cash-stack"></i></div>
            </div>
            <div class="kpi-value" style="margin-top: 6px; color: #DC2626;">₹84,500.00</div>
        </div>
    </div>

    <!-- Middle 2 Cards: Trend & Breakdown (Matching StockForge Sales Report.png) -->
    <div style="display: grid; grid-template-columns: 1.5fr 1fr; gap: 20px; margin-bottom: 24px;">
        <!-- Sales Trend Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Sales Trend</div>
                <div style="font-size: 11.5px; color: #6B7280;">Value in ₹</div>
            </div>

            <!-- Bar Chart Representation -->
            <div style="height: 140px; display: flex; align-items: flex-end; justify-content: space-between; gap: 12px; border-bottom: 1px solid #E5E7EB; padding-bottom: 8px;">
                <div style="flex: 1; display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="width: 100%; height: 45px; background: #C5E5D5; border-radius: 2px;"></div>
                    <span style="font-size: 11px; color: #6B7280;">W1</span>
                </div>
                <div style="flex: 1; display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="width: 100%; height: 75px; background: #88C8A7; border-radius: 2px;"></div>
                    <span style="font-size: 11px; color: #6B7280;">W2</span>
                </div>
                <div style="flex: 1; display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="width: 100%; height: 50px; background: #B3DCB6; border-radius: 2px;"></div>
                    <span style="font-size: 11px; color: #6B7280;">W3</span>
                </div>
                <div style="flex: 1; display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="width: 100%; height: 115px; background: #006C44; border-radius: 2px;"></div>
                    <span style="font-size: 11px; color: #6B7280;">W4</span>
                </div>
                <div style="flex: 1; display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="width: 100%; height: 80px; background: #71B994; border-radius: 2px;"></div>
                    <span style="font-size: 11px; color: #6B7280;">W5</span>
                </div>
            </div>
        </div>

        <!-- Sales Breakdown Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Sales Breakdown</div>
                <div style="display: flex; align-items: center; gap: 6px;">
                    <span style="font-size: 11.5px; color: #6B7280;">View by:</span>
                    <select class="sf-select" style="height: 28px; padding: 2px 20px 2px 6px; font-size: 11.5px;">
                        <option selected>Product</option>
                        <option>Customer</option>
                    </select>
                </div>
            </div>

            <div style="display: flex; flex-direction: column; gap: 14px;">
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <span style="width: 24px; height: 24px; background: #F3F4F6; border-radius: 4px; display: inline-flex; align-items: center; justify-content: center; font-size: 11px; font-weight: 700; color: #6B7280;">P1</span>
                        <span style="font-size: 13px; font-weight: 500; color: #111827;">Bosch 10mm Drill Kit</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹1,85,400</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <span style="width: 24px; height: 24px; background: #F3F4F6; border-radius: 4px; display: inline-flex; align-items: center; justify-content: center; font-size: 11px; font-weight: 700; color: #6B7280;">P2</span>
                        <span style="font-size: 13px; font-weight: 500; color: #111827;">Makita Angle Grinder</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹1,42,000</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <span style="width: 24px; height: 24px; background: #F3F4F6; border-radius: 4px; display: inline-flex; align-items: center; justify-content: center; font-size: 11px; font-weight: 700; color: #6B7280;">P3</span>
                        <span style="font-size: 13px; font-weight: 500; color: #111827;">DeWalt Impact Driver</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹95,500</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <span style="width: 24px; height: 24px; background: #F3F4F6; border-radius: 4px; display: inline-flex; align-items: center; justify-content: center; font-size: 11px; font-weight: 700; color: #6B7280;">P4</span>
                        <span style="font-size: 13px; font-weight: 500; color: #111827;">Stanley Hand Tool Set</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹62,100</strong>
                </div>
            </div>
        </div>
    </div>

    <!-- Sales Transactions Table Card -->
    <div class="sf-table-card">
        <div class="sf-table-header" style="display: flex; justify-content: space-between; align-items: center;">
            <div class="sf-table-title">Sales Transactions</div>
            <button type="button" class="icon-button" style="width: 32px; height: 32px;" title="Filter"><i class="bi bi-filter"></i></button>
        </div>

        <div style="overflow-x: auto;">
            <table class="sf-table">
                <thead>
                    <tr>
                        <th style="width: 18%;">Sale No.</th>
                        <th style="width: 26%;">Customer</th>
                        <th style="width: 18%;">Date</th>
                        <th style="width: 10%; text-align: center;">Items</th>
                        <th style="width: 16%; text-align: right;">Total</th>
                        <th style="width: 12%;">Payment</th>
                        <th style="width: 12%;">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0125") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0125
                            </a>
                        </td>
                        <td style="font-weight: 500; color: #111827;">Rajesh Patel</td>
                        <td>17 Aug 2026</td>
                        <td style="text-align: center; font-weight: 600;">5</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹7,647.00</td>
                        <td><span class="sf-pill sf-pill-success">Paid</span></td>
                        <td><span class="sf-pill sf-pill-neutral">Completed</span></td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0124") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0124
                            </a>
                        </td>
                        <td style="font-weight: 500; color: #111827;">Acme Industries</td>
                        <td>17 Aug 2026</td>
                        <td style="text-align: center; font-weight: 600;">12</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹45,200.00</td>
                        <td><span class="sf-pill sf-pill-warning">Partial</span></td>
                        <td><span class="sf-pill sf-pill-neutral">Completed</span></td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0123") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0123
                            </a>
                        </td>
                        <td style="font-weight: 500; color: #111827;">Vikram Singh</td>
                        <td>16 Aug 2026</td>
                        <td style="text-align: center; font-weight: 600;">2</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹1,850.00</td>
                        <td><span class="sf-pill sf-pill-success">Paid</span></td>
                        <td><span class="sf-pill sf-pill-neutral">Completed</span></td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0122") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0122
                            </a>
                        </td>
                        <td style="font-weight: 500; color: #111827;">BuildRight Const.</td>
                        <td>16 Aug 2026</td>
                        <td style="text-align: center; font-weight: 600;">24</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹1,12,000.00</td>
                        <td><span class="sf-pill sf-pill-danger">Unpaid</span></td>
                        <td><span class="sf-pill sf-pill-warning">Pending</span></td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0121") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0121
                            </a>
                        </td>
                        <td style="font-weight: 500; color: #111827;">Anita Desai</td>
                        <td>15 Aug 2026</td>
                        <td style="text-align: center; font-weight: 600;">1</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹450.00</td>
                        <td><span class="sf-pill sf-pill-success">Paid</span></td>
                        <td><span class="sf-pill sf-pill-neutral">Completed</span></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Table Footer -->
        <div class="sf-table-footer">
            <div>Showing 1-5 of 124 sales</div>
            <div class="sf-pagination">
                <button type="button" class="sf-page-btn">Previous</button>
                <button type="button" class="sf-page-btn active">1</button>
                <button type="button" class="sf-page-btn">2</button>
                <button type="button" class="sf-page-btn">3</button>
                <span style="padding: 0 4px; color: #9CA3AF;">...</span>
                <button type="button" class="sf-page-btn">25</button>
                <button type="button" class="sf-page-btn">Next</button>
            </div>
        </div>
    </div>
</asp:Content>
