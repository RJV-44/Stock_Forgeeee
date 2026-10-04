<%@ Page Title="My Purchases" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyPurchase.aspx.cs" Inherits="Stock_Forgeeee.Purchases.MyPurchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <span>Purchases</span>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">My Purchases</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">My Purchases</h1>
            <div class="sf-page-subtitle">View and manage all purchase transactions.</div>
        </div>
        <div class="sf-header-actions">
            <button type="button" class="btn-outline-action">
                <i class="bi bi-download"></i> Export
            </button>
            <a href="<%= ResolveUrl("~/Purchases/EditPurchaseOrder.aspx") %>" class="btn-primary-action">
                <i class="bi bi-plus-lg"></i> New Purchase
            </a>
        </div>
    </div>

    <!-- KPI Metric Cards Grid (Matching My Purchase.png) -->
    <div class="sf-kpi-grid">
        <div class="sf-kpi-card">
            <div class="kpi-header">
                <div class="kpi-icon-box" style="background: #E8F5E9; color: #2E7D32;">
                    <i class="bi bi-cart3"></i>
                </div>
                <div class="kpi-title">Total Purchases</div>
            </div>
            <div class="kpi-value">248</div>
            <div class="kpi-sub">This month</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-header">
                <div class="kpi-icon-box" style="background: #E8F5E9; color: #2E7D32;">
                    <i class="bi bi-bank"></i>
                </div>
                <div class="kpi-title">Total Purchase Value</div>
            </div>
            <div class="kpi-value">₹12,48,500</div>
            <div class="kpi-sub">This month</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-header">
                <div class="kpi-icon-box" style="background: #FEF3C7; color: #B45309;">
                    <i class="bi bi-clock-history"></i>
                </div>
                <div class="kpi-title">Pending Purchases</div>
            </div>
            <div class="kpi-value">18</div>
            <div class="kpi-sub">Awaiting completion</div>
        </div>

        <div class="sf-kpi-card">
            <div class="kpi-header">
                <div class="kpi-icon-box" style="background: #EAF8EF; color: #15803D;">
                    <i class="bi bi-check-circle"></i>
                </div>
                <div class="kpi-title">Completed Purchases</div>
            </div>
            <div class="kpi-value">230</div>
            <div class="kpi-sub">This month</div>
        </div>
    </div>

    <!-- Purchase Transactions Table Card -->
    <div class="sf-table-card">
        <div class="sf-table-header">
            <div class="sf-table-title">Purchase Transactions</div>
            <div class="sf-table-subtitle">Manage and track your purchase records.</div>
        </div>

        <!-- Filter Row -->
        <div class="sf-filter-row">
            <div class="sf-search-wrap">
                <i class="bi bi-search"></i>
                <input type="text" placeholder="Search by purchase number, supplier..." />
            </div>
            <select class="sf-select">
                <option>All Suppliers</option>
                <option>Shree Hardware Supplies</option>
                <option>Patel Industrial Hardware</option>
                <option>Reliable Tools &amp; Hardware</option>
            </select>
            <select class="sf-select">
                <option>All Statuses</option>
                <option>Received</option>
                <option>Partially Received</option>
                <option>Pending</option>
            </select>
            <select class="sf-select">
                <option>All Payments</option>
                <option>Paid</option>
                <option>Partially Paid</option>
                <option>Unpaid</option>
            </select>
            <button type="button" class="sf-text-btn">Reset Filters</button>
        </div>

        <!-- Table -->
        <div style="overflow-x: auto;">
            <table class="sf-table">
                <thead>
                    <tr>
                        <th>Purchase No.</th>
                        <th>Supplier</th>
                        <th>Purchase Date</th>
                        <th>Items</th>
                        <th>Total Amount</th>
                        <th>Payment Status</th>
                        <th>Purchase Status</th>
                        <th style="text-align: center;">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-00124") %>" style="color: #111827; font-weight: 600; text-decoration: none;">
                                PO-2026-00124
                            </a>
                        </td>
                        <td>Shree Hardware Supplies</td>
                        <td>16 Aug 2026</td>
                        <td>12 Items</td>
                        <td><strong>₹48,500</strong></td>
                        <td><span class="sf-pill sf-pill-success">Paid</span></td>
                        <td><span class="sf-pill sf-pill-success">Received</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-00124") %>" class="icon-button" style="width: 32px; height: 32px;" title="View Details">
                                <i class="bi bi-eye"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-00123") %>" style="color: #111827; font-weight: 600; text-decoration: none;">
                                PO-2026-00123
                            </a>
                        </td>
                        <td>Patel Industrial Hardware</td>
                        <td>15 Aug 2026</td>
                        <td>8 Items</td>
                        <td><strong>₹27,800</strong></td>
                        <td><span class="sf-pill sf-pill-warning">Partially Paid</span></td>
                        <td><span class="sf-pill sf-pill-warning">Partially Received</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-00123") %>" class="icon-button" style="width: 32px; height: 32px;" title="View Details">
                                <i class="bi bi-eye"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-00122") %>" style="color: #111827; font-weight: 600; text-decoration: none;">
                                PO-2026-00122
                            </a>
                        </td>
                        <td>Reliable Tools &amp; Hardware</td>
                        <td>13 Aug 2026</td>
                        <td>20 Items</td>
                        <td><strong>₹75,200</strong></td>
                        <td><span class="sf-pill sf-pill-danger">Unpaid</span></td>
                        <td><span class="sf-pill sf-pill-info">Pending</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-00122") %>" class="icon-button" style="width: 32px; height: 32px;" title="View Details">
                                <i class="bi bi-eye"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-00048") %>" style="color: #111827; font-weight: 600; text-decoration: none;">
                                PO-2026-00048
                            </a>
                        </td>
                        <td>ABC Hardware Suppliers</td>
                        <td>16 Aug 2026</td>
                        <td>70 Items</td>
                        <td><strong>₹56,250</strong></td>
                        <td><span class="sf-pill sf-pill-warning">Partially Paid</span></td>
                        <td><span class="sf-pill sf-pill-warning">Partially Received</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-00048") %>" class="icon-button" style="width: 32px; height: 32px;" title="View Details">
                                <i class="bi bi-eye"></i>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-00120") %>" style="color: #111827; font-weight: 600; text-decoration: none;">
                                PO-2026-00120
                            </a>
                        </td>
                        <td>National Hardware Syndicate</td>
                        <td>09 Aug 2026</td>
                        <td>6 Items</td>
                        <td><strong>₹19,350</strong></td>
                        <td><span class="sf-pill sf-pill-success">Paid</span></td>
                        <td><span class="sf-pill sf-pill-success">Received</span></td>
                        <td style="text-align: center;">
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-00120") %>" class="icon-button" style="width: 32px; height: 32px;" title="View Details">
                                <i class="bi bi-eye"></i>
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Table Footer Pagination -->
        <div class="sf-table-footer">
            <div>Showing 1-10 of 248 purchases</div>
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
