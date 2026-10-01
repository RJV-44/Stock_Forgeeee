<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Sidebar.ascx.cs" Inherits="Stock_Forgeeee.Controls.Sidebar" %>
<link href="<%= ResolveUrl("~/Content/site.css") %>" rel="stylesheet" type="text/css" />
<link href="<%= ResolveUrl("~/Content/components.css") %>" rel="stylesheet" type="text/css" />

<aside class="sidebar" id="appSidebar">
    <!-- Brand Logo Section -->
    <div class="sidebar-brand">
        <div class="brand-icon">
            <i class="bi bi-box-seam-fill"></i>
        </div>
        <div class="brand-text">
            <span class="sidebar-brand-name">StockForge</span>
            <span class="sidebar-brand-sub">Hardware System</span>
        </div>
    </div>

    <!-- Navigation Menu -->
    <nav class="sidebar-nav">
        <div class="nav-section">Main</div>
        <a href="<%= ResolveUrl("~/Dashboard.aspx") %>" class="nav-item <%= IsActive("Dashboard.aspx") %>">
            <i class="bi bi-grid-1x2-fill"></i>
            <span>Dashboard</span>
        </a>

        <div class="nav-section">Inventory & Products</div>
        <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" class="nav-item <%= IsActive("Product") %>">
            <i class="bi bi-box-seam"></i>
            <span>Products</span>
        </a>
        <a href="<%= ResolveUrl("~/Inventory/StockOverview.aspx") %>" class="nav-item <%= IsActive("Stock") %>">
            <i class="bi bi-stack"></i>
            <span>Stock Overview</span>
        </a>

        <div class="nav-section">Transactions</div>
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" class="nav-item <%= IsActive("Purchase") %>">
            <i class="bi bi-cart-check"></i>
            <span>Purchases</span>
        </a>
        <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" class="nav-item <%= IsActive("Sale") %>">
            <i class="bi bi-receipt"></i>
            <span>Sales Orders</span>
        </a>

        <div class="nav-section">Directory</div>
        <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" class="nav-item <%= IsActive("Supplier") %>">
            <i class="bi bi-truck"></i>
            <span>Suppliers</span>
        </a>
        <a href="<%= ResolveUrl("~/Customers/CustomerList.aspx") %>" class="nav-item <%= IsActive("Customer") %>">
            <i class="bi bi-people"></i>
            <span>Customers</span>
        </a>

        <div class="nav-section">Analytics & Admin</div>
        <a href="<%= ResolveUrl("~/Reports/ReportsDashboard.aspx") %>" class="nav-item <%= IsActive("Report") %>">
            <i class="bi bi-bar-chart-line"></i>
            <span>Reports</span>
        </a>
        <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>" class="nav-item <%= IsActive("User") %>">
            <i class="bi bi-shield-person"></i>
            <span>User Control</span>
        </a>
        <a href="<%= ResolveUrl("~/Settings/Settings.aspx") %>" class="nav-item <%= IsActive("Settings.aspx") %>">
            <i class="bi bi-gear"></i>
            <span>Settings</span>
        </a>

        <div class="nav-section">Support & Landing</div>
        <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="nav-item <%= IsActive("Landing.aspx") %>">
            <i class="bi bi-globe"></i>
            <span>Landing Page</span>
        </a>
        <a href="<%= ResolveUrl("~/Help.aspx") %>" class="nav-item <%= IsActive("Help.aspx") %>">
            <i class="bi bi-question-circle"></i>
            <span>Help Center</span>
        </a>
    </nav>

    <!-- User Profile Footer Badge -->
    <div class="sidebar-footer">
        <a href="<%= ResolveUrl("~/Account/MyProfile.aspx") %>" class="sidebar-user-card">
            <div class="user-avatar">
                <i class="bi bi-person-fill"></i>
            </div>
            <div class="user-info">
                <span class="user-name">Admin User</span>
                <span class="user-role">System Admin</span>
            </div>
            <i class="bi bi-chevron-right text-muted ms-auto"></i>
        </a>
    </div>
</aside>
