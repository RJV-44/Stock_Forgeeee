<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Sidebar.ascx.cs" Inherits="Stock_Forgeeee.Controls.Sidebar" %>

<aside class="sidebar" id="appSidebar">
    <!-- Brand Logo Section -->
    <div class="sidebar-brand">
        <div class="brand-icon">
            <i class="bi bi-box-seam"></i>
        </div>
        <div class="brand-text">
            <span class="sidebar-brand-name">StockForge</span>
            <span class="sidebar-brand-sub">Inventory Management</span>
        </div>
    </div>

    <!-- Navigation Menu (Pixel-perfect match to SideNavBar.png) -->
    <nav class="sidebar-nav">
        <a href="<%= ResolveUrl("~/Dashboard.aspx") %>" class="nav-item <%= IsActive("dashboard") %>">
            <i class="bi bi-grid"></i>
            <span>Dashboard</span>
        </a>

        <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" class="nav-item <%= IsActive("products") %>">
            <i class="bi bi-box-seam"></i>
            <span>Products</span>
        </a>

        <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" class="nav-item <%= IsActive("suppliers") %>">
            <i class="bi bi-graph-up"></i>
            <span>Suppliers</span>
        </a>

        <a href="<%= ResolveUrl("~/Customers/CustomerList.aspx") %>" class="nav-item <%= IsActive("customers") %>">
            <i class="bi bi-people"></i>
            <span>Customers</span>
        </a>

        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" class="nav-item <%= IsActive("purchases") %>">
            <i class="bi bi-cart3"></i>
            <span>Purchases</span>
        </a>

        <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" class="nav-item <%= IsActive("sales") %>">
            <i class="bi bi-receipt"></i>
            <span>Sales</span>
        </a>

        <a href="<%= ResolveUrl("~/Inventory/StockOverview.aspx") %>" class="nav-item <%= IsActive("inventory") %>">
            <i class="bi bi-shop"></i>
            <span>Inventory</span>
        </a>

        <a href="<%= ResolveUrl("~/Reports/ReportsDashboard.aspx") %>" class="nav-item <%= IsActive("reports") %>">
            <i class="bi bi-bar-chart"></i>
            <span>Reports</span>
        </a>

        <a href="<%= ResolveUrl("~/Settings/Settings.aspx") %>" class="nav-item <%= IsActive("settings") %>">
            <i class="bi bi-gear"></i>
            <span>Settings</span>
        </a>
    </nav>

    <!-- Logout Button (Pixel-perfect match to Container.png) -->
    <div class="sidebar-bottom">
        <a href="<%= ResolveUrl("~/Default.aspx") %>" class="sidebar-logout-btn" title="Logout">
            <i class="bi bi-box-arrow-right"></i>
            <span>Logout</span>
        </a>
    </div>
</aside>
