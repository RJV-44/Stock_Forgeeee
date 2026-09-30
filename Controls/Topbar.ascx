<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Topbar.ascx.cs" Inherits="Stock_Forgeeee.Controls.Topbar" %>
<link rel="stylesheet" href="Content/site.css" />
<link href="Content/components.css" rel="stylesheet" type="text/css" />
<header class="topbar">
    <div class="topbar-left">
        <button type="button" class="icon-button sidebar-toggle" id="btnToggleSidebar" title="Toggle Menu">
            <i class="bi bi-list"></i>
        </button>
        <div class="topbar-search">
            <i class="bi bi-search search-icon"></i>
            <input type="text" class="topbar-search-input" placeholder="Search products, orders, suppliers..." />
        </div>
    </div>

    <div class="topbar-actions">
        <!-- Quick Action Add Button -->
        <a href="<%= ResolveUrl("~/Sales/NewSale.aspx") %>" class="btn-primary btn-sm">
            <i class="bi bi-plus-lg"></i>
            <span>New Sale</span>
        </a>

        <!-- Notifications Icon Button -->
        <button type="button" class="icon-button notification-trigger" id="btnNotifications" title="Notifications">
            <i class="bi bi-bell"></i>
            <span class="notification-badge-dot"></span>
        </button>

        <!-- User Profile Dropdown / Quick Links -->
        <div class="topbar-user">
            <a href="<%= ResolveUrl("~/Account/MyProfile.aspx") %>" class="user-chip">
                <img src="<%= ResolveUrl("~/Images/avatars/admin.png") %>" onerror="this.src='https://ui-avatars.com/api/?name=Admin+User&background=4CAF7D&color=fff';" alt="User" class="avatar-img" />
                <span class="user-chip-name">Admin</span>
            </a>
            <a href="<%= ResolveUrl("~/Login.aspx") %>" class="icon-button text-danger" title="Logout">
                <i class="bi bi-box-arrow-right"></i>
            </a>
        </div>
    </div>
</header>
