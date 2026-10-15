<%@ Page Title="Receive Purchase" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReceivePurchase.aspx.cs" Inherits="Stock_Forgeeee.Purchases.ReceivePurchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; margin-bottom: 12px;">
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" style="color: #6B7280; text-decoration: none;">Purchases</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" style="color: #6B7280; text-decoration: none;">Purchase Orders</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" style="color: #6B7280; text-decoration: none;">PO-2026-0048</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <span style="color: #111827; font-weight: 600;">Receive Purchase</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827; margin: 0;">
                    Receive Purchase
                </h1>
                <span style="display: inline-block; padding: 2px 10px; background: #FEE2E2; border-radius: 9999px; font-size: 12px; font-weight: 600; color: #DC2626;">
                    Partially Received
                </span>
            </div>
        </div>
        <div class="sf-header-actions">
            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 14px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">
                <i class="bi bi-arrow-left" style="font-size: 12px;"></i> Back to Purchase Order
            </a>
        </div>
    </div>

    <!-- Alert Feedback -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 12px 16px; border-radius: 6px; margin-bottom: 20px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
        <i class="bi bi-exclamation-triangle-fill"></i>
        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
    </asp:Panel>

    <!-- Top Summary Info Strip -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 24px; margin-bottom: 24px;">
        <div style="display: grid; grid-template-columns: 1fr 1.6fr 1fr 1fr; gap: 20px;">
            <div style="border-right: 1px solid #F3F4F6; padding-right: 16px;">
                <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">Purchase Order</div>
                <div style="font-size: 14px; font-weight: 600;">
                    <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" style="color: #006C44; text-decoration: none;">PO-2026-0048</a>
                </div>
            </div>
            <div style="border-right: 1px solid #F3F4F6; padding-right: 16px;">
                <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">Supplier</div>
                <div style="font-size: 14px; font-weight: 700; color: #111827;">ABC Hardware Suppliers</div>
            </div>
            <div style="border-right: 1px solid #F3F4F6; padding-right: 16px;">
                <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">Order Date</div>
                <div style="font-size: 14px; font-weight: 600; color: #111827;">16 Aug 2026</div>
            </div>
            <div>
                <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">Expected Delivery</div>
                <div style="font-size: 14px; font-weight: 600; color: #111827;">22 Aug 2026</div>
            </div>
        </div>
    </div>

    <!-- Main 2-Column Section -->
    <div style="display: grid; grid-template-columns: 2.3fr 1fr; gap: 20px; margin-bottom: 24px; align-items: start;">
        <!-- Left Table: Items to Receive -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; overflow: hidden;">
            <div style="padding: 16px 20px; border-bottom: 1px solid #E5E7EB;">
                <div style="font-size: 15px; font-weight: 700; color: #111827;">Items to Receive</div>
            </div>
            <div style="overflow-x: auto;">
                <table style="width: 100%; border-collapse: collapse; text-align: left; font-size: 13px;">
                    <thead>
                        <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB; color: #6B7280; font-size: 11px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.3px;">
                            <th style="padding: 12px 20px; width: 34%;">PRODUCT</th>
                            <th style="padding: 12px 14px; text-align: center; width: 10%;">ORDERED</th>
                            <th style="padding: 12px 14px; text-align: center; width: 12%;">PREV. RCVD</th>
                            <th style="padding: 12px 14px; text-align: center; width: 12%;">REMAINING</th>
                            <th style="padding: 12px 14px; text-align: center; width: 14%;">RECEIVE NOW</th>
                            <th style="padding: 12px 14px; width: 8%;">UNIT</th>
                            <th style="padding: 12px 20px; width: 10%;">CONDITION</th>
                        </tr>
                    </thead>
                    <tbody style="divide-y: 1px solid #E5E7EB;">
                        <tr style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 16px 20px;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 40px; height: 40px; background: #F9FAFB; border: 1px solid #E5E7EB; border-radius: 6px; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#4B5563" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                            <polygon points="12 2 19 6 19 14 12 18 5 14 5 6 12 2"></polygon>
                                            <circle cx="12" cy="10" r="3"></circle>
                                            <line x1="12" y1="18" x2="12" y2="22"></line>
                                        </svg>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827; font-size: 13.5px;">M8 Stainless Steel Hex Bolt</div>
                                        <div style="font-size: 11.5px; color: #6B7280; margin-top: 2px;">SKU-HB-M8-SS</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 16px 14px; text-align: center; font-weight: 600; color: #111827;">20</td>
                            <td style="padding: 16px 14px; text-align: center; color: #6B7280;">8</td>
                            <td style="padding: 16px 14px; text-align: center; font-weight: 700; color: #15803D;">12</td>
                            <td style="padding: 16px 14px; text-align: center;">
                                <input type="number" value="10" style="width: 60px; height: 32px; text-align: center; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 600; color: #111827; outline: none;" />
                            </td>
                            <td style="padding: 16px 14px; color: #4B5563;">Piece</td>
                            <td style="padding: 16px 20px;">
                                <select style="appearance: none; -webkit-appearance: none; padding: 5px 22px 5px 8px; background: #FFFFFF url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'14\' viewBox=\'0 0 24 24\' width=\'14\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>') no-repeat right 4px center; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #374151; cursor: pointer;">
                                    <option selected>Good</option>
                                    <option>Damaged</option>
                                    <option>Defective</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding: 16px 20px;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 40px; height: 40px; background: #F9FAFB; border: 1px solid #E5E7EB; border-radius: 6px; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#4B5563" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                            <circle cx="12" cy="12" r="9"></circle>
                                            <circle cx="12" cy="12" r="5"></circle>
                                            <circle cx="12" cy="6" r="1.5" fill="#4B5563"></circle>
                                            <circle cx="12" cy="18" r="1.5" fill="#4B5563"></circle>
                                            <circle cx="6" cy="12" r="1.5" fill="#4B5563"></circle>
                                            <circle cx="18" cy="12" r="1.5" fill="#4B5563"></circle>
                                        </svg>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827; font-size: 13.5px;">Industrial Ball Bearing 50mm</div>
                                        <div style="font-size: 11.5px; color: #6B7280; margin-top: 2px;">SKU-BB-50MM</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 16px 14px; text-align: center; font-weight: 600; color: #111827;">5</td>
                            <td style="padding: 16px 14px; text-align: center; color: #6B7280;">5</td>
                            <td style="padding: 16px 14px; text-align: center; font-weight: 600; color: #6B7280;">0</td>
                            <td style="padding: 16px 14px; text-align: center;">
                                <input type="number" value="0" disabled style="width: 60px; height: 32px; text-align: center; border: 1px solid #E5E7EB; border-radius: 6px; font-size: 13px; font-weight: 600; background: #F3F4F6; color: #9CA3AF;" />
                            </td>
                            <td style="padding: 16px 14px; color: #4B5563;">Piece</td>
                            <td style="padding: 16px 20px;">
                                <select disabled style="appearance: none; -webkit-appearance: none; padding: 5px 22px 5px 8px; background: #F3F4F6 url('data:image/svg+xml;utf8,<svg fill=\'%239CA3AF\' height=\'14\' viewBox=\'0 0 24 24\' width=\'14\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>') no-repeat right 4px center; border: 1px solid #E5E7EB; border-radius: 6px; font-size: 12.5px; color: #9CA3AF; cursor: not-allowed;">
                                    <option selected>Good</option>
                                </select>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- Blank vertical proportion area matching Figma -->
            <div style="height: 380px; background: #FFFFFF;"></div>
        </div>

        <!-- Right Card: Receiving Summary -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
            <div style="font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 16px;">Receiving Summary</div>
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
                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 12px; font-weight: 700; color: #15803D;">
                    10
                </span>
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
                <div style="display: flex; justify-content: space-between; font-size: 12.5px; color: #DC2626;">
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <span style="width: 6px; height: 6px; border-radius: 50%; background: #DC2626;"></span> Damaged Qty
                    </span>
                    <strong>1</strong>
                </div>
            </div>
        </div>
    </div>

    <!-- Bottom Fields & Confirm Buttons -->
    <div style="display: grid; grid-template-columns: 2.3fr 1fr; gap: 20px; align-items: center;">
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 16px 20px;">
            <div style="display: grid; grid-template-columns: 1fr 1fr 1.2fr 1.5fr; gap: 14px;">
                <div>
                    <label style="display: block; font-size: 10.5px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">RECEIVED DATE</label>
                    <asp:TextBox ID="txtReceivedDate" runat="server" Text="08/18/2026" style="width: 100%; height: 34px; padding: 4px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; box-sizing: border-box;"></asp:TextBox>
                </div>
                <div>
                    <label style="display: block; font-size: 10.5px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">RECEIVED BY</label>
                    <asp:TextBox ID="txtReceivedBy" runat="server" Text="System Admin" ReadOnly="true" style="width: 100%; height: 34px; padding: 4px 10px; border: 1px solid #E5E7EB; border-radius: 6px; font-size: 13px; color: #4B5563; background: #F3F4F6; box-sizing: border-box;"></asp:TextBox>
                </div>
                <div>
                    <label style="display: block; font-size: 10.5px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">DELIVERY REF (WAYBILL)</label>
                    <asp:TextBox ID="txtWaybill" runat="server" placeholder="e.g. WB-12345" style="width: 100%; height: 34px; padding: 4px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; box-sizing: border-box;"></asp:TextBox>
                </div>
                <div>
                    <label style="display: block; font-size: 10.5px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">NOTES</label>
                    <asp:TextBox ID="txtNotes" runat="server" placeholder="Optional notes on receipt" style="width: 100%; height: 34px; padding: 4px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; box-sizing: border-box;"></asp:TextBox>
                </div>
            </div>
        </div>

        <div style="display: flex; flex-direction: column; gap: 8px;">
            <asp:Button ID="btnConfirmReceipt" runat="server" Text="✔ Confirm Receipt" style="width: 100%; height: 42px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; color: #FFFFFF; font-size: 14px; font-weight: 600; cursor: pointer;" OnClick="btnConfirmReceipt_Click" />
            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" style="display: flex; align-items: center; justify-content: center; width: 100%; height: 38px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; color: #374151; font-size: 13px; font-weight: 500; text-decoration: none; box-sizing: border-box;">Cancel</a>
        </div>
    </div>
</asp:Content>
