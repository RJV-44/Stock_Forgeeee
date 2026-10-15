<%@ Page Title="Roles & Permissions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RolesPermissions.aspx.cs" Inherits="Stock_Forgeeee.Users.RolesPermissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 1200px; margin: 0 auto;">
        <!-- Breadcrumb (Matching Figma Screenshot 2) -->
        <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; color: #6B7280; margin-bottom: 10px;">
            <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>" style="color: #6B7280; text-decoration: none;" onmouseover="this.style.color='#111827'" onmouseout="this.style.color='#6B7280'">Users</a>
            <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
            <span style="color: #111827; font-weight: 500;">Roles &amp; Permissions</span>
        </div>

        <!-- Page Header (Matching Figma Screenshot 2) -->
        <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 20px;">
            <div>
                <h1 style="font-size: 24px; font-weight: 700; color: #111827; margin: 0 0 4px 0; letter-spacing: -0.02em;">Roles &amp; Permissions</h1>
                <div style="font-size: 13.5px; color: #6B7280;">Manage access levels for StockForge user roles.</div>
            </div>
            <div>
                <button type="button" onclick="savePermissions()" style="display: inline-flex; align-items: center; gap: 6px; padding: 8px 20px; background: #006C44; color: #FFFFFF; font-size: 13px; font-weight: 600; border-radius: 6px; border: none; cursor: pointer; transition: background 0.15s ease;" onmouseover="this.style.background='#0B5C3B'" onmouseout="this.style.background='#006C44'">
                    Save Changes
                </button>
            </div>
        </div>

        <!-- Role Select & Notice Bar (Matching Figma Screenshot 2) -->
        <div style="background: #FAFAFA; border: 1px solid #E5E7EB; border-radius: 8px; padding: 14px 20px; margin-bottom: 16px; display: flex; align-items: center; justify-content: space-between; gap: 20px; flex-wrap: wrap;">
            <!-- Left: Select Role -->
            <div style="display: flex; align-items: center; gap: 14px;">
                <span style="font-size: 13.5px; font-weight: 600; color: #111827; white-space: nowrap;">Select Role</span>
                <div style="position: relative; width: 220px;">
                    <select id="roleSelect" onchange="handleRoleSwitch(this.value)" style="width: 100%; height: 38px; padding: 6px 32px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                        <option value="Admin" selected>Admin</option>
                        <option value="Inventory Manager">Inventory Manager</option>
                        <option value="Purchase Manager">Purchase Manager</option>
                        <option value="Sales Staff">Sales Staff</option>
                        <option value="Viewer">Viewer</option>
                    </select>
                    <i class="bi bi-chevron-down" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
                </div>
            </div>

            <!-- Right: Role Description Banner -->
            <div id="roleBanner" style="background: #EFF9F3; border: 1px solid #D1F0DE; border-radius: 6px; padding: 8px 16px; font-size: 12.5px; color: #15803D; display: flex; align-items: center; gap: 8px; flex: 1; max-width: 620px;">
                <i class="bi bi-info-circle-fill" style="font-size: 14px; color: #15803D; flex-shrink: 0;"></i>
                <span id="roleBannerText"><strong>Admin:</strong> Full access to all StockForge modules and administrative controls.</span>
            </div>
        </div>

        <!-- Permissions Table Container (Matching Figma Screenshot 2) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; overflow: hidden; margin-bottom: 16px;">
            <table style="width: 100%; border-collapse: collapse; font-size: 13px; text-align: left;">
                <thead>
                    <tr style="background: #FFFFFF; border-bottom: 1px solid #E5E7EB;">
                        <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; width: 40%;">Module</th>
                        <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: center; width: 15%;">View</th>
                        <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: center; width: 15%;">Create</th>
                        <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: center; width: 15%;">Edit</th>
                        <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: center; width: 15%;">Delete</th>
                    </tr>
                </thead>
                <tbody id="matrixBody">
                    <!-- Row 1: Dashboard -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 600; color: #111827;">Dashboard</td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center; color: #9CA3AF;">&mdash;</td>
                        <td style="padding: 14px 20px; text-align: center; color: #9CA3AF;">&mdash;</td>
                        <td style="padding: 14px 20px; text-align: center; color: #9CA3AF;">&mdash;</td>
                    </tr>

                    <!-- Row 2: Products -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 600; color: #111827;">Products</td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                    </tr>

                    <!-- Row 3: Inventory -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 600; color: #111827;">Inventory</td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                    </tr>

                    <!-- Row 4: Suppliers -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 600; color: #111827;">Suppliers</td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                    </tr>

                    <!-- Row 5: Purchases -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 600; color: #111827;">Purchases</td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center; color: #9CA3AF;">&mdash;</td>
                    </tr>

                    <!-- Row 6: Sales -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 600; color: #111827;">Sales</td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                    </tr>

                    <!-- Row 7: Customers -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 600; color: #111827;">Customers</td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box" onclick="toggleChk(this)"><i class="bi bi-check-lg" style="display: none;"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box" onclick="toggleChk(this)"><i class="bi bi-check-lg" style="display: none;"></i></span>
                        </td>
                    </tr>

                    <!-- Row 8: Reports -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 600; color: #111827;">Reports</td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center; color: #9CA3AF;">&mdash;</td>
                        <td style="padding: 14px 20px; text-align: center; color: #9CA3AF;">&mdash;</td>
                        <td style="padding: 14px 20px; text-align: center; color: #9CA3AF;">&mdash;</td>
                    </tr>

                    <!-- Row 9: Users -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 600; color: #111827;">Users</td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                    </tr>

                    <!-- Row 10: Settings -->
                    <tr>
                        <td style="padding: 14px 20px; font-weight: 600; color: #111827;">Settings</td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center;">
                            <span class="chk-box active" onclick="toggleChk(this)"><i class="bi bi-check-lg"></i></span>
                        </td>
                        <td style="padding: 14px 20px; text-align: center; color: #9CA3AF;">&mdash;</td>
                        <td style="padding: 14px 20px; text-align: center; color: #9CA3AF;">&mdash;</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Footer Bar (Matching Figma Screenshot 2) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 12px 20px; display: flex; justify-content: space-between; align-items: center; margin-bottom: 30px;">
            <div id="unsavedNotice" style="display: flex; align-items: center; gap: 6px; font-size: 12.5px; color: #DC2626;">
                <i class="bi bi-exclamation-circle"></i>
                <span>Unsaved changes</span>
            </div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <button type="button" onclick="resetToDefault()" style="padding: 7px 18px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; cursor: pointer; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                    Reset to Default
                </button>
                <button type="button" onclick="savePermissions()" style="padding: 7px 20px; background: #006C44; color: #FFFFFF; font-size: 13px; font-weight: 600; border-radius: 6px; border: none; cursor: pointer; transition: background 0.15s ease;" onmouseover="this.style.background='#0B5C3B'" onmouseout="this.style.background='#006C44'">
                    Save Changes
                </button>
            </div>
        </div>
    </div>

    <!-- Style for Checkboxes -->
    <style>
        .chk-box {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 18px;
            height: 18px;
            border-radius: 4px;
            border: 1.5px solid #D1D5DB;
            background: #FFFFFF;
            cursor: pointer;
            transition: all 0.15s ease;
            user-select: none;
        }
        .chk-box.active {
            background: #006C44;
            border-color: #006C44;
            color: #FFFFFF;
        }
        .chk-box.active i {
            display: block !important;
            font-size: 12px;
            font-weight: 700;
        }
    </style>

    <!-- Client-side Logic -->
    <script>
        function toggleChk(el) {
            el.classList.toggle('active');
            var icon = el.querySelector('i');
            if (icon) {
                icon.style.display = el.classList.contains('active') ? 'block' : 'none';
            }
            document.getElementById('unsavedNotice').style.display = 'flex';
        }

        function handleRoleSwitch(role) {
            var banner = document.getElementById('roleBannerText');
            if (role === 'Admin') {
                banner.innerHTML = '<strong>Admin:</strong> Full access to all StockForge modules and administrative controls.';
            } else if (role === 'Inventory Manager') {
                banner.innerHTML = '<strong>Inventory Manager:</strong> Full control over products, adjustments, and warehouse stock levels.';
            } else if (role === 'Purchase Manager') {
                banner.innerHTML = '<strong>Purchase Manager:</strong> Can manage vendors, purchase orders, and goods receiving.';
            } else if (role === 'Sales Staff') {
                banner.innerHTML = '<strong>Sales Staff:</strong> Can create customer orders, generate invoices, and view stock.';
            } else {
                banner.innerHTML = '<strong>Viewer:</strong> Read-only access across enabled inventory and reporting modules.';
            }
        }

        function savePermissions() {
            alert('Permissions updated successfully!');
            document.getElementById('unsavedNotice').style.display = 'none';
        }

        function resetToDefault() {
            location.reload();
        }
    </script>
</asp:Content>
