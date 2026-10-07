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
            <asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" CssClass="btn-primary-action" OnClick="btnSaveChanges_Click" />
        </div>
    </div>

    <!-- Alert Feedback -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="val-alert val-alert-danger" style="margin-bottom: 20px;">
        <i class="bi bi-exclamation-triangle-fill"></i>
        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
    </asp:Panel>

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
                    <label class="sf-form-label">Full Name <span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="sf-input" Text="Khush Dobariya"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full name is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>

                <div style="margin-bottom: 16px;">
                    <label class="sf-form-label">Email Address <span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="sf-input" Text="khush@example.in"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Enter a valid email." CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>

                <div>
                    <label class="sf-form-label">Phone Number <span class="text-danger">*</span></label>
                    <div style="display: flex;">
                        <span style="display: inline-flex; align-items: center; padding: 0 12px; background: #F3F4F6; border: 1px solid #D1D5DB; border-right: none; border-radius: 6px 0 0 6px; font-size: 13.5px; color: #4B5563;">
                            +91
                        </span>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="sf-input" Text="98765 43210" style="border-radius: 0 6px 6px 0;"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^(\+?[0-9\s\-\(\)]{8,16})$" ErrorMessage="Enter a valid phone number." CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
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
                    <asp:DropDownList ID="ddlRole" runat="server" CssClass="sf-select" style="width: 100%;">
                        <asp:ListItem Value="Admin" Selected="True">Admin</asp:ListItem>
                        <asp:ListItem Value="Inventory Manager">Inventory Manager</asp:ListItem>
                        <asp:ListItem Value="Purchase Manager">Purchase Manager</asp:ListItem>
                        <asp:ListItem Value="Sales Staff">Sales Staff</asp:ListItem>
                        <asp:ListItem Value="Viewer">Viewer</asp:ListItem>
                    </asp:DropDownList>
                    <div style="font-size: 12px; color: #6B7280; margin-top: 4px;">Full access to StockForge.</div>
                </div>

                <div>
                    <label class="sf-form-label">Account Status</label>
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="sf-select" style="width: 100%;">
                        <asp:ListItem Value="Active" Selected="True">Active</asp:ListItem>
                        <asp:ListItem Value="Inactive">Inactive</asp:ListItem>
                        <asp:ListItem Value="Suspended">Suspended</asp:ListItem>
                    </asp:DropDownList>
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
