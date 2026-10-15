<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Topbar.ascx.cs" Inherits="Stock_Forgeeee.Controls.Topbar" %>

<header class="topbar" style="height: 60px; background: #ffffff; border-bottom: 1px solid #E5E7EB; display: flex; align-items: center; justify-content: space-between; padding: 0 28px; position: sticky; top: 0; z-index: 900;">
    <!-- Left: Hamburger Toggle & Search Box -->
    <div class="topbar-left" style="display: flex; align-items: center; gap: 12px; flex: 1; max-width: 480px;">
        <button type="button" class="sidebar-toggle-btn" id="btnSidebarToggle" aria-label="Toggle navigation menu" title="Open Menu">
            <i class="bi bi-list"></i>
        </button>
        <div class="topbar-search-wrap" style="position: relative; width: 100%; max-width: 340px;">
            <i class="bi bi-search" style="position: absolute; left: 14px; top: 50%; transform: translateY(-50%); color: #6B7280; font-size: 13.5px; pointer-events: none;"></i>
            <input type="text" placeholder="Search inventory, orders..." style="width: 100%; height: 38px; padding: 6px 14px 6px 38px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'" />
        </div>
    </div>

    <!-- Right: Actions (Bell, Help, Support, Profile Avatar matching Figma) -->
    <div class="topbar-actions" style="display: flex; align-items: center; gap: 14px;">
        <!-- Notification Bell -->
        <a href="<%= ResolveUrl("~/Notifications/Notifications.aspx") %>" class="topbar-icon-btn" style="width: 34px; height: 34px; display: flex; align-items: center; justify-content: center; color: #4B5563; text-decoration: none; font-size: 17px; border-radius: 50%; transition: background 0.15s;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'" title="Notifications">
            <i class="bi bi-bell"></i>
        </a>

        <!-- Help / Support Icon -->
        <a href="<%= ResolveUrl("~/Help.aspx") %>" class="topbar-icon-btn topbar-help-icon" style="width: 34px; height: 34px; display: flex; align-items: center; justify-content: center; color: #4B5563; text-decoration: none; font-size: 17px; border-radius: 50%; transition: background 0.15s;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'" title="Help & Support">
            <i class="bi bi-question-circle"></i>
        </a>

        <!-- Support Link -->
        <a href="<%= ResolveUrl("~/Help.aspx") %>" class="topbar-support-link" style="font-size: 13px; font-weight: 500; color: #4B5563; text-decoration: none; padding: 4px 6px; transition: color 0.15s ease;" onmouseover="this.style.color='#111827'" onmouseout="this.style.color='#4B5563'">
            Support
        </a>

        <!-- User Profile Avatar with WM Warehouse Manager Dropdown (Matching Figma) -->
        <div style="position: relative;">
            <a href="javascript:void(0)" onclick="toggleUserDropdown(event)" class="topbar-user-btn" style="display: flex; align-items: center; gap: 8px; text-decoration: none; cursor: pointer; padding: 4px 6px; border-radius: 6px; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='transparent'" title="User Menu">
                <div style="width: 32px; height: 32px; border-radius: 50%; background: #006C44; color: #FFFFFF; font-weight: 600; font-size: 11.5px; display: flex; align-items: center; justify-content: center; letter-spacing: 0.3px; flex-shrink: 0;">
                    WM
                </div>
                <span class="topbar-user-name" style="font-size: 13px; font-weight: 500; color: #111827;">Warehouse Manager</span>
                <i class="bi bi-chevron-down topbar-user-chevron" style="font-size: 11px; color: #6B7280;"></i>
            </a>

            <!-- Dropdown Menu -->
            <div id="topbarUserDropdown" style="display: none; position: absolute; right: 0; top: calc(100% + 8px); background: #ffffff; border: 1px solid #E5E7EB; border-radius: 8px; box-shadow: 0 4px 16px rgba(0,0,0,0.08); width: 220px; z-index: 1050; padding: 6px 0;">
                <div style="padding: 10px 16px; border-bottom: 1px solid #E5E7EB;">
                    <div style="font-weight: 600; font-size: 13px; color: #111827;">Warehouse Manager</div>
                    <div style="color: #6B7280; font-size: 11.5px;">admin@stockforge.in</div>
                </div>
                <a href="<%= ResolveUrl("~/Account/MyProfile.aspx") %>" style="display: flex; align-items: center; gap: 10px; padding: 9px 16px; font-size: 13px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='transparent'">
                    <i class="bi bi-person" style="color: #006C44;"></i> My Profile
                </a>
                <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>" style="display: flex; align-items: center; gap: 10px; padding: 9px 16px; font-size: 13px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='transparent'">
                    <i class="bi bi-people" style="color: #006C44;"></i> User Management
                </a>
                <a href="<%= ResolveUrl("~/Settings/Settings.aspx") %>" style="display: flex; align-items: center; gap: 10px; padding: 9px 16px; font-size: 13px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='transparent'">
                    <i class="bi bi-gear" style="color: #006C44;"></i> Settings
                </a>
                <div style="border-top: 1px solid #E5E7EB; margin: 4px 0;"></div>
                <a href="<%= ResolveUrl("~/Default.aspx") %>" style="display: flex; align-items: center; gap: 10px; padding: 9px 16px; font-size: 13px; color: #DC2626; text-decoration: none;" onmouseover="this.style.background='#FEF2F2'" onmouseout="this.style.background='transparent'">
                    <i class="bi bi-box-arrow-right"></i> Logout
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
            if (!dd.contains(e.target)) {
                dd.style.display = 'none';
            }
        }
    });
</script>
