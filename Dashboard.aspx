<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Stock_Forgeeee.Dashboard" %>
<%@ Register Src="~/Controls/StatCard.ascx" TagPrefix="uc" TagName="StatCard" %>
<%@ Register Src="~/Controls/Pagination.ascx" TagPrefix="uc" TagName="Pagination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-shell">
        <div class="dashboard-header">
            <div>
                <span class="eyebrow">Operations overview</span>
                <h1 class="page-title">Hardware Management Dashboard</h1>
                <div class="page-subtitle">Welcome back, System Admin. Your warehouse and sales channels are on track this week.</div>
            </div>
            <div class="header-actions">
                <a href="<%= ResolveUrl("~/Sales/NewSale.aspx") %>" class="btn-primary">
                    <i class="bi bi-plus-circle"></i> New Sale
                </a>
                <a href="<%= ResolveUrl("~/Purchases/ReceivePurchase.aspx") %>" class="btn-secondary">
                    <i class="bi bi-box-arrow-in-down"></i> Receive Stock
                </a>
            </div>
        </div>

        <div class="kpi-grid">
            <uc:StatCard runat="server" ID="StatTotalRevenue" Title="Total Sales (INR)" Value="₹12,45,800" Subtitle="+14.2% vs last month" IconClass="bi-currency-rupee" IconBgClass="bg-success-light text-success" TrendClass="positive" TrendIcon="bi-arrow-up-short" />
            <uc:StatCard runat="server" ID="StatTotalOrders" Title="Total Orders" Value="1,240" Subtitle="+8.1% vs last month" IconClass="bi-bag-check" IconBgClass="bg-primary-light text-primary" TrendClass="positive" TrendIcon="bi-arrow-up-short" />
            <uc:StatCard runat="server" ID="StatStockItems" Title="Total Products" Value="486 Items" Subtitle="Across 12 Categories" IconClass="bi-box-seam" IconBgClass="bg-info-light text-info" TrendClass="positive" TrendIcon="bi-dash-lg" />
            <uc:StatCard runat="server" ID="StatLowStock" Title="Low Stock Items" Value="8 Warning" Subtitle="Action required" IconClass="bi-exclamation-triangle" IconBgClass="bg-danger-light text-danger" TrendClass="negative" TrendIcon="bi-arrow-down-short" />
        </div>

        <div class="dashboard-grid">
            <div class="panel panel-wide">
                <div class="panel-header">
                    <div>
                        <span class="panel-label">Sales performance</span>
                        <h3 class="card-title">Revenue Overview</h3>
                    </div>
                    <a href="<%= ResolveUrl("~/Reports/SalesReport.aspx") %>" class="btn-secondary btn-sm">View report</a>
                </div>
                <div class="chart-meta">
                    <div>
                        <span class="muted-label">Current month</span>
                        <strong>₹9.74L</strong>
                    </div>
                    <span class="trend-pill positive"><i class="bi bi-arrow-up-short"></i> +18.4%</span>
                </div>
                <div class="chart-bars" aria-label="monthly revenue chart">
                    <div class="bar-group">
                        <span class="bar" style="height: 55%;"></span>
                        <small>Jan</small>
                    </div>
                    <div class="bar-group">
                        <span class="bar" style="height: 60%;"></span>
                        <small>Feb</small>
                    </div>
                    <div class="bar-group">
                        <span class="bar" style="height: 68%;"></span>
                        <small>Mar</small>
                    </div>
                    <div class="bar-group">
                        <span class="bar" style="height: 64%;"></span>
                        <small>Apr</small>
                    </div>
                    <div class="bar-group">
                        <span class="bar" style="height: 78%;"></span>
                        <small>May</small>
                    </div>
                    <div class="bar-group">
                        <span class="bar active" style="height: 88%;"></span>
                        <small>Jun</small>
                    </div>
                </div>
            </div>

            <div class="panel">
                <div class="panel-header">
                    <div>
                        <span class="panel-label">Warehouse status</span>
                        <h3 class="card-title">Inventory Health</h3>
                    </div>
                </div>
                <div class="status-stack">
                    <div class="status-row">
                        <div class="status-head">
                            <span>Fast movers</span>
                            <strong>74%</strong>
                        </div>
                        <div class="progress"><span style="width: 74%;"></span></div>
                    </div>
                    <div class="status-row">
                        <div class="status-head">
                            <span>Stock accuracy</span>
                            <strong>92%</strong>
                        </div>
                        <div class="progress"><span class="info" style="width: 92%;"></span></div>
                    </div>
                    <div class="status-row">
                        <div class="status-head">
                            <span>Reorder coverage</span>
                            <strong>61%</strong>
                        </div>
                        <div class="progress"><span class="warning" style="width: 61%;"></span></div>
                    </div>
                </div>
                <div class="mini-summary">
                    <div>
                        <span class="mini-label">On-time delivery</span>
                        <strong>96.4%</strong>
                    </div>
                    <div>
                        <span class="mini-label">Pending orders</span>
                        <strong>18</strong>
                    </div>
                </div>
            </div>
        </div>

        <div class="lower-grid">
            <div class="panel">
                <div class="panel-header">
                    <div>
                        <span class="panel-label">Recent movement</span>
                        <h3 class="card-title">Latest Sales Transactions</h3>
                    </div>
                    <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" class="small-link">View all</a>
                </div>
                <div class="table-wrapper">
                    <table class="data-table compact-table">
                        <thead>
                            <tr>
                                <th>Invoice</th>
                                <th>Customer</th>
                                <th>Amount</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#INV-9824</td>
                                <td>Apex Builders</td>
                                <td>₹45,200</td>
                                <td><span class="badge badge-success">Completed</span></td>
                            </tr>
                            <tr>
                                <td>#INV-9823</td>
                                <td>Sharma Constructions</td>
                                <td>₹18,500</td>
                                <td><span class="badge badge-warning">Pending</span></td>
                            </tr>
                            <tr>
                                <td>#INV-9822</td>
                                <td>Modern Electricals</td>
                                <td>₹1,24,000</td>
                                <td><span class="badge badge-success">Completed</span></td>
                            </tr>
                            <tr>
                                <td>#INV-9821</td>
                                <td>Royal Infra</td>
                                <td>₹32,750</td>
                                <td><span class="badge badge-danger">Cancelled</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="panel">
                <div class="panel-header">
                    <div>
                        <span class="panel-label">Priority action</span>
                        <h3 class="card-title">Low Stock Alerts</h3>
                    </div>
                    <a href="<%= ResolveUrl("~/Inventory/StockOverview.aspx") %>" class="small-link">Open stock</a>
                </div>
                <div class="alert-list">
                    <div class="alert-item">
                        <div>
                            <strong>Bosch GSB 500W Drill</strong>
                            <small>SKU: HW-BSH-500</small>
                        </div>
                        <span class="badge badge-danger">3 Left</span>
                    </div>
                    <div class="alert-item">
                        <div>
                            <strong>Stanley Hammer</strong>
                            <small>SKU: HW-STN-021</small>
                        </div>
                        <span class="badge badge-warning">5 Left</span>
                    </div>
                    <div class="alert-item">
                        <div>
                            <strong>Steel Hinges 4-inch</strong>
                            <small>SKU: HW-HNG-401</small>
                        </div>
                        <span class="badge badge-danger">2 Left</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
