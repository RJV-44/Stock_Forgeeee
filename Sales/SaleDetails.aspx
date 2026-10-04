<%@ Page Title="Sale Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SaleDetails.aspx.cs" Inherits="Stock_Forgeeee.Sales.SaleDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Sale Details</h1>
            <div class="page-subtitle">Review order history, invoice details, and payment status for this transaction.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0125") %>" class="btn-primary" target="_blank">
                <i class="bi bi-receipt"></i> View Invoice
            </a>
            <a href="<%= ResolveUrl("~/Sales/EditSale.aspx?id=9824") %>" class="btn-secondary">
                <i class="bi bi-pencil-square"></i> Edit Sale
            </a>
            <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to Sales
            </a>
        </div>
    </div>

    <div class="profile-hero">
        <div class="hero-left">
            <div class="hero-avatar"><i class="bi bi-receipt"></i></div>
            <div>
                <h2 class="hero-title">#INV-9824</h2>
                <div class="hero-subtitle">Apex Builders · 30 Sep 2026 · Payment: UPI</div>
            </div>
        </div>
        <span class="status-pill active">Completed</span>
    </div>

    <div class="metric-grid">
        <div class="metric-card">
            <span class="metric-label">Order Value</span>
            <div class="metric-value">₹45,200</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +12.6%</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Items</span>
            <div class="metric-value">8</div>
            <span class="metric-change positive"><i class="bi bi-box-seam"></i> Delivered</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Tax</span>
            <div class="metric-value">₹3,200</div>
            <span class="metric-change positive"><i class="bi bi-percent"></i> 7.9%</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Net Amount</span>
            <div class="metric-value">₹42,000</div>
            <span class="metric-change positive"><i class="bi bi-check-circle"></i> Paid</span>
        </div>
    </div>

    <div class="info-grid">
        <div class="info-card">
            <div class="card-header">
                <h3 class="card-title">Customer Info</h3>
            </div>
            <div class="info-list">
                <div class="info-row">
                    <span>Customer</span>
                    <strong>Apex Builders</strong>
                </div>
                <div class="info-row">
                    <span>Contact</span>
                    <strong>+91 98765 43210</strong>
                </div>
                <div class="info-row">
                    <span>Email</span>
                    <strong>accounts@apexbuilders.in</strong>
                </div>
                <div class="info-row">
                    <span>Billing Address</span>
                    <strong>Andheri East, Mumbai</strong>
                </div>
            </div>
        </div>

        <div class="info-card">
            <div class="card-header">
                <h3 class="card-title">Payment Summary</h3>
            </div>
            <div class="info-list">
                <div class="info-row">
                    <span>Subtotal</span>
                    <strong>₹39,800</strong>
                </div>
                <div class="info-row">
                    <span>Tax</span>
                    <strong>₹3,200</strong>
                </div>
                <div class="info-row">
                    <span>Shipping</span>
                    <strong>₹2,200</strong>
                </div>
                <div class="info-row">
                    <span>Total</span>
                    <strong>₹45,200</strong>
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Products in this order</h3>
        </div>
        <div class="card-body p-0">
            <div class="table-wrapper">
                <table class="sale-items-table">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Qty</th>
                            <th>Unit Price</th>
                            <th>Total</th>
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
                        <tr>
                            <td>Finolex Copper Wire 1.5 sq mm</td>
                            <td>5</td>
                            <td>₹1,850</td>
                            <td>₹9,250</td>
                        </tr>
                        <tr>
                            <td>Stainless Steel Hinges 4-inch</td>
                            <td>20</td>
                            <td>₹120</td>
                            <td>₹2,400</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
