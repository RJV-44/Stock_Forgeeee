<%@ Page Title="Sale Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SaleDetails.aspx.cs" Inherits="Stock_Forgeeee.Sales.SaleDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 1360px; margin: 0 auto;">
        <!-- Breadcrumb (Matching Figma Screenshot 3) -->
        <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; color: #6B7280; margin-bottom: 12px;">
            <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" style="color: #6B7280; text-decoration: none;" onmouseover="this.style.color='#111827'" onmouseout="this.style.color='#6B7280'">Sales</a>
            <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
            <span style="color: #111827; font-weight: 500;">SO-2026-0125</span>
        </div>

        <!-- Page Header (Matching Figma Screenshot 3) -->
        <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 20px;">
            <div>
                <div style="display: flex; align-items: center; gap: 10px;">
                    <h1 style="font-size: 24px; font-weight: 700; color: #111827; margin: 0; letter-spacing: -0.02em;">Sale #SO-2026-0125</h1>
                    <span style="display: inline-flex; align-items: center; gap: 4px; padding: 2px 8px; background: #EAF8EF; border: 1px solid #BBF7D0; border-radius: 9999px; font-size: 11px; font-weight: 600; color: #15803D;">
                        <i class="bi bi-check" style="font-size: 13px;"></i> Completed
                    </span>
                </div>
                <div style="font-size: 13px; color: #6B7280; margin-top: 4px;">Customer sale and transaction details</div>
            </div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <a href="<%= ResolveUrl("~/Sales/EditSale.aspx?id=SO-2026-0125") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 14px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                    <i class="bi bi-pencil" style="font-size: 12px; color: #4B5563;"></i>
                    <span>Edit</span>
                </a>
                <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0125") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 16px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                    <i class="bi bi-printer" style="font-size: 13px; color: #4B5563;"></i>
                    <span>Print</span>
                </a>
                <button type="button" style="width: 36px; height: 36px; display: inline-flex; align-items: center; justify-content: center; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; color: #374151; cursor: pointer; font-size: 16px;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                    <i class="bi bi-three-dots-vertical"></i>
                </button>
            </div>
        </div>

        <!-- Metadata Strip: 5 Columns in Card (Matching Figma Screenshot 3) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 24px; margin-bottom: 24px;">
            <div style="display: grid; grid-template-columns: repeat(5, 1fr); gap: 20px;">
                <div style="border-right: 1px solid #F3F4F6; padding-right: 16px;">
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">Customer</div>
                    <div style="font-size: 14.5px; font-weight: 700; color: #111827;">Rajesh Patel</div>
                </div>
                <div style="border-right: 1px solid #F3F4F6; padding-right: 16px;">
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">Sale Date</div>
                    <div style="font-size: 14.5px; font-weight: 600; color: #111827;">17 Aug 2026</div>
                </div>
                <div style="border-right: 1px solid #F3F4F6; padding-right: 16px;">
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">Payment</div>
                    <div style="font-size: 14.5px; font-weight: 700; color: #15803D;">Paid</div>
                </div>
                <div style="border-right: 1px solid #F3F4F6; padding-right: 16px;">
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">Method</div>
                    <div style="font-size: 14.5px; font-weight: 600; color: #111827;">UPI</div>
                </div>
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px; letter-spacing: 0.3px;">Created By</div>
                    <div style="font-size: 14.5px; font-weight: 600; color: #111827;">Admin</div>
                </div>
            </div>
        </div>

        <!-- 2 Column Layout (Matching Figma Screenshot 3) -->
        <div style="display: grid; grid-template-columns: 1fr 380px; gap: 24px; align-items: start;">
            
            <!-- Left Column: Sale Items Card -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; overflow: hidden;">
                <div style="padding: 16px 20px; border-bottom: 1px solid #E5E7EB; display: flex; justify-content: space-between; align-items: center;">
                    <div style="font-size: 15px; font-weight: 700; color: #111827;">Sale Items</div>
                    <span style="display: inline-block; padding: 2px 10px; background: #F3F4F6; border-radius: 4px; font-size: 12px; font-weight: 500; color: #4B5563;">1 Item</span>
                </div>

                <div style="overflow-x: auto;">
                    <table style="width: 100%; border-collapse: collapse; font-size: 13px; text-align: left;">
                        <thead>
                            <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB; font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.3px;">
                                <th style="padding: 12px 20px;">Product</th>
                                <th style="padding: 12px 14px; text-align: center;">Qty</th>
                                <th style="padding: 12px 14px; text-align: right;">Unit Price</th>
                                <th style="padding: 12px 14px; text-align: right;">Discount</th>
                                <th style="padding: 12px 14px; text-align: right;">Tax</th>
                                <th style="padding: 12px 20px; text-align: right;">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style="border-bottom: 1px solid #F3F4F6;">
                                <td style="padding: 16px 20px;">
                                    <div style="display: flex; align-items: center; gap: 12px;">
                                        <div style="width: 38px; height: 38px; border-radius: 6px; background: #F3F4F6; border: 1px solid #E5E7EB; display: flex; align-items: center; justify-content: center; color: #4B5563; font-size: 17px; flex-shrink: 0;">
                                            <i class="bi bi-tools"></i>
                                        </div>
                                        <div>
                                            <div style="font-weight: 600; color: #111827;">Bosch 10mm Drill</div>
                                            <div style="font-size: 11px; color: #6B7280; margin-top: 1px;">DRL-BOS-10MM</div>
                                        </div>
                                    </div>
                                </td>
                                <td style="padding: 16px 14px; text-align: center; font-weight: 600; color: #111827;">5</td>
                                <td style="padding: 16px 14px; text-align: right; color: #374151; font-variant-numeric: tabular-nums;">₹1,499.00</td>
                                <td style="padding: 16px 14px; text-align: right; color: #DC2626; font-weight: 600; font-variant-numeric: tabular-nums;">-₹100.00</td>
                                <td style="padding: 16px 14px; text-align: right; color: #4B5563; font-variant-numeric: tabular-nums;">₹252.00</td>
                                <td style="padding: 16px 20px; text-align: right; font-weight: 700; color: #111827; font-variant-numeric: tabular-nums;">₹7,647.00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Right Column: Customer Info, Inventory Status, Notes & Breakdown (Matching Figma) -->
            <div style="display: flex; flex-direction: column; gap: 16px;">
                
                <!-- Customer Information Card -->
                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 14px;">
                        <span style="font-size: 14px; font-weight: 700; color: #111827;">Customer Information</span>
                        <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=101") %>" style="color: #006C44; font-size: 12px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 3px;" onmouseover="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">
                            <span>View Customer</span>
                            <i class="bi bi-box-arrow-up-right" style="font-size: 11px;"></i>
                        </a>
                    </div>
                    <div style="display: flex; align-items: center; gap: 12px;">
                        <div style="width: 40px; height: 40px; border-radius: 50%; background: #F3F4F6; color: #4B5563; font-weight: 700; font-size: 13px; display: flex; align-items: center; justify-content: center; flex-shrink: 0; border: 1px solid #E5E7EB;">
                            RP
                        </div>
                        <div>
                            <div style="font-weight: 600; color: #111827; font-size: 14px;">Rajesh Patel</div>
                            <div style="font-size: 12px; color: #6B7280; display: flex; align-items: center; gap: 6px; margin-top: 2px;">
                                <i class="bi bi-telephone" style="font-size: 11px;"></i> +91 98765 43210
                            </div>
                            <div style="font-size: 12px; color: #6B7280; display: flex; align-items: center; gap: 6px; margin-top: 2px;">
                                <i class="bi bi-envelope" style="font-size: 11px;"></i> rajesh@example.in
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Inventory Status Card -->
                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 16px 20px;">
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.4px; margin-bottom: 10px;">
                        INVENTORY STATUS
                    </div>
                    <div style="background: #F0FDF4; border: 1px solid #DCFCE7; border-radius: 6px; padding: 10px 14px; display: flex; align-items: center; gap: 10px;">
                        <i class="bi bi-box-arrow-down" style="font-size: 18px; color: #15803D;"></i>
                        <div>
                            <div style="font-size: 13px; font-weight: 600; color: #15803D;">Inventory Updated: Yes</div>
                            <div style="font-size: 11.5px; color: #4B5563; margin-top: 1px;">5 pcs removed from available stock</div>
                        </div>
                    </div>
                </div>

                <!-- Notes Card -->
                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 16px 20px;">
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.4px; margin-bottom: 8px;">
                        NOTES
                    </div>
                    <div style="background: #F9FAFB; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 12px; font-size: 12.5px; color: #4B5563; line-height: 1.5; font-style: italic;">
                        &ldquo;Customer requested expedited billing. Verified UPI payment reference.&rdquo;
                    </div>
                </div>

                <!-- Financial Totals Breakdown -->
                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
                    <div style="display: flex; flex-direction: column; gap: 10px; font-size: 13px;">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <span style="color: #6B7280;">Subtotal</span>
                            <span style="font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹7,495.00</span>
                        </div>
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <span style="color: #DC2626; font-weight: 600;">Discount</span>
                            <span style="color: #DC2626; font-weight: 600; font-variant-numeric: tabular-nums;">-₹100.00</span>
                        </div>
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <span style="color: #6B7280;">Tax (CGST+SGST)</span>
                            <span style="font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹252.00</span>
                        </div>
                        
                        <div style="border-top: 1px solid #E5E7EB; margin: 4px 0;"></div>
                        
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <span style="font-size: 14px; font-weight: 700; color: #111827;">Grand Total</span>
                            <span style="font-size: 16px; font-weight: 700; color: #15803D; font-variant-numeric: tabular-nums;">₹7,647.00</span>
                        </div>
                    </div>

                    <!-- Split Paid & Balance Box (Matching Figma) -->
                    <div style="margin-top: 16px; background: #F9FAFB; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 16px; display: grid; grid-template-columns: 1fr 1fr; gap: 12px;">
                        <div>
                            <div style="font-size: 11px; color: #6B7280; font-weight: 500;">Amount Paid</div>
                            <div style="font-size: 14px; font-weight: 700; color: #111827; margin-top: 2px;">₹7,647.00</div>
                        </div>
                        <div style="text-align: right;">
                            <div style="font-size: 11px; color: #6B7280; font-weight: 500;">Balance</div>
                            <div style="font-size: 14px; font-weight: 700; color: #15803D; margin-top: 2px;">₹0.00</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
