<%@ Page Title="Purchase Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseReport.aspx.cs" Inherits="Stock_Forgeeee.Reports.PurchaseReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Reports/ReportsDashboard.aspx") %>">Reports</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Purchase Report</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">Purchase Report</h1>
            <div class="sf-page-subtitle">Analyze purchasing activity, supplier spending and purchase orders.</div>
        </div>
        <div class="sf-header-actions">
            <button type="button" class="btn-outline-action">
                <i class="bi bi-download"></i> Export <i class="bi bi-chevron-down" style="font-size: 11px;"></i>
            </button>
        </div>
    </div>

    <!-- Filter Bar (Matching StockForge Purchase Report.png) -->
    <div class="sf-card" style="padding: 12px 18px; margin-bottom: 20px;">
        <div style="display: flex; align-items: center; gap: 12px; flex-wrap: wrap;">
            <select class="sf-select">
                <option>📅 This Month</option>
                <option>Last Month</option>
                <option>This Quarter</option>
            </select>
            <select class="sf-select">
                <option>🏪 Supplier (All)</option>
                <option>ABC Hardware Suppliers</option>
                <option>Patel Industrial Supply</option>
                <option>Global Tools Inc.</option>
            </select>
            <select class="sf-select">
                <option>🛠️ Product (All)</option>
                <option>Power Tools</option>
                <option>Fasteners</option>
            </select>
            <select class="sf-select">
                <option>🚩 Status (All)</option>
                <option>Received</option>
                <option>Pending</option>
            </select>
            <div style="margin-left: auto; display: flex; align-items: center; gap: 10px;">
                <button type="button" class="sf-text-btn" style="color: #6B7280;">Clear</button>
                <button type="button" class="btn-primary-action">Apply Filters</button>
            </div>
        </div>
    </div>

    <!-- 4 Metric Cards -->
    <div class="sf-kpi-grid">
        <div class="sf-kpi-card">
            <div class="kpi-title" style="text-transform: uppercase; font-size: 11px; font-weight: 700;">Total Purchases</div>
            <div class="kpi-value" style="margin-top: 8px;">₹8,45,750.00</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-title" style="text-transform: uppercase; font-size: 11px; font-weight: 700;">Purchase Orders</div>
            <div class="kpi-value" style="margin-top: 8px;">48</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-title" style="text-transform: uppercase; font-size: 11px; font-weight: 700;">Average Order</div>
            <div class="kpi-value" style="margin-top: 8px;">₹17,619.79</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-title" style="text-transform: uppercase; font-size: 11px; font-weight: 700;">Pending Orders</div>
            <div class="kpi-value" style="margin-top: 8px;">8</div>
        </div>
    </div>

    <!-- Middle 2 Cards: Trend & Breakdown (Matching StockForge Purchase Report.png) -->
    <div style="display: grid; grid-template-columns: 1.6fr 1fr; gap: 20px; margin-bottom: 24px;">
        <!-- Purchase Trend Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Purchase Trend</div>
                <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase;">This Month</div>
            </div>

            <div style="height: 120px; display: flex; align-items: flex-end; justify-content: space-between; gap: 8px; padding-top: 10px;">
                <div style="flex: 1; height: 35px; background: #D1E7DD; border-radius: 2px;"></div>
                <div style="flex: 1; height: 60px; background: #D1E7DD; border-radius: 2px;"></div>
                <div style="flex: 1; height: 100px; background: #006C44; border-radius: 2px;"></div>
                <div style="flex: 1; height: 45px; background: #D1E7DD; border-radius: 2px;"></div>
                <div style="flex: 1; height: 65px; background: #D1E7DD; border-radius: 2px;"></div>
                <div style="flex: 1; height: 80px; background: #D1E7DD; border-radius: 2px;"></div>
                <div style="flex: 1; height: 25px; background: #D1E7DD; border-radius: 2px;"></div>
            </div>
        </div>

        <!-- Breakdown Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 18px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Breakdown</div>
                <select class="sf-select" style="height: 28px; padding: 2px 20px 2px 8px; font-size: 11.5px;">
                    <option selected>Supplier</option>
                    <option>Category</option>
                </select>
            </div>

            <div style="display: flex; flex-direction: column; gap: 16px;">
                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 13px; margin-bottom: 6px;">
                        <span style="color: #111827; font-weight: 500;">ABC Hardware Suppliers</span>
                        <strong>₹2,45,850.00</strong>
                    </div>
                    <div style="height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                        <div style="width: 72%; height: 100%; background: #006C44;"></div>
                    </div>
                </div>

                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 13px; margin-bottom: 6px;">
                        <span style="color: #111827; font-weight: 500;">Patel Industrial Supply</span>
                        <strong>₹1,85,400.00</strong>
                    </div>
                    <div style="height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                        <div style="width: 55%; height: 100%; background: #4CAF7D;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Purchase Orders Table Card -->
    <div class="sf-table-card">
        <div class="sf-table-header">
            <div class="sf-table-title">Purchase Orders</div>
        </div>

        <div style="overflow-x: auto;">
            <table class="sf-table">
                <thead>
                    <tr>
                        <th style="width: 18%;">PO Number</th>
                        <th style="width: 28%;">Supplier</th>
                        <th style="width: 18%;">Date</th>
                        <th style="width: 10%; text-align: center;">Items</th>
                        <th style="width: 16%; text-align: right;">Total</th>
                        <th style="width: 14%;">Status</th>
                        <th style="width: 4%; text-align: center;"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-9012") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                PO-9012
                            </a>
                        </td>
                        <td>ABC Hardware Suppliers</td>
                        <td>24 Oct, 2023</td>
                        <td style="text-align: center; font-weight: 600;">12</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹1,12,500.00</td>
                        <td><span class="sf-pill sf-pill-success" style="font-weight: 700;">RECEIVED</span></td>
                        <td style="text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots-vertical"></i></td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-9013") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                PO-9013
                            </a>
                        </td>
                        <td>Patel Industrial Supply</td>
                        <td>23 Oct, 2023</td>
                        <td style="text-align: center; font-weight: 600;">4</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹45,200.00</td>
                        <td><span class="sf-pill sf-pill-neutral" style="font-weight: 700;">PENDING</span></td>
                        <td style="text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots-vertical"></i></td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-9014") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                PO-9014
                            </a>
                        </td>
                        <td>Global Tools Inc.</td>
                        <td>21 Oct, 2023</td>
                        <td style="text-align: center; font-weight: 600;">28</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹3,45,000.00</td>
                        <td><span class="sf-pill sf-pill-success" style="font-weight: 700;">RECEIVED</span></td>
                        <td style="text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots-vertical"></i></td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-9015") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                PO-9015
                            </a>
                        </td>
                        <td>ABC Hardware Suppliers</td>
                        <td>20 Oct, 2023</td>
                        <td style="text-align: center; font-weight: 600;">1</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹12,850.00</td>
                        <td><span class="sf-pill sf-pill-neutral" style="font-weight: 700;">PENDING</span></td>
                        <td style="text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots-vertical"></i></td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-9016") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                PO-9016
                            </a>
                        </td>
                        <td>Mega Fasteners</td>
                        <td>18 Oct, 2023</td>
                        <td style="text-align: center; font-weight: 600;">8</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹84,300.00</td>
                        <td><span class="sf-pill sf-pill-success" style="font-weight: 700;">RECEIVED</span></td>
                        <td style="text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots-vertical"></i></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Table Footer -->
        <div class="sf-table-footer">
            <div>Showing 1-5 of 48</div>
            <div style="display: flex; gap: 6px;">
                <button type="button" class="sf-page-btn"><i class="bi bi-chevron-left"></i></button>
                <button type="button" class="sf-page-btn"><i class="bi bi-chevron-right"></i></button>
            </div>
        </div>
    </div>
</asp:Content>
