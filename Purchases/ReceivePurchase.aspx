<%@ Page Title="Receive Purchase" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReceivePurchase.aspx.cs" Inherits="Stock_Forgeeee.Purchases.ReceivePurchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>">Purchases</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>">Purchase Orders</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>">PO-2026-0048</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Receive Purchase</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">
                Receive Purchase
                <span class="sf-pill sf-pill-danger" style="font-size: 12px; font-weight: 500;">Partially Received</span>
            </h1>
        </div>
        <div class="sf-header-actions">
            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" class="btn-outline-action">
                <i class="bi bi-arrow-left"></i> Back to Purchase Order
            </a>
        </div>
    </div>

    <!-- Summary Info Strip -->
    <div class="sf-card" style="padding: 16px 24px; margin-bottom: 20px;">
        <div style="display: grid; grid-template-columns: 1fr 1.5fr 1fr 1fr; gap: 20px;">
            <div style="border-right: 1px solid #E5E7EB; padding-right: 16px;">
                <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Purchase Order</div>
                <div style="font-size: 15px; font-weight: 700; color: #006C44;">PO-2026-0048</div>
            </div>
            <div style="border-right: 1px solid #E5E7EB; padding-right: 16px;">
                <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Supplier</div>
                <div style="font-size: 15px; font-weight: 700; color: #111827;">ABC Hardware Suppliers</div>
            </div>
            <div style="border-right: 1px solid #E5E7EB; padding-right: 16px;">
                <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Order Date</div>
                <div style="font-size: 14px; font-weight: 600; color: #111827;">16 Aug 2026</div>
            </div>
            <div>
                <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Expected Delivery</div>
                <div style="font-size: 14px; font-weight: 600; color: #111827;">22 Aug 2026</div>
            </div>
        </div>
    </div>

    <!-- Main 2-Column Section -->
    <div style="display: grid; grid-template-columns: 2.2fr 1fr; gap: 20px; margin-bottom: 20px;">
        <!-- Left Table: Items to Receive -->
        <div class="sf-table-card" style="margin-bottom: 0;">
            <div class="sf-table-header">
                <div class="sf-table-title">Items to Receive</div>
            </div>
            <div style="overflow-x: auto;">
                <table class="sf-table">
                    <thead>
                        <tr>
                            <th style="width: 32%;">Product</th>
                            <th style="width: 10%; text-align: center;">Ordered</th>
                            <th style="width: 12%; text-align: center;">Prev. Rcvd</th>
                            <th style="width: 12%; text-align: center;">Remaining</th>
                            <th style="width: 14%; text-align: center;">Receive Now</th>
                            <th style="width: 10%;">Unit</th>
                            <th style="width: 10%;">Condition</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 38px; height: 38px; background: #F3F4F6; border: 1px solid #E5E7EB; border-radius: 6px; display: flex; align-items: center; justify-content: center; font-size: 18px; color: #6B7280;">
                                        <i class="bi bi-nut"></i>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827;">M8 Stainless Steel Hex Bolt</div>
                                        <div style="font-size: 11.5px; color: #6B7280;">SKU-HB-M8-SS</div>
                                    </div>
                                </div>
                            </td>
                            <td style="text-align: center; font-weight: 600; color: #111827;">20</td>
                            <td style="text-align: center; color: #6B7280;">8</td>
                            <td style="text-align: center; font-weight: 700; color: #16A34A;">12</td>
                            <td style="text-align: center;">
                                <input type="number" class="sf-input" value="10" style="width: 70px; text-align: center; height: 34px; padding: 4px;" />
                            </td>
                            <td style="color: #4B5563;">Piece</td>
                            <td>
                                <select class="sf-select" style="height: 34px; padding: 4px 24px 4px 8px; font-size: 12.5px;">
                                    <option selected>Good</option>
                                    <option>Damaged</option>
                                    <option>Defective</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 38px; height: 38px; background: #F3F4F6; border: 1px solid #E5E7EB; border-radius: 6px; display: flex; align-items: center; justify-content: center; font-size: 18px; color: #6B7280;">
                                        <i class="bi bi-disc"></i>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827;">Industrial Ball Bearing 50mm</div>
                                        <div style="font-size: 11.5px; color: #6B7280;">SKU-BB-50MM</div>
                                    </div>
                                </div>
                            </td>
                            <td style="text-align: center; font-weight: 600; color: #111827;">5</td>
                            <td style="text-align: center; color: #6B7280;">5</td>
                            <td style="text-align: center; font-weight: 600; color: #6B7280;">0</td>
                            <td style="text-align: center;">
                                <input type="number" class="sf-input" value="0" disabled style="width: 70px; text-align: center; height: 34px; padding: 4px; background: #F3F4F6; color: #9CA3AF;" />
                            </td>
                            <td style="color: #4B5563;">Piece</td>
                            <td>
                                <select class="sf-select" disabled style="height: 34px; padding: 4px 24px 4px 8px; font-size: 12.5px; background-color: #F3F4F6;">
                                    <option selected>Good</option>
                                </select>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Right Card: Receiving Summary -->
        <div class="sf-card" style="margin-bottom: 0; padding: 20px;">
            <div style="font-size: 15px; font-weight: 600; color: #111827; margin-bottom: 16px;">Receiving Summary</div>
            <div style="display: flex; justify-content: space-between; padding-bottom: 8px; font-size: 13px; color: #4B5563;">
                <span>Total Ordered</span>
                <strong style="color: #111827;">25</strong>
            </div>
            <div style="display: flex; justify-content: space-between; padding-bottom: 12px; font-size: 13px; color: #4B5563; border-bottom: 1px solid #E5E7EB;">
                <span>Previously Received</span>
                <strong style="color: #111827;">13</strong>
            </div>
            <div style="display: flex; justify-content: space-between; align-items: center; padding: 12px 0; font-size: 13.5px; color: #111827; font-weight: 600;">
                <span>Receiving Now</span>
                <span class="sf-pill sf-pill-success" style="font-size: 13px; font-weight: 700; padding: 2px 10px;">10</span>
            </div>
            <div style="display: flex; justify-content: space-between; padding-bottom: 14px; font-size: 13px; color: #4B5563; border-bottom: 1px solid #E5E7EB;">
                <span>Remaining After</span>
                <strong style="color: #111827;">2</strong>
            </div>
            <div style="padding-top: 14px; display: flex; flex-direction: column; gap: 8px;">
                <div style="display: flex; justify-content: space-between; font-size: 12.5px; color: #15803D;">
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <span style="width: 6px; height: 6px; border-radius: 50%; background: #16A34A;"></span> Good Qty
                    </span>
                    <strong>9</strong>
                </div>
                <div style="display: flex; justify-content: space-between; font-size: 12.5px; color: #B91C1C;">
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <span style="width: 6px; height: 6px; border-radius: 50%; background: #DC2626;"></span> Damaged Qty
                    </span>
                    <strong>1</strong>
                </div>
            </div>
        </div>
    </div>

    <!-- Bottom Fields & Confirm Buttons -->
    <div style="display: grid; grid-template-columns: 2.2fr 1fr; gap: 20px; align-items: center;">
        <div class="sf-card" style="margin-bottom: 0; padding: 18px 20px;">
            <div style="display: grid; grid-template-columns: 1fr 1fr 1.2fr 1.5fr; gap: 14px;">
                <div>
                    <label class="sf-form-label">Received Date</label>
                    <input type="text" class="sf-input" value="08/18/2026" />
                </div>
                <div>
                    <label class="sf-form-label">Received By</label>
                    <input type="text" class="sf-input" value="System Admin" readonly />
                </div>
                <div>
                    <label class="sf-form-label">Delivery Ref (Waybill)</label>
                    <input type="text" class="sf-input" placeholder="e.g. WB-12345" />
                </div>
                <div>
                    <label class="sf-form-label">Notes</label>
                    <input type="text" class="sf-input" placeholder="Optional notes on receipt" />
                </div>
            </div>
        </div>

        <div style="display: flex; flex-direction: column; gap: 8px;">
            <asp:Button ID="btnConfirmReceipt" runat="server" Text="✔ Confirm Receipt" CssClass="btn-success-dark" style="width: 100%; justify-content: center; height: 42px; font-size: 14px;" />
            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" class="btn-outline-action" style="width: 100%; justify-content: center; text-align: center; height: 38px;">Cancel</a>
        </div>
    </div>
</asp:Content>
