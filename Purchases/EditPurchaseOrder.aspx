<%@ Page Title="Edit Purchase Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditPurchaseOrder.aspx.cs" Inherits="Stock_Forgeeee.Purchases.EditPurchaseOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb (Matching Figma) -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; margin-bottom: 12px;">
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" style="color: #6B7280; text-decoration: none;">Purchases</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" style="color: #6B7280; text-decoration: none;">Purchase Orders</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" style="color: #6B7280; text-decoration: none;">PO-2026-0048</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <span style="color: #111827; font-weight: 600;">Edit</span>
    </div>

    <!-- Page Header (Matching Figma) -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 20px;">
        <div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827; margin: 0;">
                    Edit Purchase Order
                </h1>
                <span style="display: inline-block; padding: 2px 10px; background: #F3F4F6; border: 1px solid #E5E7EB; border-radius: 9999px; font-size: 11px; font-weight: 600; color: #4B5563; text-transform: uppercase; letter-spacing: 0.3px;">
                    STATUS: PENDING
                </span>
            </div>
            <div class="sf-page-subtitle" style="font-size: 13.5px; color: #6B7280; margin-top: 4px;">
                Update the purchase order before it is received.
            </div>
        </div>
        <div class="sf-header-actions" style="display: flex; align-items: center; gap: 10px;">
            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" style="display: inline-flex; align-items: center; justify-content: center; padding: 7px 18px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">
                Cancel
            </a>
            <asp:Button ID="btnSaveOrder" runat="server" Text="Save Changes" style="padding: 7px 20px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; font-size: 13px; font-weight: 600; color: #FFFFFF; cursor: pointer;" OnClick="btnSaveOrder_Click" />
        </div>
    </div>

    <!-- Alert Feedback -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 12px 16px; border-radius: 6px; margin-bottom: 20px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
        <i class="bi bi-exclamation-triangle-fill"></i>
        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
    </asp:Panel>

    <!-- Top Fields Parameter Card (4 Columns: PO Number, Supplier, Expected Delivery, Notes) -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 16px 20px; margin-bottom: 20px;">
        <div style="display: grid; grid-template-columns: 1fr 1.3fr 1fr 1.5fr; gap: 16px;">
            <div>
                <label style="display: block; font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">PO NUMBER</label>
                <asp:TextBox ID="txtPoNumber" runat="server" Text="PO-2026-0048" ReadOnly="true" style="width: 100%; height: 36px; padding: 6px 12px; border: 1px solid #E5E7EB; border-radius: 6px; font-size: 13px; color: #111827; background: #F9FAFB; box-sizing: border-box; font-family: monospace;"></asp:TextBox>
            </div>
            <div>
                <label style="display: block; font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">SUPPLIER</label>
                <asp:DropDownList ID="ddlSupplier" runat="server" style="width: 100%; height: 36px; padding: 6px 28px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; box-sizing: border-box; outline: none; appearance: none; -webkit-appearance: none; background-image: url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'14\' viewBox=\'0 0 24 24\' width=\'14\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>'); background-repeat: no-repeat; background-position: right 8px center;">
                    <asp:ListItem Text="ABC Hardware Suppliers" Value="ABC Hardware Suppliers" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Patel Industrial Hardware" Value="Patel Industrial Hardware"></asp:ListItem>
                    <asp:ListItem Text="Reliable Tools &amp; Hardware" Value="Reliable Tools &amp; Hardware"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label style="display: block; font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">EXPECTED DELIVERY</label>
                <asp:TextBox ID="txtExpectedDelivery" runat="server" Text="10/15/2026" style="width: 100%; height: 36px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; box-sizing: border-box; outline: none;"></asp:TextBox>
            </div>
            <div>
                <label style="display: block; font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">NOTES</label>
                <asp:TextBox ID="txtNotes" runat="server" placeholder="Add notes..." style="width: 100%; height: 36px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; box-sizing: border-box; outline: none;"></asp:TextBox>
            </div>
        </div>
    </div>

    <!-- Items Grid Card (Matching Figma Proportions & Canvas) -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; overflow: hidden; min-height: 480px; display: flex; flex-direction: column; justify-content: space-between; margin-bottom: 20px;">
        <div style="overflow-x: auto;">
            <table style="width: 100%; border-collapse: collapse; text-align: left; font-size: 13px;">
                <thead>
                    <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB; color: #6B7280; font-size: 11px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.3px;">
                        <th style="padding: 12px 20px; width: 30%;">PRODUCT</th>
                        <th style="padding: 12px 14px; width: 14%;">SKU</th>
                        <th style="padding: 12px 14px; text-align: center; width: 10%;">QTY</th>
                        <th style="padding: 12px 14px; text-align: right; width: 14%;">UNIT PRICE (₹)</th>
                        <th style="padding: 12px 14px; text-align: right; width: 10%;">TAX (₹)</th>
                        <th style="padding: 12px 14px; text-align: right; width: 10%;">DISC (₹)</th>
                        <th style="padding: 12px 20px; text-align: right; width: 12%;">TOTAL (₹)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 16px 20px;">
                            <div style="font-weight: 600; color: #111827; font-size: 13.5px;">Heavy Duty Steel Rack</div>
                        </td>
                        <td style="padding: 16px 14px; color: #4B5563; font-family: monospace;">HDSR-992</td>
                        <td style="padding: 16px 14px; text-align: center;">
                            <span style="font-weight: 600; color: #111827;">20</span>
                            <div style="font-size: 11px; color: #6B7280; margin-top: 2px;">Recv: 0</div>
                        </td>
                        <td style="padding: 16px 14px; text-align: right; font-variant-numeric: tabular-nums;">1,250.00</td>
                        <td style="padding: 16px 14px; text-align: right; font-variant-numeric: tabular-nums; color: #4B5563;">4,500.00</td>
                        <td style="padding: 16px 14px; text-align: right; font-variant-numeric: tabular-nums; color: #4B5563;">0.00</td>
                        <td style="padding: 16px 20px; text-align: right; font-weight: 700; color: #111827; font-variant-numeric: tabular-nums;">26,750.00</td>
                    </tr>
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 16px 20px;">
                            <div style="font-weight: 600; color: #111827; font-size: 13.5px;">Industrial Grade Bolts (Box)</div>
                        </td>
                        <td style="padding: 16px 14px; color: #4B5563; font-family: monospace;">IGB-102</td>
                        <td style="padding: 16px 14px; text-align: center;">
                            <span style="font-weight: 600; color: #111827;">50</span>
                            <div style="font-size: 11px; color: #6B7280; margin-top: 2px;">Recv: 0</div>
                        </td>
                        <td style="padding: 16px 14px; text-align: right; font-variant-numeric: tabular-nums;">500.00</td>
                        <td style="padding: 16px 14px; text-align: right; font-variant-numeric: tabular-nums; color: #4B5563;">2,250.00</td>
                        <td style="padding: 16px 14px; text-align: right; font-variant-numeric: tabular-nums; color: #DC2626;">500.00</td>
                        <td style="padding: 16px 20px; text-align: right; font-weight: 700; color: #111827; font-variant-numeric: tabular-nums;">29,500.00</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Add Product Action at Bottom of Table Card -->
        <div style="padding: 14px 20px; border-top: 1px solid #E5E7EB; background: #FFFFFF;">
            <a href="javascript:void(0)" style="color: #006C44; font-weight: 600; text-decoration: none; font-size: 13.5px; display: inline-flex; align-items: center; gap: 6px;">
                <i class="bi bi-plus-lg"></i> Add Product
            </a>
        </div>
    </div>

    <!-- Summary Total Card (Bottom Right aligned) -->
    <div style="display: flex; justify-content: flex-end; margin-bottom: 30px;">
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; width: 320px; padding: 20px;">
            <div style="display: flex; justify-content: space-between; padding-bottom: 8px; font-size: 13px; color: #4B5563;">
                <span>Subtotal</span>
                <strong style="color: #111827; font-family: monospace;">₹50,000.00</strong>
            </div>
            <div style="display: flex; justify-content: space-between; padding-bottom: 8px; font-size: 13px; color: #DC2626;">
                <span>Discount</span>
                <strong style="font-family: monospace;">-₹500.00</strong>
            </div>
            <div style="display: flex; justify-content: space-between; padding-bottom: 12px; font-size: 13px; color: #4B5563; border-bottom: 1px solid #E5E7EB;">
                <span>Tax</span>
                <strong style="color: #111827; font-family: monospace;">₹6,750.00</strong>
            </div>
            <div style="display: flex; justify-content: space-between; align-items: center; padding-top: 14px;">
                <span style="font-size: 15px; font-weight: 700; color: #111827;">Total</span>
                <span style="font-size: 20px; font-weight: 800; color: #111827; font-family: monospace;">₹56,250.00</span>
            </div>
        </div>
    </div>
</asp:Content>
