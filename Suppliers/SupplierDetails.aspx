<%@ Page Title="Supplier Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SupplierDetails.aspx.cs" Inherits="Stock_Forgeeee.Suppliers.SupplierDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <div class="eyebrow"><i class="bi bi-truck me-1"></i> Supplier Profile</div>
            <h1 class="page-title">Bosch Power Tools India Ltd</h1>
            <div class="page-subtitle">Supplier Code: <code>SUP-1001</code> &bull; Primary Category: <strong>Power Tools</strong></div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Purchases/ReceivePurchase.aspx?supplier=1001") %>" class="btn-primary">
                <i class="bi bi-plus-lg"></i> Create Purchase Order
            </a>
            <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1001") %>" class="btn-secondary">
                <i class="bi bi-pencil"></i> Edit Supplier
            </a>
            <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to Directory
            </a>
        </div>
    </div>

    <div class="metric-grid">
        <div class="metric-card">
            <span class="metric-label">Total Purchase Orders</span>
            <div class="metric-value">34 Orders</div>
            <span class="metric-change positive"><i class="bi bi-check2-circle"></i> 31 Completed</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Total Spend</span>
            <div class="metric-value">&#8377;18,50,000</div>
            <span class="metric-change positive"><i class="bi bi-graph-up-arrow"></i> Preferred Vendor</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Outstanding Balance</span>
            <div class="metric-value">&#8377;1,45,000</div>
            <span class="metric-change negative"><i class="bi bi-clock-history"></i> Due in 12 days</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">On-Time Delivery Rate</span>
            <div class="metric-value">98.5%</div>
            <span class="metric-change positive"><i class="bi bi-star-fill text-warning"></i> Tier 1 Supplier</span>
        </div>
    </div>

    <div class="info-grid">
        <div class="info-card">
            <div class="card-header">
                <h3 class="card-title"><i class="bi bi-building me-2 text-primary"></i> Contact &amp; Business Profile</h3>
            </div>
            <div class="info-list">
                <div class="info-row">
                    <span>Contact Person</span>
                    <strong>Rajesh Verma (Regional Sales Mgr)</strong>
                </div>
                <div class="info-row">
                    <span>Phone Number</span>
                    <strong>+91 98200 11223</strong>
                </div>
                <div class="info-row">
                    <span>Email Address</span>
                    <strong>rajesh@bosch.co.in</strong>
                </div>
                <div class="info-row">
                    <span>GSTIN / Tax ID</span>
                    <strong><code>27AAACB1234F1Z5</code></strong>
                </div>
                <div class="info-row">
                    <span>Payment Terms</span>
                    <strong>Net 30 Days (Credit)</strong>
                </div>
                <div class="info-row">
                    <span>Warehouse Address</span>
                    <strong>Plot 14, MIDC Powai, Mumbai, MH 400093</strong>
                </div>
            </div>
        </div>

        <div class="info-card">
            <div class="card-header">
                <h3 class="card-title"><i class="bi bi-shield-check me-2 text-primary"></i> Contract &amp; SLA Terms</h3>
            </div>
            <div class="info-list">
                <div class="info-row">
                    <span>Vendor Rating</span>
                    <strong><i class="bi bi-star-fill text-warning me-1"></i> 4.9 / 5.0 (Preferred)</strong>
                </div>
                <div class="info-row">
                    <span>Average Delivery SLA</span>
                    <strong>2 - 3 Business Days</strong>
                </div>
                <div class="info-row">
                    <span>Minimum Order Value</span>
                    <strong>&#8377;25,000</strong>
                </div>
                <div class="info-row">
                    <span>Warranty Support</span>
                    <strong>1 Year Manufacturer Replacement</strong>
                </div>
                <div class="info-row">
                    <span>Defect Return Window</span>
                    <strong>15 Days Defect Replacement</strong>
                </div>
                <div class="info-row">
                    <span>Account Manager</span>
                    <strong>StockForge Procurement Desk</strong>
                </div>
            </div>
        </div>
    </div>

    <!-- Recent Purchase Orders Table -->
    <div class="card">
        <div class="card-header">
            <h3 class="card-title"><i class="bi bi-cart-check me-2 text-primary"></i> Recent Purchase Orders</h3>
            <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" class="small-link">View All Purchases &rarr;</a>
        </div>
        <div class="card-body p-0">
            <div class="table-wrapper">
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>PO Reference</th>
                            <th>Order Date</th>
                            <th>Items Count</th>
                            <th>Total Amount</th>
                            <th>Delivery Status</th>
                            <th>Payment Status</th>
                            <th class="text-end">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><code>PO-2026-089</code></td>
                            <td>Sep 24, 2026</td>
                            <td>12 SKUs (45 Pcs)</td>
                            <td><strong>&#8377;1,45,000</strong></td>
                            <td><span class="badge badge-warning">In Transit</span></td>
                            <td><span class="badge badge-neutral">Pending (Net 30)</span></td>
                            <td class="text-end">
                                <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=89") %>" class="btn-icon" title="View PO"><i class="bi bi-eye"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td><code>PO-2026-074</code></td>
                            <td>Aug 18, 2026</td>
                            <td>8 SKUs (60 Pcs)</td>
                            <td><strong>&#8377;3,20,000</strong></td>
                            <td><span class="badge badge-success">Received</span></td>
                            <td><span class="badge badge-success">Paid</span></td>
                            <td class="text-end">
                                <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=74") %>" class="btn-icon" title="View PO"><i class="bi bi-eye"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td><code>PO-2026-051</code></td>
                            <td>Jul 05, 2026</td>
                            <td>15 SKUs (110 Pcs)</td>
                            <td><strong>&#8377;4,80,000</strong></td>
                            <td><span class="badge badge-success">Received</span></td>
                            <td><span class="badge badge-success">Paid</span></td>
                            <td class="text-end">
                                <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=51") %>" class="btn-icon" title="View PO"><i class="bi bi-eye"></i></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Supplied Products Summary Table -->
    <div class="card">
        <div class="card-header">
            <h3 class="card-title"><i class="bi bi-box-seam me-2 text-primary"></i> Supplied Product Catalog</h3>
        </div>
        <div class="card-body p-0">
            <div class="table-wrapper">
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>SKU</th>
                            <th>Unit Wholesale Price</th>
                            <th>Retail Selling Price</th>
                            <th>Current Stock</th>
                            <th>Stock Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <strong>Bosch GSB 500W Impact Drill</strong>
                            </td>
                            <td><code>HW-BSH-500</code></td>
                            <td>&#8377;3,200</td>
                            <td>&#8377;4,150</td>
                            <td>3 Pcs</td>
                            <td><span class="badge badge-danger">Low Stock</span></td>
                        </tr>
                        <tr>
                            <td>
                                <strong>Bosch Professional Angle Grinder GWS 600</strong>
                            </td>
                            <td><code>HW-BSH-600</code></td>
                            <td>&#8377;2,850</td>
                            <td>&#8377;3,600</td>
                            <td>18 Pcs</td>
                            <td><span class="badge badge-success">In Stock</span></td>
                        </tr>
                        <tr>
                            <td>
                                <strong>Bosch Cordless Screw Driver IXO 6</strong>
                            </td>
                            <td><code>HW-BSH-006</code></td>
                            <td>&#8377;2,100</td>
                            <td>&#8377;2,790</td>
                            <td>12 Pcs</td>
                            <td><span class="badge badge-success">In Stock</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
