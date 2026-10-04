<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Topbar.ascx.cs" Inherits="Stock_Forgeeee.Controls.Topbar" %>

<header class="topbar">
    <div class="topbar-left">
        <button type="button" class="icon-button sidebar-toggle" id="btnToggleSidebar" title="Toggle Menu">
            <i class="bi bi-list"></i>
        </button>
        <div class="topbar-search">
            <i class="bi bi-search search-icon"></i>
            <input type="text" class="topbar-search-input" placeholder="Search everywhere..." />
        </div>
    </div>

    <div class="topbar-actions">
        <!-- Notifications Icon Button -->
        <a href="<%= ResolveUrl("~/Notifications/Notifications.aspx") %>" class="icon-button notification-trigger" id="btnNotifications" title="Notifications">
            <i class="bi bi-bell"></i>
            <span class="notification-badge-dot"></span>
        </a>

        <!-- Help / Support Icon -->
        <a href="javascript:void(0)" class="icon-button" title="Help & Support">
            <i class="bi bi-question-circle"></i>
        </a>

        <!-- Settings Quick Link -->
        <a href="<%= ResolveUrl("~/Settings/Settings.aspx") %>" class="icon-button" title="Settings">
            <i class="bi bi-gear"></i>
        </a>

        <!-- User Profile Avatar / Chip with Dropdown -->
        <div class="topbar-user" style="position: relative;">
            <a href="javascript:void(0)" onclick="toggleUserDropdown(event)" class="user-chip-link" title="User Menu" style="cursor: pointer;">
                <div class="user-avatar-circle">KD</div>
                <span class="user-name-text">Admin User</span>
                <i class="bi bi-chevron-down text-muted" style="font-size: 11px;"></i>
            </a>
            <div id="topbarUserDropdown" class="user-dropdown-menu" style="display: none; position: absolute; right: 0; top: calc(100% + 8px); background: #ffffff; border: 1px solid var(--border); border-radius: 8px; box-shadow: 0 4px 16px rgba(0,0,0,0.1); width: 220px; z-index: 1050; padding: 6px 0;">
                <div style="padding: 10px 16px; border-bottom: 1px solid var(--border);">
                    <div style="font-weight: 600; font-size: 13px; color: var(--text-primary);">Khush Dobariya</div>
                    <div style="color: var(--text-secondary); font-size: 11px;">khush@example.in</div>
                </div>
                <a href="<%= ResolveUrl("~/Account/MyProfile.aspx") %>" style="display: flex; align-items: center; gap: 10px; padding: 9px 16px; font-size: 13px; color: var(--text-primary); text-decoration: none; transition: background 0.15s;" onmouseover="this.style.background='var(--surface-muted)'" onmouseout="this.style.background='transparent'">
                    <i class="bi bi-person" style="font-size: 15px; color: var(--primary);"></i> My Profile
                </a>
                <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>" style="display: flex; align-items: center; gap: 10px; padding: 9px 16px; font-size: 13px; color: var(--text-primary); text-decoration: none; transition: background 0.15s;" onmouseover="this.style.background='var(--surface-muted)'" onmouseout="this.style.background='transparent'">
                    <i class="bi bi-people" style="font-size: 15px; color: var(--primary);"></i> User Management
                </a>
                <a href="<%= ResolveUrl("~/Users/RolesPermissions.aspx") %>" style="display: flex; align-items: center; gap: 10px; padding: 9px 16px; font-size: 13px; color: var(--text-primary); text-decoration: none; transition: background 0.15s;" onmouseover="this.style.background='var(--surface-muted)'" onmouseout="this.style.background='transparent'">
                    <i class="bi bi-shield-check" style="font-size: 15px; color: var(--primary);"></i> Roles & Permissions
                </a>
                <div style="border-top: 1px solid var(--border); margin: 4px 0;"></div>
                <a href="<%= ResolveUrl("~/Default.aspx") %>" style="display: flex; align-items: center; gap: 10px; padding: 9px 16px; font-size: 13px; color: var(--danger); text-decoration: none; transition: background 0.15s;" onmouseover="this.style.background='#fef2f2'" onmouseout="this.style.background='transparent'">
                    <i class="bi bi-box-arrow-right" style="font-size: 15px;"></i> Logout
                </a>
            </div>
        </div>
    </div>
</header>

<script>
    function toggleUserDropdown(e) {
        if (e) e.stopPropagation();
        var dd = document.getElementById('topbarUserDropdown');
        if (dd) {
            dd.style.display = (dd.style.display === 'none' || dd.style.display === '') ? 'block' : 'none';
        }
    }
    document.addEventListener('click', function (e) {
        var dd = document.getElementById('topbarUserDropdown');
        if (dd && dd.style.display === 'block') {
            if (!dd.contains(e.target) && !e.target.closest('.user-chip-link')) {
                dd.style.display = 'none';
            }
        }
    });
</script>
