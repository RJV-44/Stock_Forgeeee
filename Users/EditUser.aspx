<%@ Page Title="Edit User" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="Stock_Forgeeee.Users.EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>">Users</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <a href="<%= ResolveUrl("~/Users/UserDetails.aspx?id=1") %>">Khush Dobariya</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Edit</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">
                Edit User
                <span class="sf-pill sf-pill-success">Active</span>
            </h1>
            <div class="sf-page-subtitle">Update user information, role and account access.</div>
        </div>
        <div class="sf-header-actions">
            <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>" class="btn-outline-action">Cancel</a>
            <asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" CssClass="btn-primary-action" />
        </div>
    </div>

    <!-- Main Card (Matching StockForge Edit User (No-Scroll).png) -->
    <div class="sf-card" style="padding: 28px;">
        <!-- Top 2 Column Section -->
        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 32px; padding-bottom: 28px; border-bottom: 1px solid #E5E7EB;">
            <!-- Left: Personal Information -->
            <div>
                <div style="font-size: 15px; font-weight: 700; color: #111827; margin-bottom: 18px;">
                    Personal Information
                </div>

                <div style="margin-bottom: 16px;">
                    <label class="sf-form-label">Full Name</label>
                    <input type="text" class="sf-input" value="Khush Dobariya" />
                </div>

                <div style="margin-bottom: 16px;">
                    <label class="sf-form-label">Email Address</label>
                    <input type="email" class="sf-input" value="khush@example.in" />
                </div>

                <div>
                    <label class="sf-form-label">Phone Number</label>
                    <div style="display: flex;">
                        <span style="display: inline-flex; align-items: center; padding: 0 12px; background: #F3F4F6; border: 1px solid #D1D5DB; border-right: none; border-radius: 6px 0 0 6px; font-size: 13.5px; color: #4B5563;">
                            +91
                        </span>
                        <input type="tel" class="sf-input" value="98765 43210" style="border-radius: 0 6px 6px 0;" />
                    </div>
                </div>
            </div>

            <!-- Right: Access & Role -->
            <div>
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 18px;">
                    <div style="font-size: 15px; font-weight: 700; color: #111827;">
                        Access &amp; Role
                    </div>
                    <a href="javascript:void(0)" style="font-size: 12.5px; color: #DC2626; font-weight: 500; text-decoration: none;">Reset Password</a>
                </div>

                <div style="margin-bottom: 16px;">
                    <label class="sf-form-label">System Role</label>
                    <select class="sf-select" style="width: 100%;">
                        <option selected>Admin</option>
                        <option>Inventory Manager</option>
                        <option>Purchase Manager</option>
                        <option>Sales Staff</option>
                        <option>Viewer</option>
                    </select>
                    <div style="font-size: 12px; color: #6B7280; margin-top: 4px;">Full access to StockForge.</div>
                </div>

                <div>
                    <label class="sf-form-label">Account Status</label>
                    <select class="sf-select" style="width: 100%;">
                        <option selected>Active</option>
                        <option>Inactive</option>
                        <option>Suspended</option>
                    </select>
                </div>
            </div>
        </div>

        <!-- Middle: Current Access Summary Box -->
        <div style="background: #F9FAFB; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; margin-top: 24px;">
            <div style="font-size: 12.5px; font-weight: 600; color: #4B5563; margin-bottom: 14px;">
                Current Access Summary (Admin)
            </div>

            <div style="display: grid; grid-template-columns: repeat(5, 1fr); gap: 10px;">
                <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; justify-content: space-between; align-items: center;">
                    <span style="font-size: 13px; font-weight: 500; color: #111827;">Dashboard</span>
                    <span style="font-size: 11px; font-weight: 600; color: #16A34A;">Full</span>
                </div>
                <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; justify-content: space-between; align-items: center;">
                    <span style="font-size: 13px; font-weight: 500; color: #111827;">Products</span>
                    <span style="font-size: 11px; font-weight: 600; color: #16A34A;">Full</span>
                </div>
                <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; justify-content: space-between; align-items: center;">
                    <span style="font-size: 13px; font-weight: 500; color: #111827;">Inventory</span>
                    <span style="font-size: 11px; font-weight: 600; color: #16A34A;">Full</span>
                </div>
                <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; justify-content: space-between; align-items: center;">
                    <span style="font-size: 13px; font-weight: 500; color: #111827;">Purchases</span>
                    <span style="font-size: 11px; font-weight: 600; color: #16A34A;">Full</span>
                </div>
                <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; justify-content: space-between; align-items: center;">
                    <span style="font-size: 13px; font-weight: 500; color: #111827;">Suppliers</span>
                    <span style="font-size: 11px; font-weight: 600; color: #16A34A;">Full</span>
                </div>
                <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; justify-content: space-between; align-items: center;">
                    <span style="font-size: 13px; font-weight: 500; color: #111827;">Sales</span>
                    <span style="font-size: 11px; font-weight: 600; color: #16A34A;">Full</span>
                </div>
                <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; justify-content: space-between; align-items: center;">
                    <span style="font-size: 13px; font-weight: 500; color: #111827;">Customers</span>
                    <span style="font-size: 11px; font-weight: 600; color: #16A34A;">Full</span>
                </div>
                <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; justify-content: space-between; align-items: center;">
                    <span style="font-size: 13px; font-weight: 500; color: #111827;">Reports</span>
                    <span style="font-size: 11px; font-weight: 600; color: #16A34A;">Full</span>
                </div>
                <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; justify-content: space-between; align-items: center;">
                    <span style="font-size: 13px; font-weight: 500; color: #111827;">Users</span>
                    <span style="font-size: 11px; font-weight: 600; color: #16A34A;">Full</span>
                </div>
                <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; justify-content: space-between; align-items: center;">
                    <span style="font-size: 13px; font-weight: 500; color: #111827;">Settings</span>
                    <span style="font-size: 11px; font-weight: 600; color: #16A34A;">Full</span>
                </div>
            </div>
        </div>

        <!-- Footer Meta Info -->
        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 24px; padding-top: 18px; border-top: 1px solid #E5E7EB; font-family: monospace; font-size: 12px; color: #6B7280;">
            <div>Created On: 01 Aug 2026 &nbsp;&nbsp;&nbsp; Last Active: Today, 10:42 AM</div>
            <div>Created By: @ Admin</div>
        </div>
    </div>
</asp:Content>
