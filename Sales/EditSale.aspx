<%@ Page Title="Edit Sale" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditSale.aspx.cs" Inherits="Stock_Forgeeee.Sales.EditSale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; margin-bottom: 12px;">
        <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" style="color: #6B7280; text-decoration: none;">Sales</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=SO-2026-0125") %>" style="color: #6B7280; text-decoration: none;">SO-2026-0125</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <span style="color: #111827; font-weight: 600;">Edit</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 20px;">
        <div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827; margin: 0;">
                    Edit Sale
                </h1>
                <span style="display: inline-block; padding: 2px 10px; background: #F3F4F6; border: 1px solid #E5E7EB; border-radius: 9999px; font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">
                    DRAFT
                </span>
            </div>
            <div class="sf-page-subtitle" style="font-size: 13.5px; color: #6B7280; margin-top: 4px;">
                Update the sale information before it is finalized.
            </div>
        </div>
    </div>

    <!-- Alert Feedback -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 12px 16px; border-radius: 6px; margin-bottom: 20px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
        <i class="bi bi-exclamation-triangle-fill"></i>
        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
    </asp:Panel>

    <!-- Top Metadata Card (4 Columns: Customer, Sale Date, Payment Status, Payment Method) -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 16px 20px; margin-bottom: 20px;">
        <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px;">
            <!-- Customer -->
            <div>
                <label style="display: block; font-size: 11px; font-weight: 600; color: #4B5563; margin-bottom: 6px;">Customer</label>
                <div style="position: relative; display: flex; align-items: center;">
                    <i class="bi bi-person" style="position: absolute; left: 10px; font-size: 15px; color: #6B7280; pointer-events: none;"></i>
                    <asp:DropDownList ID="ddlCustomer" runat="server" style="width: 100%; height: 38px; padding: 4px 28px 4px 32px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #111827; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; background-image: url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'14\' viewBox=\'0 0 24 24\' width=\'14\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>'); background-repeat: no-repeat; background-position: right 8px center;">
                        <asp:ListItem Value="Rajesh Patel" Selected="True">Rajesh Patel</asp:ListItem>
                        <asp:ListItem Value="Apex Construction Services">Apex Construction Services</asp:ListItem>
                        <asp:ListItem Value="Sharma Constructions">Sharma Constructions</asp:ListItem>
                        <asp:ListItem Value="Modern Electricals">Modern Electricals</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <!-- Sale Date -->
            <div>
                <label style="display: block; font-size: 11px; font-weight: 600; color: #4B5563; margin-bottom: 6px;">Sale Date</label>
                <div style="position: relative; display: flex; align-items: center;">
                    <i class="bi bi-calendar3" style="position: absolute; left: 10px; font-size: 13px; color: #6B7280; pointer-events: none;"></i>
                    <asp:TextBox ID="txtSalesDate" runat="server" Text="17 Aug 2026" style="width: 100%; height: 38px; padding: 4px 10px 4px 32px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #111827; box-sizing: border-box; outline: none; background: #FFFFFF;"></asp:TextBox>
                </div>
            </div>

            <!-- Payment Status -->
            <div>
                <label style="display: block; font-size: 11px; font-weight: 600; color: #4B5563; margin-bottom: 6px;">Payment Status</label>
                <div style="position: relative; display: flex; align-items: center;">
                    <i class="bi bi-check2-circle" style="position: absolute; left: 10px; font-size: 15px; color: #15803D; pointer-events: none;"></i>
                    <asp:DropDownList ID="ddlStatus" runat="server" style="width: 100%; height: 38px; padding: 4px 28px 4px 32px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #111827; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; background-image: url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'14\' viewBox=\'0 0 24 24\' width=\'14\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>'); background-repeat: no-repeat; background-position: right 8px center;">
                        <asp:ListItem Value="Paid" Selected="True">Paid</asp:ListItem>
                        <asp:ListItem Value="Pending">Pending</asp:ListItem>
                        <asp:ListItem Value="Partial">Partial</asp:ListItem>
                        <asp:ListItem Value="Cancelled">Cancelled</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <!-- Payment Method -->
            <div>
                <label style="display: block; font-size: 11px; font-weight: 600; color: #4B5563; margin-bottom: 6px;">Payment Method</label>
                <div style="position: relative; display: flex; align-items: center;">
                    <i class="bi bi-credit-card" style="position: absolute; left: 10px; font-size: 14px; color: #6B7280; pointer-events: none;"></i>
                    <asp:DropDownList ID="ddlPaymentMethod" runat="server" style="width: 100%; height: 38px; padding: 4px 28px 4px 32px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #111827; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; background-image: url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'14\' viewBox=\'0 0 24 24\' width=\'14\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>'); background-repeat: no-repeat; background-position: right 8px center;">
                        <asp:ListItem Value="UPI" Selected="True">UPI</asp:ListItem>
                        <asp:ListItem Value="Card">Credit/Debit Card</asp:ListItem>
                        <asp:ListItem Value="Bank Transfer">Net Banking / NEFT</asp:ListItem>
                        <asp:ListItem Value="Cash">Cash on Delivery</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
    </div>

    <!-- Main 2-Column Section (Line Items + Summary & Notes) -->
    <div style="display: grid; grid-template-columns: 2.4fr 1fr; gap: 20px; align-items: start; margin-bottom: 24px;">
        <!-- Left: Line Items Card -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; overflow: hidden; min-height: 540px; display: flex; flex-direction: column;">
            <!-- Header with + Add Product -->
            <div style="display: flex; justify-content: space-between; align-items: center; padding: 14px 20px; border-bottom: 1px solid #E5E7EB;">
                <div style="font-size: 14.5px; font-weight: 700; color: #111827;">Line Items</div>
                <button type="button" style="display: inline-flex; align-items: center; gap: 5px; padding: 5px 12px; background: #FFFFFF; border: 1px solid #A7F3D0; border-radius: 6px; color: #006C44; font-size: 12.5px; font-weight: 600; cursor: pointer;">
                    <i class="bi bi-plus" style="font-size: 15px;"></i> Add Product
                </button>
            </div>

            <!-- Table of Line Items -->
            <div style="overflow-x: auto;">
                <table style="width: 100%; border-collapse: collapse; text-align: left; font-size: 13px;">
                    <thead>
                        <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB; color: #6B7280; font-size: 11px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.3px;">
                            <th style="padding: 12px 18px; width: 34%;">PRODUCT</th>
                            <th style="padding: 12px 10px; width: 12%;">AVAILABLE</th>
                            <th style="padding: 12px 10px; width: 10%;">QTY</th>
                            <th style="padding: 12px 12px; width: 15%;">UNIT PRICE</th>
                            <th style="padding: 12px 12px; width: 14%;">DISCOUNT</th>
                            <th style="padding: 12px 12px; width: 12%;">TAX</th>
                            <th style="padding: 12px 18px; width: 15%;">TOTAL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 16px 18px;">
                                <div style="font-weight: 600; color: #111827; font-size: 13.5px;">Bosch 10mm Drill</div>
                                <div style="font-size: 11px; color: #6B7280; font-family: monospace; margin-top: 2px;">DRL-BOS-10MM</div>
                            </td>
                            <td style="padding: 16px 10px;">
                                <span style="display: inline-block; padding: 2px 8px; background: #F3F4F6; border-radius: 4px; font-size: 11.5px; font-weight: 600; color: #4B5563;">
                                    24
                                </span>
                            </td>
                            <td style="padding: 16px 10px;">
                                <asp:TextBox ID="txtQty" runat="server" Text="5" style="width: 44px; height: 32px; text-align: center; border: 1px solid #D1D5DB; border-radius: 4px; font-size: 13px; font-weight: 600; color: #111827; outline: none;"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvQty" runat="server" ControlToValidate="txtQty" ErrorMessage="Qty required" EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 10px; display: block;"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvQty" runat="server" ControlToValidate="txtQty" Operator="GreaterThan" ValueToCompare="0" Type="Integer" ErrorMessage="Must be > 0" EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 10px; display: block;"></asp:CompareValidator>
                            </td>
                            <td style="padding: 16px 12px; font-weight: 500; color: #111827;">
                                ₹ 1,499.00
                            </td>
                            <td style="padding: 16px 12px; font-weight: 600; color: #DC2626;">
                                - ₹ 100.00
                            </td>
                            <td style="padding: 16px 12px; font-weight: 500; color: #111827;">
                                ₹ 252.00
                            </td>
                            <td style="padding: 16px 18px; font-weight: 700; color: #111827;">
                                ₹ 7,647.00
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Add Another Line Item Link -->
            <div style="padding: 14px 20px; border-bottom: 1px dashed #E5E7EB; text-align: center;">
                <a href="javascript:void(0);" style="display: inline-flex; align-items: center; gap: 6px; font-size: 12.5px; font-weight: 500; color: #4B5563; text-decoration: none;">
                    <i class="bi bi-plus-circle" style="font-size: 13px; color: #6B7280;"></i> Add another line item
                </a>
            </div>

            <!-- Canvas Fill Space Matching Figma -->
            <div style="flex-grow: 1; background: #FFFFFF;"></div>
        </div>

        <!-- Right Column: Order Summary & Internal Notes -->
        <div style="display: flex; flex-direction: column; gap: 16px;">
            <!-- Order Summary Card -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 16px;">Order Summary</div>
                <div style="display: flex; justify-content: space-between; padding-bottom: 8px; font-size: 13px; color: #4B5563;">
                    <span>Subtotal</span>
                    <strong style="color: #111827; font-family: monospace;">₹ 7,495.00</strong>
                </div>
                <div style="display: flex; justify-content: space-between; padding-bottom: 8px; font-size: 13px; color: #DC2626;">
                    <span>Discount</span>
                    <strong style="font-family: monospace;">- ₹ 100.00</strong>
                </div>
                <div style="display: flex; justify-content: space-between; padding-bottom: 12px; font-size: 13px; color: #4B5563; border-bottom: 1px solid #E5E7EB;">
                    <span>Tax (CGST+SGST)</span>
                    <strong style="color: #111827; font-family: monospace;">₹ 252.00</strong>
                </div>
                <div style="display: flex; justify-content: space-between; align-items: center; padding-top: 14px;">
                    <span style="font-size: 14px; font-weight: 700; color: #111827;">Grand Total</span>
                    <span style="font-size: 16px; font-weight: 800; color: #006C44; font-family: monospace;">
                        <i class="bi bi-cash-stack" style="font-size: 15px; margin-right: 4px;"></i>₹ 7,647.00
                    </span>
                </div>
            </div>

            <!-- Internal Notes Card -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
                <div style="display: flex; align-items: center; gap: 8px; font-size: 13.5px; font-weight: 700; color: #111827; margin-bottom: 10px;">
                    <i class="bi bi-text-left" style="font-size: 15px; color: #4B5563;"></i>
                    <span>Internal Notes</span>
                </div>
                <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="3" placeholder="Add sale notes..." style="width: 100%; border: 1px solid #D1D5DB; border-radius: 6px; padding: 8px 12px; font-size: 13px; color: #374151; box-sizing: border-box; outline: none; resize: vertical; min-height: 80px;"></asp:TextBox>
            </div>
        </div>
    </div>

    <!-- Bottom Actions Row (Right Aligned matching Figma) -->
    <div style="display: flex; justify-content: flex-end; align-items: center; gap: 12px; padding: 16px 0;">
        <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=SO-2026-0125") %>" style="display: inline-flex; align-items: center; justify-content: center; padding: 8px 20px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">
            Cancel
        </a>
        <asp:Button ID="btnSaveChanges" runat="server" Text="💾 Save Changes" OnClick="btnSaveChanges_Click" style="display: inline-flex; align-items: center; gap: 6px; padding: 8px 22px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; font-size: 13px; font-weight: 600; color: #FFFFFF; cursor: pointer;" />
    </div>
</asp:Content>
