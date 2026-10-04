<%@ Page Title="Stock Valuation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockValuationReport.aspx.cs" Inherits="Stock_Forgeeee.Reports.StockValuationReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Reports/ReportsDashboard.aspx") %>">Reports</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Stock Valuation</span>
    </div>

    <!-- Page Header (Matching Main Content Area.png) -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">Stock Valuation</h1>
        </div>
        <div class="sf-header-actions">
            <button type="button" class="btn-outline-action" onclick="window.print()">
                <i class="bi bi-download"></i> Export PDF
            </button>
        </div>
    </div>

    <!-- Filter Bar -->
    <div class="sf-card" style="padding: 12px 18px; margin-bottom: 20px;">
        <div style="display: flex; align-items: center; gap: 12px; flex-wrap: wrap;">
            <select class="sf-select">
                <option>All Categories</option>
                <option>Power Tools</option>
                <option>Hand Tools</option>
                <option>Fasteners</option>
                <option>Electrical</option>
            </select>
            <select class="sf-select">
                <option>All Suppliers</option>
                <option>ABC Hardware Suppliers</option>
                <option>Patel Industrial Hardware</option>
            </select>
            <select class="sf-select">
                <option>All Statuses</option>
                <option>In Stock</option>
                <option>Low Stock</option>
            </select>
            <div style="background: #F3F4F6; border: 1px solid #E5E7EB; border-radius: 6px; padding: 6px 12px; font-size: 12.5px; color: #4B5563; display: flex; align-items: center; gap: 6px;">
                <i class="bi bi-info-circle text-muted"></i>
                <span>Method: Current Unit Cost</span>
            </div>
            <div style="margin-left: auto; display: flex; align-items: center; gap: 10px;">
                <button type="button" class="sf-text-btn" style="color: #006C44;">Clear</button>
                <button type="button" class="btn-success-dark" style="padding: 7px 18px;">Apply</button>
            </div>
        </div>
    </div>

    <!-- 4 KPI Cards with Top-Right Curved Accent (Matching Main Content Area.png) -->
    <div class="sf-kpi-grid">
        <div class="sf-kpi-card sf-card-curve-green">
            <div class="kpi-header">
                <i class="bi bi-credit-card text-success" style="font-size: 15px;"></i>
                <div class="kpi-title">Total Stock Value</div>
            </div>
            <div class="kpi-value">₹24,68,300.00</div>
        </div>

        <div class="sf-kpi-card sf-card-curve-grey">
            <div class="kpi-header">
                <i class="bi bi-box-seam text-secondary" style="font-size: 15px;"></i>
                <div class="kpi-title">Total Products</div>
            </div>
            <div class="kpi-value">486</div>
        </div>

        <div class="sf-kpi-card sf-card-curve-grey">
            <div class="kpi-header">
                <i class="bi bi-grid text-secondary" style="font-size: 15px;"></i>
                <div class="kpi-title">Total Units</div>
            </div>
            <div class="kpi-value">8,642</div>
        </div>

        <div class="sf-kpi-card sf-card-curve-red">
            <div class="kpi-header">
                <i class="bi bi-exclamation-triangle text-danger" style="font-size: 15px;"></i>
                <div class="kpi-title">Low / Out of Stock</div>
            </div>
            <div class="kpi-value" style="color: #DC2626;">74</div>
        </div>
    </div>

    <!-- Middle 2 Cards: Value by Category & Top Products by Value -->
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 24px;">
        <!-- Value by Category Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
            <div style="font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 18px;">
                Value by Category
            </div>

            <div style="display: flex; flex-direction: column; gap: 14px;">
                <div style="display: flex; align-items: center; gap: 14px;">
                    <span style="width: 90px; font-size: 13px; color: #374151;">Power Tools</span>
                    <div style="flex: 1; height: 10px; background: #E5E7EB; border-radius: 5px; overflow: hidden;">
                        <div style="width: 45%; height: 100%; background: #006C44;"></div>
                    </div>
                    <span style="width: 60px; text-align: right; font-size: 13px; font-weight: 600; color: #111827;">₹11.1M</span>
                </div>

                <div style="display: flex; align-items: center; gap: 14px;">
                    <span style="width: 90px; font-size: 13px; color: #374151;">Electrical</span>
                    <div style="flex: 1; height: 10px; background: #E5E7EB; border-radius: 5px; overflow: hidden;">
                        <div style="width: 25%; height: 100%; background: #006C44;"></div>
                    </div>
                    <span style="width: 60px; text-align: right; font-size: 13px; font-weight: 600; color: #111827;">₹6.1M</span>
                </div>

                <div style="display: flex; align-items: center; gap: 14px;">
                    <span style="width: 90px; font-size: 13px; color: #374151;">Fasteners</span>
                    <div style="flex: 1; height: 10px; background: #E5E7EB; border-radius: 5px; overflow: hidden;">
                        <div style="width: 15%; height: 100%; background: #006C44;"></div>
                    </div>
                    <span style="width: 60px; text-align: right; font-size: 13px; font-weight: 600; color: #111827;">₹3.7M</span>
                </div>

                <div style="display: flex; align-items: center; gap: 14px;">
                    <span style="width: 90px; font-size: 13px; color: #374151;">Hand Tools</span>
                    <div style="flex: 1; height: 10px; background: #E5E7EB; border-radius: 5px; overflow: hidden;">
                        <div style="width: 10%; height: 100%; background: #006C44;"></div>
                    </div>
                    <span style="width: 60px; text-align: right; font-size: 13px; font-weight: 600; color: #111827;">₹2.4M</span>
                </div>

                <div style="display: flex; align-items: center; gap: 14px;">
                    <span style="width: 90px; font-size: 13px; color: #374151;">Other</span>
                    <div style="flex: 1; height: 10px; background: #E5E7EB; border-radius: 5px; overflow: hidden;">
                        <div style="width: 6%; height: 100%; background: #9CA3AF;"></div>
                    </div>
                    <span style="width: 60px; text-align: right; font-size: 13px; font-weight: 600; color: #111827;">₹1.2M</span>
                </div>
            </div>
        </div>

        <!-- Top Products by Value Card -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
            <div style="font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 18px;">
                Top Products by Value
            </div>

            <div style="display: flex; flex-direction: column; gap: 14px;">
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #16A34A;"></span>
                        <span style="font-size: 13px; color: #111827; font-weight: 500;">Bosch 10mm Drill</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹1,45,000</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #16A34A;"></span>
                        <span style="font-size: 13px; color: #111827; font-weight: 500;">Makita Angle Grinder</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹1,20,500</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #16A34A;"></span>
                        <span style="font-size: 13px; color: #111827; font-weight: 500;">Stanley Tool Kit</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹98,000</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #16A34A;"></span>
                        <span style="font-size: 13px; color: #111827; font-weight: 500;">DeWalt Impact Driver</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹85,200</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #9CA3AF;"></span>
                        <span style="font-size: 13px; color: #111827; font-weight: 500;">Taparia Spanner Set</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹45,600</strong>
                </div>
            </div>
        </div>
    </div>

    <!-- Inventory Valuation Details Table Card (Matching Main Content Area.png) -->
    <div class="sf-table-card">
        <div class="sf-table-header" style="display: flex; justify-content: space-between; align-items: center;">
            <div class="sf-table-title">Inventory Valuation Details</div>
            <div style="display: flex; gap: 6px;">
                <button type="button" class="icon-button" style="width: 30px; height: 30px;"><i class="bi bi-filter"></i></button>
                <button type="button" class="icon-button" style="width: 30px; height: 30px;"><i class="bi bi-three-dots-vertical"></i></button>
            </div>
        </div>

        <div style="overflow-x: auto;">
            <table class="sf-table">
                <thead>
                    <tr>
                        <th style="width: 28%;">Product</th>
                        <th style="width: 20%;">Category</th>
                        <th style="width: 12%; text-align: center;">Quantity</th>
                        <th style="width: 16%; text-align: right;">Unit Cost (₹)</th>
                        <th style="width: 16%; text-align: right;">Stock Value (₹)</th>
                        <th style="width: 8%;">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Bosch 10mm Drill</div>
                            <div style="font-size: 11.5px; color: #6B7280;">SKU-B10-DRL</div>
                        </td>
                        <td>Power Tools</td>
                        <td style="text-align: center; font-weight: 600;">45</td>
                        <td style="text-align: right;">3,222.22</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">1,45,000.00</td>
                        <td><span class="sf-pill sf-pill-success">In Stock</span></td>
                    </tr>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Makita Angle Grinder</div>
                            <div style="font-size: 11.5px; color: #6B7280;">SKU-MAG-115</div>
                        </td>
                        <td>Power Tools</td>
                        <td style="text-align: center; font-weight: 600;">25</td>
                        <td style="text-align: right;">4,820.00</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">1,20,500.00</td>
                        <td><span class="sf-pill sf-pill-success">In Stock</span></td>
                    </tr>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Stanley Tool Kit 120pc</div>
                            <div style="font-size: 11.5px; color: #6B7280;">SKU-STK-120</div>
                        </td>
                        <td>Hand Tools</td>
                        <td style="text-align: center; font-weight: 700; color: #DC2626;">8</td>
                        <td style="text-align: right;">12,250.00</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">98,000.00</td>
                        <td><span class="sf-pill sf-pill-danger">Low Stock</span></td>
                    </tr>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #111827;">DeWalt Impact Driver</div>
                            <div style="font-size: 11.5px; color: #6B7280;">SKU-DWD-IMP</div>
                        </td>
                        <td>Power Tools</td>
                        <td style="text-align: center; font-weight: 600;">12</td>
                        <td style="text-align: right;">7,100.00</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">85,200.00</td>
                        <td><span class="sf-pill sf-pill-success">In Stock</span></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Table Summary Footer (Matching Main Content Area.png) -->
        <div style="padding: 16px 24px; background: #F9FAFB; border-top: 1px solid #E5E7EB; display: flex; justify-content: flex-end; align-items: center; gap: 14px;">
            <span style="font-size: 14px; font-weight: 600; color: #4B5563;">Total Inventory Value:</span>
            <span style="font-size: 20px; font-weight: 800; color: #111827;">₹24,68,300.00</span>
        </div>
    </div>
</asp:Content>
