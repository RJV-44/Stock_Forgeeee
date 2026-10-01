<%@ Page Title="Edit Supplier" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditSupplier.aspx.cs" Inherits="Stock_Forgeeee.Suppliers.EditSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Edit Supplier Profile</h1>
            <div class="page-subtitle">Update vendor contact details, tax info, credit limits, or supply terms.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1001") %>" class="btn-secondary">
                <i class="bi bi-eye"></i> View Details
            </a>
            <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to List
            </a>
        </div>
    </div>

    <div class="card" style="max-width: 980px;">
        <div class="card-body">
            <asp:ValidationSummary ID="valSupplier" runat="server" ValidationGroup="SupplierForm" CssClass="alert alert-danger" HeaderText="Please correct the following errors:" DisplayMode="BulletList" EnableClientScript="false" />
            <div class="form-grid">
                <div class="form-group">
                    <label class="form-label">Company / Vendor Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" Text="Bosch Power Tools India Ltd"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCompanyName" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtCompanyName" ErrorMessage="Company name is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revCompanyName" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtCompanyName" ValidationExpression="^(?=.*\S)[\s\S]{2,100}$" ErrorMessage="Company name must be 2 to 100 characters and cannot be blank." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Supplier Code <span class="required">*</span></label>
                    <asp:TextBox ID="txtSupplierCode" runat="server" CssClass="form-control" Text="SUP-1001" ReadOnly="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSupplierCode" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtSupplierCode" ErrorMessage="Supplier code is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revSupplierCode" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtSupplierCode" ValidationExpression="^[A-Za-z0-9][A-Za-z0-9-]{2,19}$" ErrorMessage="Supplier code must be 3 to 20 letters, numbers, or hyphens." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Primary Contact Person <span class="required">*</span></label>
                    <asp:TextBox ID="txtContactName" runat="server" CssClass="form-control" Text="Rajesh Verma"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvContactName" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtContactName" ErrorMessage="Primary contact name is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revContactName" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtContactName" ValidationExpression="^[\p{L}][\p{L}\p{M}\s.'-]{1,49}$" ErrorMessage="Contact name must be 2 to 50 letters, spaces, or common name punctuation." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Category / Specialty <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Power Tools" Selected="True">Power Tools</asp:ListItem>
                        <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                        <asp:ListItem Value="Electrical">Electrical Supplies</asp:ListItem>
                        <asp:ListItem Value="Plumbing">Plumbing Fittings</asp:ListItem>
                        <asp:ListItem Value="Fasteners">Fasteners &amp; Screws</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ValidationGroup="SupplierForm" ControlToValidate="ddlCategory" InitialValue="" ErrorMessage="Supplier category is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Phone Number <span class="required">*</span></label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Text="+91 98200 11223"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtPhone" ErrorMessage="Phone number is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtPhone" ValidationExpression="^(?=(?:\D*\d){10,15}\D*$)\+?[0-9][0-9\s()-]*$" ErrorMessage="Phone number must contain 10 to 15 digits and only common phone separators." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Email Address <span class="required">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="rajesh@bosch.co.in"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtEmail" ErrorMessage="Email address is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtEmail" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Enter a valid email address." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">GSTIN / Tax ID</label>
                    <asp:TextBox ID="txtGstin" runat="server" CssClass="form-control" Text="27AAACB1234F1Z5"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revGstin" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtGstin" ValidationExpression="^[A-Za-z0-9][A-Za-z0-9/-]{4,29}$" ErrorMessage="Tax ID must be 5 to 30 letters, numbers, hyphens, or slashes." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Payment Terms</label>
                    <asp:DropDownList ID="ddlPaymentTerms" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Net 30" Selected="True">Net 30 Days</asp:ListItem>
                        <asp:ListItem Value="Net 15">Net 15 Days</asp:ListItem>
                        <asp:ListItem Value="Net 60">Net 60 Days</asp:ListItem>
                        <asp:ListItem Value="Advance">Advance Payment</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Status</label>
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Preferred" Selected="True">Preferred Partner</asp:ListItem>
                        <asp:ListItem Value="Active">Active</asp:ListItem>
                        <asp:ListItem Value="Pending">Pending Review</asp:ListItem>
                        <asp:ListItem Value="Inactive">Inactive</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Credit Limit (₹)</label>
                    <asp:TextBox ID="txtCreditLimit" runat="server" CssClass="form-control" Text="1500000"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revCreditLimit" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtCreditLimit" ValidationExpression="^(0|[1-9][0-9]{0,8})(\.[0-9]{1,2})?$" ErrorMessage="Credit limit must be a non-negative amount with up to 2 decimal places." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Office &amp; Warehouse Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Text="Plot 14, Industrial Area Phase II, MIDC Powai, Mumbai, MH - 400093"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revAddress" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtAddress" ValidationExpression="^[\s\S]{0,500}$" ErrorMessage="Address cannot exceed 500 characters." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Contract Terms &amp; Supply Capabilities</label>
                    <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Text="Authorized OEM manufacturer partner. 3-day SLA delivery guarantee across regional warehouses. Defect replacement policy within 15 business days."></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revNotes" runat="server" ValidationGroup="SupplierForm" ControlToValidate="txtNotes" ValidationExpression="^[\s\S]{0,1000}$" ErrorMessage="Contract terms cannot exceed 1000 characters." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="d-flex gap-2 pt-3 border-top mt-2">
                <asp:Button ID="btnUpdateSupplier" runat="server" Text="Update Supplier Changes" CssClass="btn-primary" ValidationGroup="SupplierForm" OnClick="btnUpdateSupplier_Click" />
                <a href="SupplierList.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>
