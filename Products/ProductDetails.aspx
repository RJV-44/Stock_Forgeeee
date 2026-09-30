<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Stock_Forgeeee.Products.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Product Details</h1>
            <div class="page-subtitle">View inventory position, product details, and warehouse performance for this item.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Products/EditProduct.aspx?id=101") %>" class="btn-secondary">
                <i class="bi bi-pencil-square"></i> Edit Product
            </a>
            <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" class="btn-primary">
                <i class="bi bi-arrow-left"></i> Back to Catalog
            </a>
        </div>
    </div>

    <div class="profile-hero">
        <div class="hero-left">
            <div class="hero-avatar"><i class="bi bi-tools"></i></div>
            <div>
                <h2 class="hero-title">Bosch GSB 500W Impact Drill</h2>
                <div class="hero-subtitle">SKU: HW-BSH-500 · Category: Power Tools</div>
            </div>
        </div>
        <span class="status-pill blocked">Low Stock</span>
    </div>

    <div class="inventory-metric-grid">
        <div class="inventory-metric-card">
            <span class="metric-label">On Hand</span>
            <div class="metric-value">3</div>
            <span class="metric-change negative"><i class="bi bi-exclamation-triangle"></i> Below reorder level</span>
        </div>
        <div class="inventory-metric-card">
            <span class="metric-label">Avg. Selling Price</span>
            <div class="metric-value">₹4,150</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +6.8%</span>
        </div>
        <div class="inventory-metric-card">
            <span class="metric-label">Units Sold</span>
            <div class="metric-value">118</div>
            <span class="metric-change positive"><i class="bi bi-graph-up"></i> This quarter</span>
        </div>
        <div class="inventory-metric-card">
            <span class="metric-label">Reorder Level</span>
            <div class="metric-value">12</div>
            <span class="metric-change positive"><i class="bi bi-bell"></i> Restock soon</span>
        </div>
    </div>

    <div class="detail-layout">
        <div class="detail-card">
            <div class="detail-header">
                <h3 class="card-title">Product Information</h3>
                <span class="status-pill active">In Stock</span>
            </div>
            <div class="detail-body">
                <div class="detail-grid">
                    <div class="row">
                        <span>Brand</span>
                        <strong>Bosch</strong>
                    </div>
                    <div class="row">
                        <span>Supplier</span>
                        <strong>Bosch India</strong>
                    </div>
                    <div class="row">
                        <span>Purchase Price</span>
                        <strong>₹3,200</strong>
                    </div>
                    <div class="row">
                        <span>Selling Price</span>
                        <strong>₹4,150</strong>
                    </div>
                    <div class="row">
                        <span>Weight</span>
                        <strong>2.4 kg</strong>
                    </div>
                    <div class="row">
                        <span>Warranty</span>
                        <strong>12 months</strong>
                    </div>
                    <div class="row">
                        <span>Location</span>
                        <strong>A-12 / Rack 4</strong>
                    </div>
                    <div class="row">
                        <span>Last Restock</span>
                        <strong>12 Sep 2026</strong>
                    </div>
                </div>
            </div>
        </div>

        <div class="detail-card">
            <div class="detail-header">
                <h3 class="card-title">Description</h3>
            </div>
            <div class="detail-body">
                <p class="page-subtitle" style="margin-top:0;">Heavy-duty impact drill built for masonry, metal, and woodwork. Suitable for construction and installation jobs with consistent torque and a durable motor casing.</p>
                <div class="summary-box">
                    <div>
                        <span class="muted-label">Stock Value</span>
                        <strong>₹12,450</strong>
                    </div>
                    <div>
                        <span class="muted-label">Turnover</span>
                        <strong>₹4.9L</strong>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card" style="margin-top:24px;">
        <div class="card-header">
            <h3 class="card-title">Recent Movement</h3>
            <a href="<%= ResolveUrl("~/Inventory/StockMovementHistory.aspx") %>" class="small-link">View history</a>
        </div>
        <div class="card-body p-0">
            <div class="table-wrapper">
                <table class="movement-table">
                    <thead>
                        <tr>
                            <th>Reference</th>
                            <th>Type</th>
                            <th>Date</th>
                            <th>Qty</th>
                            <th>Performed By</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>GRN-1042</td>
                            <td><span class="status-pill active">Inbound</span></td>
                            <td>29 Sep 2026</td>
                            <td>+12</td>
                            <td>Warehouse A</td>
                        </tr>
                        <tr>
                            <td>SO-9823</td>
                            <td><span class="status-pill pending">Outbound</span></td>
                            <td>28 Sep 2026</td>
                            <td>-5</td>
                            <td>Sales Desk</td>
                        </tr>
                        <tr>
                            <td>COUNT-07</td>
                            <td><span class="status-pill blocked">Adjustment</span></td>
                            <td>27 Sep 2026</td>
                            <td>-2</td>
                            <td>System Admin</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
