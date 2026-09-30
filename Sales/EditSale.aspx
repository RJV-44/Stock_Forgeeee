<%@ Page Title="Edit Sale" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditSale.aspx.cs" Inherits="Stock_Forgeeee.Sales.EditSale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Edit Sale</h1>
            <div class="page-subtitle">Update the invoice, customer details, and order items for this sale.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=9824") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to Details
            </a>
        </div>
    </div>

    <div class="card" style="max-width: 980px;">
        <div class="card-body">
            <div class="form-grid">
                <div class="form-group">
                    <label class="form-label">Customer</label>
                    <asp:DropDownList ID="ddlCustomer" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Apex Builders" Selected="True">Apex Builders</asp:ListItem>
                        <asp:ListItem Value="Sharma Constructions">Sharma Constructions</asp:ListItem>
                        <asp:ListItem Value="Modern Electricals">Modern Electricals</asp:ListItem>
                        <asp:ListItem Value="Royal Infra">Royal Infra</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Invoice Number</label>
                    <asp:TextBox ID="txtInvoiceNo" runat="server" CssClass="form-control" Text="#INV-9824"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Sales Date</label>
                    <asp:TextBox ID="txtSalesDate" runat="server" CssClass="form-control" Text="2026-09-30"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Payment Status</label>
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Completed" Selected="True">Completed</asp:ListItem>
                        <asp:ListItem Value="Pending">Pending</asp:ListItem>
                        <asp:ListItem Value="Paid">Paid</asp:ListItem>
                        <asp:ListItem Value="Cancelled">Cancelled</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Tax Amount</label>
                    <asp:TextBox ID="txtTax" runat="server" CssClass="form-control" Text="₹1,200"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Shipping Charge</label>
                    <asp:TextBox ID="txtShipping" runat="server" CssClass="form-control" Text="₹450"></asp:TextBox>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Notes</label>
                    <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" Text="Priority customer. Delivery scheduled for tomorrow morning."></asp:TextBox>
                </div>
            </div>

            <div class="d-flex gap-2 pt-3 border-top mt-2">
                <asp:Button ID="btnUpdateSale" runat="server" Text="Update Sale" CssClass="btn-primary" />
                <a href="SalesList.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>
