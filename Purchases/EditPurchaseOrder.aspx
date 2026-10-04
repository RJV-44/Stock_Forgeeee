<%@ Page Title="Edit Purchase Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditPurchaseOrder.aspx.cs" Inherits="Stock_Forgeeee.Purchases.EditPurchaseOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>">Purchases</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>">Purchase Orders</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>">PO-2026-0048</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Edit</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">
                Edit Purchase Order
                <span class="sf-pill sf-pill-neutral" style="font-size: 11px; text-transform: uppercase;">Status: Pending</span>
            </h1>
            <div class="sf-page-subtitle">Update the purchase order before it is received.</div>
        </div>
        <div class="sf-header-actions">
            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" class="btn-outline-action">Cancel</a>
            <asp:Button ID="btnSaveOrder" runat="server" Text="Save Changes" CssClass="btn-success-dark" />
        </div>
    </div>

    <!-- Top Fields Card -->
    <div class="sf-card" style="padding: 20px; margin-bottom: 20px;">
        <div style="display: grid; grid-template-columns: 1fr 1.2fr 1fr 1.5fr; gap: 16px;">
            <div>
                <label class="sf-form-label">PO Number</label>
                <input type="text" class="sf-input" value="PO-2026-0048" readonly />
            </div>
            <div>
                <label class="sf-form-label">Supplier</label>
                <select class="sf-select" style="width: 100%;">
                    <option selected>ABC Hardware Suppliers</option>
                    <option>Patel Industrial Hardware</option>
                    <option>Reliable Tools &amp; Hardware</option>
                </select>
            </div>
            <div>
                <label class="sf-form-label">Expected Delivery</label>
                <input type="text" class="sf-input" value="10/15/2026" />
            </div>
            <div>
                <label class="sf-form-label">Notes</label>
                <input type="text" class="sf-input" placeholder="Add notes..." />
            </div>
        </div>
    </div>

    <!-- Items Grid Card -->
    <div class="sf-table-card" style="margin-bottom: 20px;">
        <div style="overflow-x: auto;">
            <table class="sf-table">
                <thead>
                    <tr>
                        <th style="width: 32%;">Product</th>
                        <th style="width: 14%;">SKU</th>
                        <th style="width: 10%; text-align: center;">Qty</th>
                        <th style="width: 12%; text-align: right;">Unit Price (₹)</th>
                        <th style="width: 10%; text-align: right;">Tax (₹)</th>
                        <th style="width: 10%; text-align: right;">Disc (₹)</th>
                        <th style="width: 12%; text-align: right;">Total (₹)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Heavy Duty Steel Rack</div>
                        </td>
                        <td style="color: #4B5563;">HDSR-992</td>
                        <td style="text-align: center;">
                            <span style="font-weight: 600; color: #111827;">20</span>
                            <div style="font-size: 11px; color: #6B7280;">Recv: 0</div>
                        </td>
                        <td style="text-align: right;">1,250.00</td>
                        <td style="text-align: right;">4,500.00</td>
                        <td style="text-align: right;">0.00</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">26,750.00</td>
                    </tr>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Industrial Grade Bolts (Box)</div>
                        </td>
                        <td style="color: #4B5563;">IGB-102</td>
                        <td style="text-align: center;">
                            <span style="font-weight: 600; color: #111827;">50</span>
                            <div style="font-size: 11px; color: #6B7280;">Recv: 0</div>
                        </td>
                        <td style="text-align: right;">500.00</td>
                        <td style="text-align: right;">2,250.00</td>
                        <td style="text-align: right;">500.00</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">29,500.00</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="padding: 14px 20px; border-top: 1px solid #E5E7EB; background: #ffffff;">
            <a href="javascript:void(0)" style="color: #006C44; font-weight: 600; text-decoration: none; font-size: 13.5px; display: inline-flex; align-items: center; gap: 6px;">
                <i class="bi bi-plus-lg"></i> Add Product
            </a>
        </div>
    </div>

    <!-- Summary Total Card (Bottom Right aligned) -->
    <div style="display: flex; justify-content: flex-end;">
        <div class="sf-card" style="width: 320px; padding: 20px;">
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
                <span style="font-size: 22px; font-weight: 800; color: #111827;">₹56,250.00</span>
            </div>
        </div>
    </div>
</asp:Content>
