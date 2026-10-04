<%@ Page Title="Add User" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="Stock_Forgeeee.Users.AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>">Users</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Add User</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">Add User</h1>
            <div class="sf-page-subtitle">Create a user account and assign access</div>
        </div>
        <div class="sf-header-actions">
            <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>" class="btn-outline-action">Cancel</a>
            <asp:Button ID="btnCreateUser" runat="server" Text="Create User" CssClass="btn-primary-action" />
        </div>
    </div>

    <!-- 2 Column Form Grid (Matching StockForge Add User.png) -->
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 24px;">
        <!-- Left Column -->
        <div>
            <!-- Personal Information Card -->
            <div class="sf-card">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
                    <div class="sf-group-title" style="margin-bottom: 0;">
                        <i class="bi bi-person-badge"></i> Personal Information
                    </div>
                    <span class="sf-pill sf-pill-success">Active</span>
                </div>

                <div style="margin-bottom: 16px;">
                    <label class="sf-form-label">Full Name</label>
                    <input type="text" class="sf-input" placeholder="e.g. Jane Doe" />
                </div>

                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px;">
                    <div>
                        <label class="sf-form-label">Email Address</label>
                        <input type="email" class="sf-input" placeholder="user@example.in" />
                    </div>
                    <div>
                        <label class="sf-form-label">Phone Number</label>
                        <input type="tel" class="sf-input" placeholder="+91" />
                    </div>
                </div>
            </div>

            <!-- Login Information Card -->
            <div class="sf-card">
                <div class="sf-group-title">
                    <i class="bi bi-key"></i> Login Information
                </div>

                <div style="margin-bottom: 16px;">
                    <label class="sf-form-label">Temporary Password</label>
                    <div style="position: relative;">
                        <input type="password" class="sf-input" style="padding-right: 36px;" />
                        <i class="bi bi-eye" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); color: #9CA3AF; cursor: pointer;"></i>
                    </div>
                </div>

                <div>
                    <label class="sf-form-label">Confirm Password</label>
                    <div style="position: relative;">
                        <input type="password" class="sf-input" style="padding-right: 36px;" />
                        <i class="bi bi-eye" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); color: #9CA3AF; cursor: pointer;"></i>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Column -->
        <div>
            <!-- Access & Role Card -->
            <div class="sf-card">
                <div class="sf-group-title">
                    <i class="bi bi-shield-lock"></i> Access &amp; Role
                </div>

                <div style="margin-bottom: 16px;">
                    <label class="sf-form-label">System Role</label>
                    <select class="sf-select" style="width: 100%;">
                        <option selected>Viewer</option>
                        <option>Admin</option>
                        <option>Inventory Manager</option>
                        <option>Purchase Manager</option>
                        <option>Sales Staff</option>
                    </select>
                </div>

                <div style="background: #F3F4F6; border-radius: 6px; padding: 12px 14px; font-size: 12.5px; color: #4B5563; display: flex; align-items: flex-start; gap: 8px;">
                    <i class="bi bi-info-circle text-muted" style="font-size: 15px; margin-top: 1px;"></i>
                    <span>Can view inventory levels and reports. Cannot make changes to stock or settings.</span>
                </div>
            </div>

            <!-- Internal Notes Card -->
            <div class="sf-card">
                <div class="sf-group-title">
                    <i class="bi bi-text-left"></i> Internal Notes
                </div>

                <div>
                    <textarea class="sf-textarea" rows="7" placeholder="Add any relevant internal notes about this user's assignment or access limitations..."></textarea>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
