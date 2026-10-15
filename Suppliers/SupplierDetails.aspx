<%@ Page Title="Supplier Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SupplierDetails.aspx.cs" Inherits="Stock_Forgeeee.Suppliers.SupplierDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div style="font-size: 12px; color: #6B7280; margin-bottom: 12px; display: flex; align-items: center; gap: 6px;">
        <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" style="color: #6B7280; text-decoration: none;">Suppliers</a>
        <span style="color: #9CA3AF;">&rsaquo;</span>
        <span style="color: #111827; font-weight: 500;">Supplier Details</span>
    </div>

    <!-- Header & Action Buttons -->
    <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <h1 style="font-size: 22px; font-weight: 700; color: #111827; margin: 0 0 4px 0;">ABC Hardware Suppliers</h1>
            <p style="font-size: 13px; color: #6B7280; margin: 0;">Supplier information and purchasing activity.</p>
        </div>
        <div style="display: flex; align-items: center; gap: 10px;">
            <button type="button" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 14px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; cursor: pointer;">
                <i class="bi bi-toggles"></i>
                <span>Deactivate</span>
            </button>
            <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1001") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 16px; background: #3DA86F; border: 1px solid #3DA86F; border-radius: 6px; font-size: 13px; font-weight: 600; color: #FFFFFF; text-decoration: none; transition: background 0.15s ease;">
                <i class="bi bi-pencil"></i>
                <span>Edit Supplier</span>
            </a>
        </div>
    </div>

    <!-- 2 Column Layout Grid Matching Figma Screenshot -->
    <div style="display: grid; grid-template-columns: 310px 1fr; gap: 24px; align-items: start; max-width: 1200px;">
        
        <!-- ================= Left Column: Profile Cards ================= -->
        <div style="display: flex; flex-direction: column; gap: 16px;">
            
            <!-- Card 1: Primary Contact Card -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
                <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 12px;">
                    <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border: 1px solid #BBF7D0; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D;">Active</span>
                    <strong style="font-size: 14px; color: #111827;">ABC Hardware Suppliers</strong>
                </div>

                <div style="display: flex; flex-direction: column; gap: 10px; font-size: 12px; color: #4B5563;">
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <i class="bi bi-person" style="color: #6B7280; font-size: 14px;"></i>
                        <span>Rajesh Patel</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <i class="bi bi-telephone" style="color: #6B7280; font-size: 13px;"></i>
                        <span>+91 98765 43210</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <i class="bi bi-envelope" style="color: #6B7280; font-size: 13px;"></i>
                        <span>contact@abchardware.in</span>
                    </div>
                </div>
            </div>

            <!-- Card 2: Business Information -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
                <div style="font-size: 13px; font-weight: 700; color: #111827; margin-bottom: 14px;">
                    Business Information
                </div>

                <div style="display: flex; flex-direction: column; gap: 12px; font-size: 12.5px;">
                    <div style="display: flex; justify-content: space-between; align-items: center;">
                        <span style="color: #6B7280;">Type</span>
                        <strong style="color: #111827; font-weight: 600;">Distributor</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; align-items: center;">
                        <span style="color: #6B7280;">GSTIN</span>
                        <strong style="color: #111827; font-weight: 600; letter-spacing: 0.3px;">24ABCDE1234F1Z5</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; align-items: center;">
                        <span style="color: #6B7280;">Payment Terms</span>
                        <strong style="color: #111827; font-weight: 600;">30 Days</strong>
                    </div>
                </div>
            </div>

            <!-- Card 3: Registered Address with Subtle Graphic Curve -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px; position: relative; overflow: hidden; min-height: 110px;">
                <!-- Decorative background arc -->
                <div style="position: absolute; right: -20px; bottom: -20px; width: 100px; height: 100px; border-radius: 50%; background: #F1F5F9; z-index: 1;"></div>
                
                <div style="position: relative; z-index: 2;">
                    <div style="font-size: 13px; font-weight: 700; color: #111827; margin-bottom: 12px;">
                        Registered Address
                    </div>
                    <div style="display: flex; align-items: flex-start; gap: 8px; font-size: 12.5px; color: #374151; line-height: 1.5;">
                        <i class="bi bi-geo-alt" style="color: #15803D; font-size: 15px; margin-top: 2px;"></i>
                        <span>123 Industrial Estate,<br />Vatva, Ahmedabad,<br />Gujarat - 382445</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- ================= Right Column: Stats & Recent POs ================= -->
        <div style="display: flex; flex-direction: column; gap: 20px;">
            
            <!-- Top 3 Stat Cards in a Row -->
            <div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 16px;">
                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
                    <div style="font-size: 11.5px; color: #6B7280; font-weight: 500;">Products Supplied</div>
                    <div style="font-size: 26px; font-weight: 800; color: #111827; margin-top: 6px;">24</div>
                </div>

                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
                    <div style="font-size: 11.5px; color: #6B7280; font-weight: 500;">Purchase Orders</div>
                    <div style="font-size: 26px; font-weight: 800; color: #111827; margin-top: 6px;">18</div>
                </div>

                <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
                    <div style="font-size: 11.5px; color: #6B7280; font-weight: 500;">Total Purchase Value</div>
                    <div style="font-size: 24px; font-weight: 800; color: #15803D; margin-top: 6px;">₹8,45,750.00</div>
                </div>
            </div>

            <!-- Recent Purchase Orders Table Card -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; min-height: 380px;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                    <h3 style="font-size: 14px; font-weight: 700; color: #111827; margin: 0;">Recent Purchase Orders</h3>
                    <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" style="font-size: 12px; font-weight: 600; color: #15803D; text-decoration: none; display: inline-flex; align-items: center; gap: 4px;">
                        <span>View All</span>
                        <i class="bi bi-arrow-right"></i>
                    </a>
                </div>

                <!-- Table -->
                <div style="overflow-x: auto;">
                    <table style="width: 100%; border-collapse: collapse; font-size: 12.5px;">
                        <thead>
                            <tr style="border-bottom: 1px solid #E5E7EB; color: #6B7280; text-align: left;">
                                <th style="padding: 10px 12px; font-weight: 500; font-size: 11.5px;">PO Number</th>
                                <th style="padding: 10px 12px; font-weight: 500; font-size: 11.5px;">Date</th>
                                <th style="padding: 10px 12px; font-weight: 500; font-size: 11.5px;">Items</th>
                                <th style="padding: 10px 12px; font-weight: 500; font-size: 11.5px;">Total (INR)</th>
                                <th style="padding: 10px 12px; font-weight: 500; font-size: 11.5px;">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Row 1 -->
                            <tr style="border-bottom: 1px solid #F3F4F6;">
                                <td style="padding: 12px;">
                                    <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=1048") %>" style="color: #15803D; font-weight: 600; text-decoration: none;">PO-2026-0048</a>
                                </td>
                                <td style="padding: 12px; color: #374151;">12 Oct 2026</td>
                                <td style="padding: 12px; color: #374151;">45</td>
                                <td style="padding: 12px; color: #111827; font-weight: 600;">₹1,24,500.00</td>
                                <td style="padding: 12px;">
                                    <span style="display: inline-block; padding: 2px 8px; background: #DBEAFE; border-radius: 4px; font-size: 11px; font-weight: 600; color: #1D4ED8;">Dispatched</span>
                                </td>
                            </tr>
                            <!-- Row 2 -->
                            <tr style="border-bottom: 1px solid #F3F4F6;">
                                <td style="padding: 12px;">
                                    <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=1041") %>" style="color: #15803D; font-weight: 600; text-decoration: none;">PO-2026-0041</a>
                                </td>
                                <td style="padding: 12px; color: #374151;">28 Sep 2026</td>
                                <td style="padding: 12px; color: #374151;">120</td>
                                <td style="padding: 12px; color: #111827; font-weight: 600;">₹3,45,000.00</td>
                                <td style="padding: 12px;">
                                    <span style="display: inline-block; padding: 2px 8px; background: #DCFCE7; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D;">Delivered</span>
                                </td>
                            </tr>
                            <!-- Row 3 -->
                            <tr style="border-bottom: 1px solid #F3F4F6;">
                                <td style="padding: 12px;">
                                    <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=1036") %>" style="color: #15803D; font-weight: 600; text-decoration: none;">PO-2026-0036</a>
                                </td>
                                <td style="padding: 12px; color: #374151;">15 Sep 2026</td>
                                <td style="padding: 12px; color: #374151;">18</td>
                                <td style="padding: 12px; color: #111827; font-weight: 600;">₹85,250.00</td>
                                <td style="padding: 12px;">
                                    <span style="display: inline-block; padding: 2px 8px; background: #DCFCE7; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D;">Delivered</span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
