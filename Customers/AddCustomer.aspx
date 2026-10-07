<%@ Page Title="Add Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="Stock_Forgeeee.Customers.AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Add New Customer</h1>
            <div class="page-subtitle">Create a customer profile for retail, wholesale, or contractor sales.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Customers/CustomerList.aspx") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to Customers
            </a>
        </div>
    </div>

    <div class="card" style="max-width: 980px;">
        <div class="card-body">
            <!-- Alert / Status Feedback -->
            <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="val-alert val-alert-danger">
                <i class="bi bi-exclamation-triangle-fill"></i>
                <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
            </asp:Panel>

            <div class="form-grid">
                <div class="form-group">
                    <label class="form-label">First Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="e.g. Aditi"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Last Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="e.g. Bansal"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Business Name</label>
                    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" placeholder="e.g. HomeFix Mart"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Customer Type <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlCustomerType" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">Select type</asp:ListItem>
                        <asp:ListItem Value="Retail">Retail</asp:ListItem>
                        <asp:ListItem Value="Contractor">Contractor</asp:ListItem>
                        <asp:ListItem Value="Wholesale">Wholesale</asp:ListItem>
                        <asp:ListItem Value="Industrial">Industrial</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCustomerType" runat="server" ControlToValidate="ddlCustomerType" InitialValue="" ErrorMessage="Customer type is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Phone Number <span class="required">*</span></label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="+91 98765 43210"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^(\+?[0-9\s\-\(\)]{8,16})$" ErrorMessage="Enter a valid phone number (e.g. +91 9876543210)." CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Email Address</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="name@company.com"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Enter a valid email address." CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Billing Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Street, area, city, state, pincode"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">GST / Tax ID</label>
                    <asp:TextBox ID="txtGst" runat="server" CssClass="form-control" placeholder="e.g. 27ABCDE1234F1Z5"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Customer Status</label>
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Active">Active</asp:ListItem>
                        <asp:ListItem Value="Pending">Pending</asp:ListItem>
                        <asp:ListItem Value="Blocked">Blocked</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Notes</label>
                    <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Any customer preferences, credit terms, or delivery notes..."></asp:TextBox>
                </div>
            </div>

            <div class="d-flex gap-2 pt-3 border-top mt-2">
                <asp:Button ID="btnSaveCustomer" runat="server" Text="Save Customer" CssClass="btn-primary" OnClick="btnSaveCustomer_Click" />
                <a href="CustomerList.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>
