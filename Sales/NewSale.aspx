<%@ Page Title="New Sale" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewSale.aspx.cs" Inherits="Stock_Forgeeee.Sales.NewSale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">New Sale</h1>
            <div class="page-subtitle">Create a new customer invoice and order entry for hardware sales.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to Sales
            </a>
        </div>
    </div>

    <div class="sale-layout">
        <div class="card">
            <div class="card-body">
                <div class="form-grid">
                    <div class="form-group">
                        <label class="form-label">Customer <span class="required">*</span></label>
                        <asp:DropDownList ID="ddlCustomer" runat="server" CssClass="form-select">
                            <asp:ListItem Value="">Select customer</asp:ListItem>
                            <asp:ListItem Value="Apex Builders">Apex Builders</asp:ListItem>
                            <asp:ListItem Value="Sharma Constructions">Sharma Constructions</asp:ListItem>
                            <asp:ListItem Value="Modern Electricals">Modern Electricals</asp:ListItem>
                            <asp:ListItem Value="Royal Infra">Royal Infra</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Sales Date <span class="required">*</span></label>
                        <asp:TextBox ID="txtSalesDate" runat="server" CssClass="form-control" Text="2026-09-30"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Invoice Number <span class="required">*</span></label>
                        <asp:TextBox ID="txtInvoiceNo" runat="server" CssClass="form-control" Text="INV-9825"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Payment Method</label>
                        <asp:DropDownList ID="ddlPaymentMethod" runat="server" CssClass="form-select">
                            <asp:ListItem Value="Cash">Cash</asp:ListItem>
                            <asp:ListItem Value="UPI">UPI</asp:ListItem>
                            <asp:ListItem Value="BankTransfer">Bank Transfer</asp:ListItem>
                            <asp:ListItem Value="Credit">Credit</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group full-width">
                        <label class="form-label">Address / Delivery Location</label>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Enter delivery details..."></asp:TextBox>
                    </div>
                    <div class="form-group full-width">
                        <label class="form-label">Order Notes</label>
                        <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Add order notes or special instructions..."></asp:TextBox>
                    </div>
                </div>

                <div class="card" style="margin-top:20px;">
                    <div class="card-header">
                        <h3 class="card-title">Products</h3>
                        <button type="button" class="btn-secondary btn-sm">Add Item</button>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-wrapper">
                            <table class="sale-items-table">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Qty</th>
                                        <th>Price</th>
                                        <th>Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Bosch GSB 500W Drill</td>
                                        <td>3</td>
                                        <td>₹4,150</td>
                                        <td>₹12,450</td>
                                    </tr>
                                    <tr>
                                        <td>Stanley Heavy Duty Hammer</td>
                                        <td>2</td>
                                        <td>₹680</td>
                                        <td>₹1,360</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="d-flex gap-2 pt-3 border-top mt-2">
                    <asp:Button ID="btnCreateSale" runat="server" Text="Create Sale" CssClass="btn-primary" />
                    <a href="SalesList.aspx" class="btn-secondary">Cancel</a>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Order Summary</h3>
            </div>
            <div class="card-body">
                <div class="sale-summary-box">
                    <div>
                        <span class="muted-label">Subtotal</span>
                        <strong>₹13,810</strong>
                    </div>
                    <span class="status-pill active">Inclusive</span>
                </div>

                <div class="info-list" style="padding:0; margin-top:16px;">
                    <div class="info-row">
                        <span>Tax</span>
                        <strong>₹1,200</strong>
                    </div>
                    <div class="info-row">
                        <span>Shipping</span>
                        <strong>₹450</strong>
                    </div>
                    <div class="info-row">
                        <span>Discount</span>
                        <strong>₹320</strong>
                    </div>
                    <div class="info-row">
                        <span>Total</span>
                        <strong>₹15,140</strong>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
