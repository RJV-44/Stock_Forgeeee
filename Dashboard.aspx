<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Stock_Forgeeee.Dashboard" %>
<%@ Register Src="~/Controls/StatCard.ascx" TagPrefix="uc" TagName="StatCard" %>
<%@ Register Src="~/Controls/Pagination.ascx" TagPrefix="uc" TagName="Pagination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Dashboard Overview</h1>
            <div class="page-subtitle">Welcome back, System Admin. Here is what's happening with your inventory today.</div>
        </div>
        <div class="d-flex gap-2">
            <a href="<%= ResolveUrl("~/Sales/NewSale.aspx") %>" class="btn-primary">
                <i class="bi bi-plus-circle"></i> New Sales Order
            </a>
            <a href="<%= ResolveUrl("~/Purchases/ReceivePurchase.aspx") %>" class="btn-secondary">
                <i class="bi bi-box-arrow-in-down"></i> Receive Stock
            </a>
        </div>
    </div>

    <!-- Top KPI Cards Grid -->
    <div class="kpi-grid">
        <uc:StatCard runat="server" ID="StatTotalRevenue" Title="Total Sales (INR)" Value="₹12,45,800" Subtitle="+14.2% vs last month" IconClass="bi-currency-rupee" IconBgClass="bg-success-light text-success" TrendClass="positive" TrendIcon="bi-arrow-up-short" />
        <uc:StatCard runat="server" ID="StatTotalOrders" Title="Total Orders" Value="1,240" Subtitle="+8.1% vs last month" IconClass="bi-bag-check" IconBgClass="bg-primary-light text-primary" TrendClass="positive" TrendIcon="bi-arrow-up-short" />
        <uc:StatCard runat="server" ID="StatStockItems" Title="Total Products" Value="486 Items" Subtitle="Across 12 Categories" IconClass="bi-box-seam" IconBgClass="bg-info-light text-info" TrendClass="positive" TrendIcon="bi-dash-lg" />
        <uc:StatCard runat="server" ID="StatLowStock" Title="Low Stock Items" Value="8 Warning" Subtitle="Action required" IconClass="bi-exclamation-triangle" IconBgClass="bg-danger-light text-danger" TrendClass="negative" TrendIcon="bi-arrow-down-short" />
    </div>

    <!-- Quick Action / Status Summary Row -->
    <div class="row" style="display: flex; gap: 20px; flex-wrap: wrap;">
        <!-- Recent Orders Table -->
        <div style="flex: 2; min-width: 320px;">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Recent Sales Transactions</h3>
                    <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" class="btn-secondary btn-sm">View All Orders</a>
                    <link href="<%= ResolveUrl("~/Content/site.css") %>" rel="stylesheet" type="text/css" />
                    <link href="<%= ResolveUrl("~/Content/components.css") %>" rel="stylesheet" type="text/css" />
                </div>
                <div class="card-body p-0">
                    <div class="table-wrapper">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Invoice #</th>
                                    <th>Customer</th>
                                    <th>Date</th>
                                    <th>Amount (₹)</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a href="#" class="text-primary font-weight-bold">#INV-9824</a></td>
                                    <td>Apex Builders & Hardware</td>
                                    <td>29 Sep 2026</td>
                                    <td><strong>₹45,200</strong></td>
                                    <td><span class="badge badge-success">Completed</span></td>
                                </tr>
                                <tr>
                                    <td><a href="#" class="text-primary font-weight-bold">#INV-9823</a></td>
                                    <td>Sharma Constructions</td>
                                    <td>29 Sep 2026</td>
                                    <td><strong>₹18,500</strong></td>
                                    <td><span class="badge badge-warning">Pending Payment</span></td>
                                </tr>
                                <tr>
                                    <td><a href="#" class="text-primary font-weight-bold">#INV-9822</a></td>
                                    <td>Modern Electricals</td>
                                    <td>28 Sep 2026</td>
                                    <td><strong>₹1,24,000</strong></td>
                                    <td><span class="badge badge-success">Completed</span></td>
                                </tr>
                                <tr>
                                    <td><a href="#" class="text-primary font-weight-bold">#INV-9821</a></td>
                                    <td>Royal Infra Solutions</td>
                                    <td>28 Sep 2026</td>
                                    <td><strong>₹32,750</strong></td>
                                    <td><span class="badge badge-danger">Cancelled</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- Low Stock Items Box -->
        <div style="flex: 1; min-width: 280px;">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title"><i class="bi bi-shield-exclamation text-warning me-2"></i> Low Stock Alerts</h3>
                    <a href="<%= ResolveUrl("~/Inventory/StockOverview.aspx") %>" class="small-text">View Stock</a>
                </div>
                <div class="card-body">
                    <div class="d-flex flex-column gap-3">
                        <div class="p-3 border border-warning-subtle rounded bg-warning-light d-flex justify-content-between align-items-center">
                            <div>
                                <div class="font-weight-bold text-dark">Bosch GSB 500W Impact Drill</div>
                                <div class="small-text text-secondary">SKU: HW-BSH-500</div>
                            </div>
                            <span class="badge badge-danger">3 Left</span>
                        </div>
                        <div class="p-3 border border-warning-subtle rounded bg-warning-light d-flex justify-content-between align-items-center">
                            <div>
                                <div class="font-weight-bold text-dark">Stanley Heavy Duty Hammer</div>
                                <div class="small-text text-secondary">SKU: HW-STN-021</div>
                            </div>
                            <span class="badge badge-warning">5 Left</span>
                        </div>
                        <div class="p-3 border border-warning-subtle rounded bg-warning-light d-flex justify-content-between align-items-center">
                            <div>
                                <div class="font-weight-bold text-dark">Stainless Steel Hinges 4-inch</div>
                                <div class="small-text text-secondary">SKU: HW-HNG-401</div>
                            </div>
                            <span class="badge badge-danger">2 Left</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
