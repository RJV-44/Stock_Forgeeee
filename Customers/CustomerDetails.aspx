<%@ Page Title="Customer Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="Stock_Forgeeee.Customers.CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 1360px; margin: 0 auto;">
        <!-- Breadcrumb (Matching Figma) -->
        <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; color: #6B7280; margin-bottom: 12px;">
            <a href="<%= ResolveUrl("~/Customers/CustomerList.aspx") %>" style="color: #6B7280; text-decoration: none;" onmouseover="this.style.color='#111827'" onmouseout="this.style.color='#6B7280'">Customers</a>
            <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
            <span style="color: #111827; font-weight: 600;">Customer Details</span>
        </div>

        <!-- Page Header (Matching Figma) -->
        <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 16px;">
            <div>
                <div style="display: flex; align-items: center; gap: 12px;">
                    <h1 style="font-size: 26px; font-weight: 700; color: #111827; margin: 0; letter-spacing: -0.02em;">Rajesh Patel</h1>
                    <span style="display: inline-flex; align-items: center; gap: 5px; padding: 2px 10px; background: #EAF8EF; border: 1px solid #BBF7D0; border-radius: 9999px; font-size: 11.5px; font-weight: 600; color: #15803D;">
                        <span style="width: 5px; height: 5px; border-radius: 50%; background: #15803D;"></span>
                        Active
                    </span>
                </div>
                <div style="font-size: 13.5px; color: #6B7280; margin-top: 4px;">Customer information and sales activity</div>
            </div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <a href="<%= ResolveUrl("~/Customers/EditCustomer.aspx?id=101") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 16px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                    <i class="bi bi-pencil" style="font-size: 12px;"></i>
                    <span>Edit</span>
                </a>
                <a href="<%= ResolveUrl("~/Sales/NewSale.aspx?customerId=101") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 18px; background: #006C44; color: #FFFFFF; font-size: 13px; font-weight: 600; border-radius: 6px; text-decoration: none; transition: background 0.15s ease;" onmouseover="this.style.background='#0B5C3B'" onmouseout="this.style.background='#006C44'">
                    <i class="bi bi-plus-lg" style="font-size: 12px; font-weight: 700;"></i>
                    <span>New Sale</span>
                </a>
                <button type="button" style="width: 36px; height: 36px; display: inline-flex; align-items: center; justify-content: center; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; color: #374151; cursor: pointer; font-size: 16px;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                    <i class="bi bi-three-dots-vertical"></i>
                </button>
            </div>
        </div>

        <!-- Sub-details Strip (Matching Figma) -->
        <div style="display: flex; align-items: center; gap: 24px; font-size: 13px; color: #4B5563; padding-bottom: 20px; margin-bottom: 24px; border-bottom: 1px solid #E5E7EB; flex-wrap: wrap;">
            <div><strong style="color: #111827; font-weight: 600;">Customer:</strong> Rajesh Patel</div>
            <div><strong style="color: #111827; font-weight: 600;">Customer Type:</strong> Business</div>
            <div><strong style="color: #111827; font-weight: 600;">Phone:</strong> +91 98765 43210</div>
            <div><strong style="color: #111827; font-weight: 600;">Email:</strong> rajesh@example.in</div>
        </div>

        <!-- 2 Column Layout (Matching Figma) -->
        <div style="display: grid; grid-template-columns: 320px 1fr; gap: 24px; align-items: start;">
            
            <!-- Left Column: 3 Metric Cards + Information Card -->
            <div style="display: flex; flex-direction: column; gap: 16px;">
                
                <!-- Metric Card 1: Total Sales -->
                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 16px 20px; display: flex; justify-content: space-between; align-items: center;">
                    <div>
                        <div style="font-size: 12px; font-weight: 500; color: #6B7280;">Total Sales</div>
                        <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 4px; line-height: 1.2;">18</div>
                    </div>
                    <div style="width: 38px; height: 38px; border-radius: 8px; background: #EAF8EF; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                        <i class="bi bi-receipt" style="color: #15803D; font-size: 18px;"></i>
                    </div>
                </div>

                <!-- Metric Card 2: Total Spent -->
                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 16px 20px; display: flex; justify-content: space-between; align-items: center;">
                    <div>
                        <div style="font-size: 12px; font-weight: 500; color: #6B7280;">Total Spent</div>
                        <div style="font-size: 20px; font-weight: 700; color: #111827; margin-top: 4px; line-height: 1.2; font-variant-numeric: tabular-nums;">₹1,42,850.00</div>
                    </div>
                    <div style="width: 38px; height: 38px; border-radius: 8px; background: #EAF8EF; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                        <i class="bi bi-wallet2" style="color: #15803D; font-size: 18px;"></i>
                    </div>
                </div>

                <!-- Metric Card 3: Outstanding -->
                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 16px 20px; display: flex; justify-content: space-between; align-items: center;">
                    <div>
                        <div style="font-size: 12px; font-weight: 500; color: #6B7280;">Outstanding</div>
                        <div style="font-size: 20px; font-weight: 700; color: #DC2626; margin-top: 4px; line-height: 1.2; font-variant-numeric: tabular-nums;">₹12,500.00</div>
                    </div>
                    <div style="width: 38px; height: 38px; border-radius: 8px; background: #FEE2E2; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                        <i class="bi bi-credit-card-2-front" style="color: #DC2626; font-size: 18px;"></i>
                    </div>
                </div>

                <!-- Information Card (Matching Figma) -->
                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
                    <div style="font-size: 14.5px; font-weight: 700; color: #111827; margin-bottom: 16px;">
                        Information
                    </div>

                    <!-- Contact Details -->
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 12px;">
                        CONTACT DETAILS
                    </div>
                    <div style="display: flex; flex-direction: column; gap: 10px; font-size: 13px; color: #374151; margin-bottom: 16px;">
                        <div style="display: flex; align-items: center; gap: 10px;">
                            <i class="bi bi-telephone" style="color: #6B7280; font-size: 14px;"></i>
                            <span>+91 98765 43210</span>
                        </div>
                        <div style="display: flex; align-items: center; gap: 10px;">
                            <i class="bi bi-envelope" style="color: #6B7280; font-size: 14px;"></i>
                            <span>rajesh@example.in</span>
                        </div>
                    </div>

                    <div style="border-top: 1px solid #E5E7EB; margin: 16px 0;"></div>

                    <!-- Business Info -->
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 12px;">
                        BUSINESS INFO
                    </div>
                    <div style="display: flex; flex-direction: column; gap: 10px; font-size: 13px; color: #374151; margin-bottom: 16px;">
                        <div style="display: flex; align-items: center; gap: 10px;">
                            <i class="bi bi-building" style="color: #6B7280; font-size: 14px;"></i>
                            <span>Rajesh Hardware Works</span>
                        </div>
                        <div style="display: flex; align-items: center; gap: 10px;">
                            <i class="bi bi-card-text" style="color: #6B7280; font-size: 14px;"></i>
                            <span>GSTIN: 24ABCDE1234F1Z5</span>
                        </div>
                        <div style="display: flex; align-items: center; gap: 10px;">
                            <i class="bi bi-clock" style="color: #6B7280; font-size: 14px;"></i>
                            <span>Terms: 30 Days</span>
                        </div>
                    </div>

                    <div style="border-top: 1px solid #E5E7EB; margin: 16px 0;"></div>

                    <!-- Address -->
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 12px;">
                        ADDRESS
                    </div>
                    <div style="display: flex; align-items: flex-start; gap: 10px; font-size: 13px; color: #374151; line-height: 1.5;">
                        <i class="bi bi-geo-alt" style="color: #6B7280; font-size: 15px; margin-top: 2px;"></i>
                        <span>123 Industrial Estate, Vatva,<br />Ahmedabad, Gujarat - 382445</span>
                    </div>
                </div>
            </div>

            <!-- Right Column: Recent Sales Card (Matching Figma) -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
                <div style="padding: 16px 20px; border-bottom: 1px solid #E5E7EB; display: flex; justify-content: space-between; align-items: center;">
                    <div style="font-size: 15px; font-weight: 700; color: #111827;">Recent Sales</div>
                    <button type="button" style="background: none; border: none; color: #6B7280; font-size: 17px; cursor: pointer;" title="Filter Sales">
                        <i class="bi bi-filter"></i>
                    </button>
                </div>

                <div style="overflow-x: auto;">
                    <table style="width: 100%; border-collapse: collapse; text-align: left; font-size: 13px;">
                        <thead>
                            <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB; font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.4px;">
                                <th style="padding: 12px 20px;">SALE NUMBER</th>
                                <th style="padding: 12px 16px;">DATE</th>
                                <th style="padding: 12px 16px;">ITEMS</th>
                                <th style="padding: 12px 16px;">TOTAL</th>
                                <th style="padding: 12px 16px; text-align: center;">PAYMENT</th>
                                <th style="padding: 12px 20px; text-align: right;">STATUS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Row 1: SO-2026-0125 -->
                            <tr style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                                <td style="padding: 14px 20px;">
                                    <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=SO-2026-0125") %>" style="color: #15803D; font-weight: 600; text-decoration: none;" onmouseover="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">SO-2026-0125</a>
                                </td>
                                <td style="padding: 14px 16px; color: #4B5563;">17 Aug 2026</td>
                                <td style="padding: 14px 16px; color: #4B5563;">5 items</td>
                                <td style="padding: 14px 16px; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹7,647.00</td>
                                <td style="padding: 14px 16px; text-align: center;">
                                    <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D;">Paid</span>
                                </td>
                                <td style="padding: 14px 20px; text-align: right; color: #4B5563;">Completed</td>
                            </tr>

                            <!-- Row 2: SO-2026-0118 -->
                            <tr style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                                <td style="padding: 14px 20px;">
                                    <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=SO-2026-0118") %>" style="color: #15803D; font-weight: 600; text-decoration: none;" onmouseover="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">SO-2026-0118</a>
                                </td>
                                <td style="padding: 14px 16px; color: #4B5563;">12 Aug 2026</td>
                                <td style="padding: 14px 16px; color: #4B5563;">3 items</td>
                                <td style="padding: 14px 16px; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹4,850.00</td>
                                <td style="padding: 14px 16px; text-align: center;">
                                    <span style="display: inline-block; padding: 2px 8px; background: #FEF3C7; border-radius: 4px; font-size: 11px; font-weight: 600; color: #B45309;">Partial</span>
                                </td>
                                <td style="padding: 14px 20px; text-align: right; color: #4B5563;">Completed</td>
                            </tr>

                            <!-- Row 3: SO-2026-0106 -->
                            <tr style="transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                                <td style="padding: 14px 20px;">
                                    <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=SO-2026-0106") %>" style="color: #15803D; font-weight: 600; text-decoration: none;" onmouseover="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">SO-2026-0106</a>
                                </td>
                                <td style="padding: 14px 16px; color: #4B5563;">04 Aug 2026</td>
                                <td style="padding: 14px 16px; color: #4B5563;">7 items</td>
                                <td style="padding: 14px 16px; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹12,450.00</td>
                                <td style="padding: 14px 16px; text-align: center;">
                                    <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D;">Paid</span>
                                </td>
                                <td style="padding: 14px 20px; text-align: right; color: #4B5563;">Completed</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Footer Link (Matching Figma) -->
                <div style="border-top: 1px solid #E5E7EB; padding: 14px; text-align: center; background: #FFFFFF;">
                    <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" style="display: inline-flex; align-items: center; gap: 6px; color: #15803D; font-size: 13px; font-weight: 600; text-decoration: none;" onmouseover="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">
                        <span>View All Sales</span>
                        <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
