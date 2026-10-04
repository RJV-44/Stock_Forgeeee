<%@ Page Title="Roles & Permissions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RolesPermissions.aspx.cs" Inherits="Stock_Forgeeee.Users.RolesPermissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>">Users</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Roles &amp; Permissions</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">Roles &amp; Permissions</h1>
            <div class="sf-page-subtitle">Manage access levels for StockForge user roles.</div>
        </div>
        <div class="sf-header-actions">
            <asp:Button ID="btnSaveTop" runat="server" Text="Save Changes" CssClass="btn-primary-action" />
        </div>
    </div>

    <!-- Main Container Card (Matching StockForge Roles & Permissions.png) -->
    <div class="sf-table-card">
        <!-- Top Role Select Row -->
        <div style="padding: 16px 20px; border-bottom: 1px solid #E5E7EB; display: flex; align-items: center; gap: 16px; background: #FAFAFA;">
            <div style="display: flex; align-items: center; gap: 12px;">
                <span style="font-size: 13.5px; font-weight: 700; color: #111827;">Select Role</span>
                <select class="sf-select" style="min-width: 180px;">
                    <option selected>Admin</option>
                    <option>Inventory Manager</option>
                    <option>Purchase Manager</option>
                    <option>Sales Staff</option>
                    <option>Viewer</option>
                </select>
            </div>

            <div style="background: #EFF6FF; border: 1px solid #DBEAFE; border-radius: 6px; padding: 8px 14px; font-size: 12.5px; color: #1E40AF; display: flex; align-items: center; gap: 8px; flex: 1;">
                <i class="bi bi-info-circle-fill"></i>
                <span><strong>Admin:</strong> Full access to all StockForge modules and administrative controls.</span>
            </div>
        </div>

        <!-- Permissions Matrix Table -->
        <div style="overflow-x: auto;">
            <table class="sf-table">
                <thead>
                    <tr>
                        <th style="width: 36%;">Module</th>
                        <th style="width: 16%; text-align: center;">View</th>
                        <th style="width: 16%; text-align: center;">Create</th>
                        <th style="width: 16%; text-align: center;">Edit</th>
                        <th style="width: 16%; text-align: center;">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="font-weight: 700; color: #111827;">Dashboard</td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center; color: #9CA3AF;">&ndash;</td>
                        <td style="text-align: center; color: #9CA3AF;">&ndash;</td>
                        <td style="text-align: center; color: #9CA3AF;">&ndash;</td>
                    </tr>
                    <tr>
                        <td style="font-weight: 700; color: #111827;">Products</td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 700; color: #111827;">Inventory</td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 700; color: #111827;">Suppliers</td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 700; color: #111827;">Purchases</td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center; color: #9CA3AF;">&ndash;</td>
                    </tr>
                    <tr>
                        <td style="font-weight: 700; color: #111827;">Sales</td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 700; color: #111827;">Customers</td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-square" style="color: #D1D5DB; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-square" style="color: #D1D5DB; font-size: 18px;"></i></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 700; color: #111827;">Reports</td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center; color: #9CA3AF;">&ndash;</td>
                        <td style="text-align: center; color: #9CA3AF;">&ndash;</td>
                        <td style="text-align: center; color: #9CA3AF;">&ndash;</td>
                    </tr>
                    <tr>
                        <td style="font-weight: 700; color: #111827;">Users</td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 700; color: #111827;">Settings</td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center;"><i class="bi bi-check-square-fill" style="color: #15803D; font-size: 18px;"></i></td>
                        <td style="text-align: center; color: #9CA3AF;">&ndash;</td>
                        <td style="text-align: center; color: #9CA3AF;">&ndash;</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Footer Bar with Unsaved Changes indicator -->
        <div style="padding: 14px 20px; border-top: 1px solid #E5E7EB; display: flex; justify-content: space-between; align-items: center; background: #ffffff;">
            <div style="display: flex; align-items: center; gap: 6px; color: #DC2626; font-size: 12.5px; font-weight: 500;">
                <i class="bi bi-exclamation-circle-fill"></i>
                <span>Unsaved changes</span>
            </div>
            <div style="display: flex; gap: 10px;">
                <button type="button" class="btn-outline-action">Reset to Default</button>
                <asp:Button ID="btnSaveBottom" runat="server" Text="Save Changes" CssClass="btn-primary-action" />
            </div>
        </div>
    </div>
</asp:Content>
