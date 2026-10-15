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
            <asp:Button ID="btnCreateUser" runat="server" Text="Create User" CssClass="btn-primary-action" OnClick="btnCreateUser_Click" />
        </div>
    </div>

    <!-- Alert Feedback -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="val-alert val-alert-danger" style="margin-bottom: 20px;">
        <i class="bi bi-exclamation-triangle-fill"></i>
        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
    </asp:Panel>

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
                    <label class="sf-form-label">Full Name <span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="sf-input" placeholder="e.g. Jane Doe"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full name is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>

                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px;">
                    <div>
                        <label class="sf-form-label">Email Address <span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="sf-input" placeholder="user@example.in"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Enter a valid email." CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <label class="sf-form-label">Phone Number <span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="sf-input" placeholder="+91 9876543210"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^(\+?[0-9\s\-\(\)]{8,16})$" ErrorMessage="Enter a valid phone number." CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>

            <!-- Login Information Card -->
            <div class="sf-card">
                <div class="sf-group-title">
                    <i class="bi bi-key"></i> Login Information
                </div>

                <div style="margin-bottom: 16px;">
                    <label class="sf-form-label">Temporary Password <span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="sf-input" placeholder="••••••••"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <label class="sf-form-label">Confirm Password <span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="sf-input" placeholder="••••••••"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please confirm password." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." CssClass="validation-error" Display="Dynamic"></asp:CompareValidator>
                </div>
            </div>
        </div>

        <!-- Right Column -->
        <div>
            <!-- Access & Role Card -->
            <div class="sf-card">
                <div class="sf-group-title">
                    <i class="bi bi-shield-lock"></i> Access & Role
                </div>

                <div style="margin-bottom: 16px;">
                    <label class="sf-form-label">System Role <span class="text-danger">*</span></label>
                    <asp:DropDownList ID="ddlRole" runat="server" CssClass="sf-select" style="width: 100%;">
                        <asp:ListItem Value="Viewer" Selected="True">Viewer</asp:ListItem>
                        <asp:ListItem Value="Admin">Admin</asp:ListItem>
                        <asp:ListItem Value="Inventory Manager">Inventory Manager</asp:ListItem>
                        <asp:ListItem Value="Purchase Manager">Purchase Manager</asp:ListItem>
                        <asp:ListItem Value="Sales Staff">Sales Staff</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div style="background: #F3F4F6; border-radius: 6px; padding: 12px 14px; font-size: 12.5px; color: #4B5563; display: flex; align-items: flex-start; gap: 8px;">
                    <i class="bi bi-info-circle text-muted" style="font-size: 15px; margin-top: 1px;"></i>
                    <span>Assigns specific operational roles and permissions within StockForge.</span>
                </div>
            </div>

            <!-- Internal Notes Card -->
            <div class="sf-card">
                <div class="sf-group-title">
                    <i class="bi bi-text-left"></i> Internal Notes
                </div>

                <div>
                    <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="7" CssClass="sf-textarea" placeholder="Add any relevant internal notes about this user's assignment or access limitations..."></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
