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
            <div class="form-grid">
                <div class="form-group">
                    <label class="form-label">Company / Vendor Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" Text="Bosch Power Tools India Ltd"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Supplier Code <span class="required">*</span></label>
                    <asp:TextBox ID="txtSupplierCode" runat="server" CssClass="form-control" Text="SUP-1001" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Primary Contact Person <span class="required">*</span></label>
                    <asp:TextBox ID="txtContactName" runat="server" CssClass="form-control" Text="Rajesh Verma"></asp:TextBox>
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
                </div>
                <div class="form-group">
                    <label class="form-label">Phone Number <span class="required">*</span></label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Text="+91 98200 11223"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Email Address <span class="required">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="rajesh@bosch.co.in"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">GSTIN / Tax ID</label>
                    <asp:TextBox ID="txtGstin" runat="server" CssClass="form-control" Text="27AAACB1234F1Z5"></asp:TextBox>
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
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Office &amp; Warehouse Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Text="Plot 14, Industrial Area Phase II, MIDC Powai, Mumbai, MH - 400093"></asp:TextBox>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Contract Terms &amp; Supply Capabilities</label>
                    <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Text="Authorized OEM manufacturer partner. 3-day SLA delivery guarantee across regional warehouses. Defect replacement policy within 15 business days."></asp:TextBox>
                </div>
            </div>

            <div class="d-flex gap-2 pt-3 border-top mt-2">
                <asp:Button ID="btnUpdateSupplier" runat="server" Text="Update Supplier Changes" CssClass="btn-primary" />
                <a href="SupplierList.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>
