<%@ Page Title="Purchase Order Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseOrderDetails.aspx.cs" Inherits="Stock_Forgeeee.Purchases.PurchaseOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>">Purchases</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>">Purchase Orders</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">PO-2026-0048</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">
                Purchase Order #PO-2026-0048
                <span class="sf-pill sf-pill-neutral" style="font-size: 12px; font-weight: 500;">Pending</span>
            </h1>
            <div class="sf-page-subtitle">ABC Hardware Suppliers</div>
        </div>
        <div class="sf-header-actions">
            <a href="<%= ResolveUrl("~/Purchases/EditPurchaseOrder.aspx?id=PO-2026-0048") %>" class="btn-outline-action">
                <i class="bi bi-pencil"></i> Edit
            </a>
            <a href="<%= ResolveUrl("~/Purchases/ReceivePurchase.aspx?id=PO-2026-0048") %>" class="btn-primary-action">
                <i class="bi bi-box-arrow-in-down"></i> Receive Purchase
            </a>
            <a href="<%= ResolveUrl("~/Purchases/PrintPurchaseOrder.aspx?id=PO-2026-0048") %>" class="btn-outline-action" title="Print Purchase Order">
                <i class="bi bi-printer"></i>
            </a>
        </div>
    </div>

    <!-- Top Info Grid: Order Details & Supplier Info -->
    <div style="display: grid; grid-template-columns: 2fr 1fr; gap: 20px; margin-bottom: 24px;">
        <!-- Left Panel: Key Dates & Status -->
        <div class="sf-card" style="margin-bottom: 0; padding: 24px;">
            <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px;">
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px;">Order Date</div>
                    <div style="font-size: 15px; font-weight: 600; color: #111827;">16 Aug 2026</div>
                </div>
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px;">Expected Delivery</div>
                    <div style="font-size: 15px; font-weight: 600; color: #111827;">22 Aug 2026</div>
                </div>
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px;">Status</div>
                    <div><span class="sf-pill sf-pill-neutral">Pending</span></div>
                </div>
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px;">Created By</div>
                    <div style="font-size: 15px; font-weight: 600; color: #111827;">Admin</div>
                </div>
            </div>
        </div>

        <!-- Right Panel: Supplier Details -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 8px;">
                <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase;">Supplier Details</div>
                <i class="bi bi-truck text-muted" style="font-size: 18px;"></i>
            </div>
            <div style="font-size: 15px; font-weight: 700; color: #111827; margin-bottom: 4px;">ABC Hardware Suppliers</div>
            <div style="font-size: 13px; color: #4B5563; margin-bottom: 2px;">Contact: John Doe</div>
            <div style="font-size: 13px; color: #4B5563; margin-bottom: 2px;">+91 98765 43210</div>
            <div style="font-size: 13px; color: #4B5563; margin-bottom: 10px;">contact@abchardware.in</div>
            <div>
                <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1001") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none;">
                    View Supplier Details &rarr;
                </a>
            </div>
        </div>
    </div>

    <!-- Order Items Panel -->
    <div class="sf-table-card">
        <div class="sf-table-header">
            <div class="sf-table-title">Order Items</div>
        </div>
        <div style="overflow-x: auto;">
            <table class="sf-table">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th style="text-align: right;">Quantity</th>
                        <th style="text-align: right;">Received</th>
                        <th style="text-align: right;">Unit Price</th>
                        <th style="text-align: right;">Discount</th>
                        <th style="text-align: right;">Tax</th>
                        <th style="text-align: right;">Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Heavy Duty Steel Rack</div>
                            <div style="font-size: 11.5px; color: #6B7280;">SKU: HDSR-992</div>
                        </td>
                        <td style="text-align: right;">20 pcs</td>
                        <td style="text-align: right; color: #6B7280;">0 pcs</td>
                        <td style="text-align: right;">₹1,250.00</td>
                        <td style="text-align: right;">₹500.00</td>
                        <td style="text-align: right;">₹2,250.00</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹26,750.00</td>
                    </tr>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Industrial Grade Bolts (Box)</div>
                            <div style="font-size: 11.5px; color: #6B7280;">SKU: IGB-102</div>
                        </td>
                        <td style="text-align: right;">50 box</td>
                        <td style="text-align: right; color: #6B7280;">0 box</td>
                        <td style="text-align: right;">₹500.00</td>
                        <td style="text-align: right;">₹0.00</td>
                        <td style="text-align: right;">₹4,500.00</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹29,500.00</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bottom Section: Notes & Totals Grid -->
    <div style="display: grid; grid-template-columns: 1.5fr 1fr; gap: 20px;">
        <!-- Notes Box -->
        <div class="sf-card" style="padding: 20px;">
            <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 8px;">Notes</div>
            <div style="font-size: 13.5px; color: #4B5563; line-height: 1.5;">
                Please ensure delivery at Gate 3 between 9 AM and 4 PM. Contact warehouse manager upon arrival.
            </div>
        </div>

        <!-- Totals Financial Summary -->
        <div class="sf-card" style="padding: 20px;">
            <div style="display: flex; justify-content: space-between; padding-bottom: 8px; font-size: 13.5px; color: #4B5563;">
                <span>Subtotal</span>
                <strong>₹50,000.00</strong>
            </div>
            <div style="display: flex; justify-content: space-between; padding-bottom: 8px; font-size: 13.5px; color: #DC2626;">
                <span>Discount</span>
                <strong>-₹500.00</strong>
            </div>
            <div style="display: flex; justify-content: space-between; padding-bottom: 12px; font-size: 13.5px; color: #4B5563; border-bottom: 1px solid #E5E7EB;">
                <span>Tax</span>
                <strong>₹6,750.00</strong>
            </div>
            <div style="display: flex; justify-content: space-between; align-items: center; padding-top: 14px;">
                <span style="font-size: 16px; font-weight: 700; color: #111827;">Total</span>
                <span style="font-size: 24px; font-weight: 800; color: #111827;">₹56,250.00</span>
            </div>
        </div>
    </div>
</asp:Content>
