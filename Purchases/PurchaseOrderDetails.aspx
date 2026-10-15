<%@ Page Title="Purchase Order Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseOrderDetails.aspx.cs" Inherits="Stock_Forgeeee.Purchases.PurchaseOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; margin-bottom: 12px;">
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" style="color: #6B7280; text-decoration: none;">Purchases</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" style="color: #6B7280; text-decoration: none;">Purchase Orders</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <span style="color: #111827; font-weight: 600;">PO-2026-0048</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827; margin: 0;">
                    Purchase Order #PO-2026-0048
                </h1>
                <span style="display: inline-block; padding: 2px 10px; background: #F3F4F6; border: 1px solid #E5E7EB; border-radius: 9999px; font-size: 12px; font-weight: 500; color: #4B5563;">
                    Pending
                </span>
            </div>
            <div class="sf-page-subtitle" style="font-size: 13.5px; color: #4B5563; margin-top: 4px;">ABC Hardware Suppliers</div>
        </div>
        <div class="sf-header-actions" style="display: flex; align-items: center; gap: 10px;">
            <a href="<%= ResolveUrl("~/Purchases/EditPurchaseOrder.aspx?id=PO-2026-0048") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 14px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">
                <i class="bi bi-pencil" style="font-size: 12px;"></i> Edit
            </a>
            <a href="<%= ResolveUrl("~/Purchases/PrintPurchaseOrder.aspx?id=PO-2026-0048") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 14px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">
                <i class="bi bi-printer" style="font-size: 12px;"></i> Print
            </a>
            <a href="<%= ResolveUrl("~/Purchases/ReceivePurchase.aspx?id=PO-2026-0048") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 16px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; font-size: 13px; font-weight: 600; color: #FFFFFF; text-decoration: none;">
                Receive Purchase
            </a>
            <button type="button" class="icon-button" title="More Actions" style="width: 36px; height: 36px; border: 1px solid #D1D5DB; border-radius: 6px; background: #FFFFFF; display: inline-flex; align-items: center; justify-content: center; color: #4B5563; cursor: pointer;">
                <i class="bi bi-three-dots-vertical"></i>
            </button>
        </div>
    </div>

    <!-- Top Info Grid: Order Details & Supplier Info -->
    <div style="display: grid; grid-template-columns: 2.3fr 1fr; gap: 20px; margin-bottom: 24px;">
        <!-- Left Panel: Key Dates & Status -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 24px;">
            <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px;">
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">Order Date</div>
                    <div style="font-size: 15px; font-weight: 600; color: #111827;">16 Aug 2026</div>
                </div>
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">Expected Delivery</div>
                    <div style="font-size: 15px; font-weight: 600; color: #111827;">22 Aug 2026</div>
                </div>
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">Status</div>
                    <div style="font-size: 15px; font-weight: 600; color: #111827;">Pending</div>
                </div>
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">Created By</div>
                    <div style="font-size: 15px; font-weight: 600; color: #111827;">Admin</div>
                </div>
            </div>
        </div>

        <!-- Right Panel: Supplier Details -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 8px;">
                <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.3px;">Supplier Details</div>
                <i class="bi bi-truck" style="color: #4B5563; font-size: 16px;"></i>
            </div>
            <div style="font-size: 15px; font-weight: 700; color: #111827; margin-bottom: 4px;">ABC Hardware Suppliers</div>
            <div style="font-size: 12.5px; color: #4B5563; margin-bottom: 2px;">Contact: John Doe</div>
            <div style="font-size: 12.5px; color: #4B5563; margin-bottom: 2px;">+91 98765 43210</div>
            <div style="font-size: 12.5px; color: #4B5563; margin-bottom: 12px;">contact@abchardware.in</div>
            <div>
                <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1001") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 4px;">
                    View Supplier Details <i class="bi bi-arrow-right"></i>
                </a>
            </div>
        </div>
    </div>

    <!-- Order Items Panel -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; margin-bottom: 24px; overflow: hidden;">
        <div style="padding: 16px 20px; border-bottom: 1px solid #E5E7EB;">
            <div style="font-size: 15px; font-weight: 700; color: #111827;">Order Items</div>
        </div>
        <div style="overflow-x: auto;">
            <table style="width: 100%; border-collapse: collapse; text-align: left; font-size: 13px;">
                <thead>
                    <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB; color: #6B7280; font-size: 11px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.3px;">
                        <th style="padding: 12px 20px; font-weight: 600;">Product</th>
                        <th style="padding: 12px 20px; text-align: right; font-weight: 600;">Quantity</th>
                        <th style="padding: 12px 20px; text-align: right; font-weight: 600;">Received</th>
                        <th style="padding: 12px 20px; text-align: right; font-weight: 600;">Unit Price</th>
                        <th style="padding: 12px 20px; text-align: right; font-weight: 600;">Discount</th>
                        <th style="padding: 12px 20px; text-align: right; font-weight: 600;">Tax</th>
                        <th style="padding: 12px 20px; text-align: right; font-weight: 600;">Total</th>
                    </tr>
                </thead>
                <tbody style="divide-y: 1px solid #E5E7EB;">
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 16px 20px;">
                            <div style="font-weight: 600; color: #111827; font-size: 13.5px;">Heavy Duty Steel Rack</div>
                            <div style="font-size: 11.5px; color: #6B7280; margin-top: 2px;">SKU: HDSR-992</div>
                        </td>
                        <td style="padding: 16px 20px; text-align: right; font-weight: 500; color: #111827;">20 pcs</td>
                        <td style="padding: 16px 20px; text-align: right; color: #6B7280;">0 pcs</td>
                        <td style="padding: 16px 20px; text-align: right; color: #111827; font-variant-numeric: tabular-nums;">₹1,250.00</td>
                        <td style="padding: 16px 20px; text-align: right; color: #111827; font-variant-numeric: tabular-nums;">₹500.00</td>
                        <td style="padding: 16px 20px; text-align: right; color: #111827; font-variant-numeric: tabular-nums;">₹2,250.00</td>
                        <td style="padding: 16px 20px; text-align: right; font-weight: 700; color: #111827; font-variant-numeric: tabular-nums;">₹26,750.00</td>
                    </tr>
                    <tr>
                        <td style="padding: 16px 20px;">
                            <div style="font-weight: 600; color: #111827; font-size: 13.5px;">Industrial Grade Bolts (Box)</div>
                            <div style="font-size: 11.5px; color: #6B7280; margin-top: 2px;">SKU: IGB-102</div>
                        </td>
                        <td style="padding: 16px 20px; text-align: right; font-weight: 500; color: #111827;">50 box</td>
                        <td style="padding: 16px 20px; text-align: right; color: #6B7280;">0 box</td>
                        <td style="padding: 16px 20px; text-align: right; color: #111827; font-variant-numeric: tabular-nums;">₹500.00</td>
                        <td style="padding: 16px 20px; text-align: right; color: #111827; font-variant-numeric: tabular-nums;">₹0.00</td>
                        <td style="padding: 16px 20px; text-align: right; color: #111827; font-variant-numeric: tabular-nums;">₹4,500.00</td>
                        <td style="padding: 16px 20px; text-align: right; font-weight: 700; color: #111827; font-variant-numeric: tabular-nums;">₹29,500.00</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bottom Section: Notes & Totals Grid -->
    <div style="display: grid; grid-template-columns: 1.5fr 1fr; gap: 20px;">
        <!-- Notes Box -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
            <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 8px; letter-spacing: 0.3px;">Notes</div>
            <div style="font-size: 13px; color: #4B5563; line-height: 1.5;">
                Please ensure delivery at Gate 3 between 9 AM and 4 PM. Contact warehouse manager upon arrival.
            </div>
        </div>

        <!-- Totals Financial Summary -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
            <div style="display: flex; justify-content: space-between; padding-bottom: 8px; font-size: 13.5px; color: #4B5563;">
                <span>Subtotal</span>
                <span style="font-variant-numeric: tabular-nums; font-weight: 600; color: #111827;">₹50,000.00</span>
            </div>
            <div style="display: flex; justify-content: space-between; padding-bottom: 8px; font-size: 13.5px; color: #DC2626;">
                <span>Discount</span>
                <span style="font-variant-numeric: tabular-nums; font-weight: 600;">-₹500.00</span>
            </div>
            <div style="display: flex; justify-content: space-between; padding-bottom: 12px; font-size: 13.5px; color: #4B5563; border-bottom: 1px solid #E5E7EB;">
                <span>Tax</span>
                <span style="font-variant-numeric: tabular-nums; font-weight: 600; color: #111827;">₹6,750.00</span>
            </div>
            <div style="display: flex; justify-content: space-between; align-items: center; padding-top: 14px;">
                <span style="font-size: 15px; font-weight: 700; color: #111827;">Total</span>
                <span style="font-size: 24px; font-weight: 800; color: #111827; font-variant-numeric: tabular-nums;">₹56,250.00</span>
            </div>
        </div>
    </div>
</asp:Content>
