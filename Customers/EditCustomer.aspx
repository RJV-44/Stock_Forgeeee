<%@ Page Title="Edit Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditCustomer.aspx.cs" Inherits="Stock_Forgeeee.Customers.EditCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Edit Customer</h1>
            <div class="page-subtitle">Update customer profile information and account preferences.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=101") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to Details
            </a>
        </div>
    </div>

    <div class="card" style="max-width: 980px;">
        <div class="card-body">
            <div class="form-grid">
                <div class="form-group">
                    <label class="form-label">First Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Text="Aditi"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Last Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Text="Bansal"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Business Name</label>
                    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" Text="HomeFix Mart"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Customer Type <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlCustomerType" runat="server" CssClass="form-select">
                        <option value="Retail" selected="selected">Retail</option>
                        <option value="Contractor">Contractor</option>
                        <option value="Wholesale">Wholesale</option>
                        <option value="Industrial">Industrial</option>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Phone Number <span class="required">*</span></label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Text="+91 98765 43210"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Email Address</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="aditi@homefixmart.in"></asp:TextBox>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Billing Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Text="26 Lakeview Avenue, Banjara Hills, Hyderabad, Telangana 500034"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">GST / Tax ID</label>
                    <asp:TextBox ID="txtGst" runat="server" CssClass="form-control" Text="27ABCDE1234F1Z5"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Customer Status</label>
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select">
                        <option value="Active" selected="selected">Active</option>
                        <option value="Pending">Pending</option>
                        <option value="Blocked">Blocked</option>
                    </asp:DropDownList>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Notes</label>
                    <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Text="Prefers same-day dispatch and quarterly bulk pricing reviews."></asp:TextBox>
                </div>
            </div>

            <div class="d-flex gap-2 pt-3 border-top mt-2">
                <asp:Button ID="btnUpdateCustomer" runat="server" Text="Update Customer" CssClass="btn-primary" />
                <a href="CustomerList.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>
