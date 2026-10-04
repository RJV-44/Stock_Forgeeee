<%@ Page Title="Inventory Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InventoryReport.aspx.cs" Inherits="Stock_Forgeeee.Reports.InventoryReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Reports/ReportsDashboard.aspx") %>">Reports</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Inventory Report</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">Inventory Report</h1>
            <div class="sf-page-subtitle">Track inventory value and stock movement.</div>
        </div>
        <div class="sf-header-actions">
            <button type="button" class="btn-outline-action">
                <i class="bi bi-download"></i> Export <i class="bi bi-chevron-down" style="font-size: 11px;"></i>
            </button>
        </div>
    </div>

    <!-- Filter Bar -->
    <div class="sf-card" style="padding: 12px 18px; margin-bottom: 20px;">
        <div style="display: flex; align-items: center; gap: 12px; flex-wrap: wrap;">
            <select class="sf-select">
                <option>Status (All)</option>
                <option>In Stock</option>
                <option>Low Stock</option>
                <option>Out of Stock</option>
            </select>
            <select class="sf-select">
                <option>Supplier (All)</option>
                <option>ABC Hardware Suppliers</option>
                <option>Patel Industrial Hardware</option>
            </select>
            <select class="sf-select">
                <option>Date Range (This Month)</option>
                <option>Last Month</option>
                <option>Year to Date</option>
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
            <div class="kpi-title" style="text-transform: uppercase; font-size: 11px; font-weight: 700;">Total Products</div>
            <div class="kpi-value" style="margin-top: 8px;">486</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-title" style="text-transform: uppercase; font-size: 11px; font-weight: 700;">Total Stock Units</div>
            <div class="kpi-value" style="margin-top: 8px;">8,642</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-title" style="text-transform: uppercase; font-size: 11px; font-weight: 700;">Stock Value</div>
            <div class="kpi-value" style="margin-top: 8px; color: #006C44;">₹24,68,300</div>
        </div>

        <div class="sf-kpi-card" style="border-left: 3px solid #DC2626;">
            <div class="kpi-title" style="text-transform: uppercase; font-size: 11px; font-weight: 700;">Low Stock Items</div>
            <div class="kpi-value" style="margin-top: 8px; color: #DC2626;">18</div>
        </div>
    </div>

    <!-- Middle 2 Cards: Chart & Status Breakdown (Matching StockForge Inventory Report.png) -->
    <div style="display: grid; grid-template-columns: 1.5fr 1fr; gap: 20px; margin-bottom: 24px;">
        <!-- Left: Stock Movement Chart -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Stock Movement</div>
                <div style="display: flex; gap: 16px; font-size: 12px; color: #4B5563;">
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #EF4444;"></span> Low Stock (18)
                    </span>
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #B91C1C;"></span> Out of Stock (56)
                    </span>
                </div>
            </div>

            <!-- Bar Chart Representation -->
            <div style="height: 140px; display: flex; align-items: flex-end; justify-content: space-around; padding: 0 20px; border-bottom: 1px solid #E5E7EB;">
                <!-- W1 -->
                <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="display: flex; align-items: flex-end; gap: 4px; height: 110px;">
                        <div style="width: 18px; height: 35px; background: #E2E8F0; border-radius: 2px;"></div>
                        <div style="width: 18px; height: 75px; background: #4CAF7D; border-radius: 2px;"></div>
                    </div>
                    <span style="font-size: 11px; color: #6B7280;">W1</span>
                </div>
                <!-- W2 -->
                <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="display: flex; align-items: flex-end; gap: 4px; height: 110px;">
                        <div style="width: 18px; height: 25px; background: #E2E8F0; border-radius: 2px;"></div>
                        <div style="width: 18px; height: 95px; background: #4CAF7D; border-radius: 2px;"></div>
                    </div>
                    <span style="font-size: 11px; color: #6B7280;">W2</span>
                </div>
                <!-- W3 -->
                <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="display: flex; align-items: flex-end; gap: 4px; height: 110px;">
                        <div style="width: 18px; height: 50px; background: #E2E8F0; border-radius: 2px;"></div>
                        <div style="width: 18px; height: 45px; background: #4CAF7D; border-radius: 2px;"></div>
                    </div>
                    <span style="font-size: 11px; color: #6B7280;">W3</span>
                </div>
                <!-- W4 -->
                <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="display: flex; align-items: flex-end; gap: 4px; height: 110px;">
                        <div style="width: 18px; height: 20px; background: #E2E8F0; border-radius: 2px;"></div>
                        <div style="width: 18px; height: 105px; background: #4CAF7D; border-radius: 2px;"></div>
                    </div>
                    <span style="font-size: 11px; color: #6B7280;">W4</span>
                </div>
            </div>
        </div>

        <!-- Right: Stock Status Breakdown Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px; display: flex; flex-direction: column; justify-content: center;">
            <div style="font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 18px;">
                Stock Status Breakdown
            </div>

            <div style="display: flex; flex-direction: column; gap: 14px;">
                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 12.5px; color: #4B5563; margin-bottom: 4px;">
                        <span>In Stock</span>
                        <strong>84%</strong>
                    </div>
                    <div style="height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                        <div style="width: 84%; height: 100%; background: #16A34A;"></div>
                    </div>
                </div>

                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 12.5px; color: #4B5563; margin-bottom: 4px;">
                        <span>Out of Stock</span>
                        <strong>12%</strong>
                    </div>
                    <div style="height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                        <div style="width: 12%; height: 100%; background: #9CA3AF;"></div>
                    </div>
                </div>

                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 12.5px; color: #4B5563; margin-bottom: 4px;">
                        <span>Low Stock</span>
                        <strong style="color: #DC2626;">4%</strong>
                    </div>
                    <div style="height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                        <div style="width: 4%; height: 100%; background: #DC2626;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Inventory Table Card -->
    <div class="sf-table-card">
        <div style="overflow-x: auto;">
            <table class="sf-table">
                <thead>
                    <tr>
                        <th style="width: 28%;">Product</th>
                        <th style="width: 18%;">Category</th>
                        <th style="width: 12%; text-align: center;">Stock</th>
                        <th style="width: 12%; text-align: center;">Reorder</th>
                        <th style="width: 14%; text-align: right;">Value (₹)</th>
                        <th style="width: 12%;">Status</th>
                        <th style="width: 4%; text-align: center;"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="font-weight: 600; color: #111827;">Bosch 10mm Drill</td>
                        <td>Power Tools</td>
                        <td style="text-align: center; font-weight: 600;">24</td>
                        <td style="text-align: center; color: #6B7280;">10</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">35,976.00</td>
                        <td><span class="sf-pill sf-pill-success">In Stock</span></td>
                        <td style="text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots"></i></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 600; color: #111827;">Makita Angle Grinder</td>
                        <td>Power Tools</td>
                        <td style="text-align: center; font-weight: 700; color: #DC2626;">4</td>
                        <td style="text-align: center; color: #6B7280;">15</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">18,400.00</td>
                        <td><span class="sf-pill sf-pill-danger">Low Stock</span></td>
                        <td style="text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots"></i></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 600; color: #111827;">DeWalt Impact Driver</td>
                        <td>Power Tools</td>
                        <td style="text-align: center; font-weight: 600; color: #6B7280;">0</td>
                        <td style="text-align: center; color: #6B7280;">5</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">0.00</td>
                        <td><span class="sf-pill sf-pill-neutral">Out of Stock</span></td>
                        <td style="text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots"></i></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 600; color: #111827;">Fasteners Box 50mm</td>
                        <td>Fasteners</td>
                        <td style="text-align: center; font-weight: 600;">1,250</td>
                        <td style="text-align: center; color: #6B7280;">500</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">6,250.00</td>
                        <td><span class="sf-pill sf-pill-success">In Stock</span></td>
                        <td style="text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots"></i></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 600; color: #111827;">Safety Helmet PPE</td>
                        <td>PPE</td>
                        <td style="text-align: center; font-weight: 600;">85</td>
                        <td style="text-align: center; color: #6B7280;">20</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">12,750.00</td>
                        <td><span class="sf-pill sf-pill-success">In Stock</span></td>
                        <td style="text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots"></i></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Table Footer -->
        <div class="sf-table-footer">
            <div class="sf-pagination" style="margin-left: auto;">
                <button type="button" class="sf-page-btn">Previous</button>
                <button type="button" class="sf-page-btn active">1</button>
                <button type="button" class="sf-page-btn">2</button>
                <button type="button" class="sf-page-btn">3</button>
                <span style="padding: 0 4px; color: #9CA3AF;">...</span>
                <button type="button" class="sf-page-btn">98</button>
                <button type="button" class="sf-page-btn">Next</button>
            </div>
        </div>
    </div>
</asp:Content>
