<%@ Page Title="Add Supplier" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddSupplier.aspx.cs" Inherits="Stock_Forgeeee.Suppliers.AddSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Add New Supplier</h1>
            <div class="page-subtitle">Register a manufacturer, authorized importer, or wholesale hardware distributor.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to Supplier Directory
            </a>
        </div>
    </div>

    <div class="card" style="max-width: 980px;">
        <div class="card-body">
            <div class="form-grid">
                <div class="form-group">
                    <label class="form-label">Company / Vendor Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" placeholder="e.g. Bosch Power Tools India Ltd"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Supplier Code <span class="required">*</span></label>
                    <asp:TextBox ID="txtSupplierCode" runat="server" CssClass="form-control" placeholder="e.g. SUP-1006"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Primary Contact Person <span class="required">*</span></label>
                    <asp:TextBox ID="txtContactName" runat="server" CssClass="form-control" placeholder="e.g. Rajesh Verma"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Category / Specialty <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">Select category</asp:ListItem>
                        <asp:ListItem Value="Power Tools">Power Tools</asp:ListItem>
                        <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                        <asp:ListItem Value="Electrical">Electrical Supplies</asp:ListItem>
                        <asp:ListItem Value="Plumbing">Plumbing Fittings</asp:ListItem>
                        <asp:ListItem Value="Fasteners">Fasteners &amp; Screws</asp:ListItem>
                        <asp:ListItem Value="Paints">Paints &amp; Coatings</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Phone Number <span class="required">*</span></label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="+91 98200 11223"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Email Address <span class="required">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="contact@vendorcompany.com"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">GSTIN / Tax ID</label>
                    <asp:TextBox ID="txtGstin" runat="server" CssClass="form-control" placeholder="e.g. 27AAACB1234F1Z5"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Payment Terms</label>
                    <asp:DropDownList ID="ddlPaymentTerms" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Net 30">Net 30 Days</asp:ListItem>
                        <asp:ListItem Value="Net 15">Net 15 Days</asp:ListItem>
                        <asp:ListItem Value="Net 60">Net 60 Days</asp:ListItem>
                        <asp:ListItem Value="Advance">Advance Payment</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Status</label>
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Preferred">Preferred Partner</asp:ListItem>
                        <asp:ListItem Value="Active" Selected="True">Active</asp:ListItem>
                        <asp:ListItem Value="Pending">Pending Review</asp:ListItem>
                        <asp:ListItem Value="Inactive">Inactive</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Credit Limit (₹)</label>
                    <asp:TextBox ID="txtCreditLimit" runat="server" CssClass="form-control" placeholder="e.g. 500000"></asp:TextBox>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Office &amp; Warehouse Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Street name, building, industrial area, city, state, postal code"></asp:TextBox>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Contract Terms &amp; Supply Capabilities</label>
                    <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Minimum order quantities, return policy details, or warranty coverage..."></asp:TextBox>
                </div>
            </div>

            <div class="d-flex gap-2 pt-3 border-top mt-2">
                <asp:Button ID="btnSaveSupplier" runat="server" Text="Save Supplier Profile" CssClass="btn-primary" />
                <a href="SupplierList.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>
