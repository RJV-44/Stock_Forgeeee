<%@ Page Title="Notifications" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="Stock_Forgeeee.Notifications.Notifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb">
        <span>StockForge</span>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Notifications</span>
    </div>

    <!-- Page Header (Matching StockForge Notifications.png) -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title">Notifications</h1>
            <div class="sf-page-subtitle">Stay updated with important activity and actions in StockForge</div>
        </div>
        <div class="sf-header-actions">
            <span style="font-size: 13px; color: #6B7280; font-weight: 500;">12 Notifications, <span style="color: #111827; font-weight: 600;">4 Unread</span></span>
            <button type="button" class="btn-outline-action">
                <i class="bi bi-check2-all"></i> Mark All as Read
            </button>
        </div>
    </div>

    <!-- Filter Bar -->
    <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 16px;">
        <div style="display: flex; align-items: center; gap: 16px;">
            <div style="display: inline-flex; border: 1px solid #D1D5DB; border-radius: 6px; overflow: hidden; background: #ffffff;">
                <button type="button" style="border: none; padding: 6px 14px; font-size: 13px; font-weight: 600; background: #F3F4F6; color: #111827; cursor: pointer;">All</button>
                <button type="button" style="border: none; border-left: 1px solid #E5E7EB; padding: 6px 14px; font-size: 13px; font-weight: 500; background: #ffffff; color: #4B5563; cursor: pointer;">Unread</button>
                <button type="button" style="border: none; border-left: 1px solid #E5E7EB; padding: 6px 14px; font-size: 13px; font-weight: 500; background: #ffffff; color: #4B5563; cursor: pointer;">Read</button>
            </div>

            <div style="display: flex; align-items: center; gap: 8px;">
                <span style="font-size: 12.5px; font-weight: 600; color: #6B7280; text-transform: uppercase;">Type:</span>
                <select class="sf-select" style="height: 34px; padding: 4px 24px 4px 10px; font-size: 12.5px;">
                    <option selected>All Types</option>
                    <option>Low Stock</option>
                    <option>Purchase</option>
                    <option>Sales</option>
                    <option>System</option>
                </select>
            </div>
        </div>

        <button type="button" class="sf-text-btn" style="color: #6B7280;">Clear Filters</button>
    </div>

    <!-- Notifications List Card (Matching StockForge Notifications.png) -->
    <div class="sf-table-card">
        <!-- Notification Item 1: Low Stock Alert -->
        <div style="padding: 18px 24px; border-bottom: 1px solid #E5E7EB; border-left: 4px solid #DC2626; display: flex; align-items: flex-start; gap: 16px;">
            <div style="width: 40px; height: 40px; border-radius: 50%; background: #FEE2E2; color: #DC2626; display: flex; align-items: center; justify-content: center; font-size: 18px; flex-shrink: 0;">
                <i class="bi bi-exclamation-triangle"></i>
            </div>
            <div style="flex: 1;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 4px;">
                    <div style="font-size: 14.5px; font-weight: 700; color: #111827;">Low Stock Alert</div>
                    <div style="font-size: 12px; font-weight: 600; color: #DC2626;">10 minutes ago</div>
                </div>
                <div style="font-size: 13.5px; color: #4B5563; margin-bottom: 8px;">
                    Bosch 10mm Drill has reached reorder level. Current stock: 8 pcs.
                </div>
                <div>
                    <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 4px;">
                        View Product &rarr;
                    </a>
                </div>
            </div>
        </div>

        <!-- Notification Item 2: Product Out of Stock -->
        <div style="padding: 18px 24px; border-bottom: 1px solid #E5E7EB; border-left: 4px solid #DC2626; display: flex; align-items: flex-start; gap: 16px;">
            <div style="width: 40px; height: 40px; border-radius: 50%; background: #FEE2E2; color: #DC2626; display: flex; align-items: center; justify-content: center; font-size: 18px; flex-shrink: 0;">
                <i class="bi bi-exclamation-circle-fill"></i>
            </div>
            <div style="flex: 1;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 4px;">
                    <div style="font-size: 14.5px; font-weight: 700; color: #111827;">Product Out of Stock</div>
                    <div style="font-size: 12px; font-weight: 600; color: #DC2626;">35 minutes ago</div>
                </div>
                <div style="font-size: 13.5px; color: #4B5563; margin-bottom: 8px;">
                    Makita Angle Grinder is currently out of stock.
                </div>
                <div>
                    <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 4px;">
                        View Product &rarr;
                    </a>
                </div>
            </div>
        </div>

        <!-- Notification Item 3: Purchase Received -->
        <div style="padding: 18px 24px; border-bottom: 1px solid #E5E7EB; border-left: 4px solid #16A34A; display: flex; align-items: flex-start; gap: 16px;">
            <div style="width: 40px; height: 40px; border-radius: 50%; background: #EAF8EF; color: #15803D; display: flex; align-items: center; justify-content: center; font-size: 18px; flex-shrink: 0;">
                <i class="bi bi-box-arrow-in-down"></i>
            </div>
            <div style="flex: 1;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 4px;">
                    <div style="font-size: 14.5px; font-weight: 700; color: #111827;">Purchase Received</div>
                    <div style="font-size: 12px; font-weight: 600; color: #15803D;">1 hour ago</div>
                </div>
                <div style="font-size: 13.5px; color: #4B5563; margin-bottom: 8px;">
                    Purchase Order PO-2026-0048 has been fully received.
                </div>
                <div>
                    <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 4px;">
                        View Purchase &rarr;
                    </a>
                </div>
            </div>
        </div>

        <!-- Notification Item 4: Sale Completed -->
        <div style="padding: 18px 24px; border-bottom: 1px solid #E5E7EB; display: flex; align-items: flex-start; gap: 16px;">
            <div style="width: 40px; height: 40px; border-radius: 50%; background: #F3F4F6; color: #4B5563; display: flex; align-items: center; justify-content: center; font-size: 18px; flex-shrink: 0;">
                <i class="bi bi-check-circle"></i>
            </div>
            <div style="flex: 1;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 4px;">
                    <div style="font-size: 14.5px; font-weight: 700; color: #111827;">Sale Completed</div>
                    <div style="font-size: 12px; color: #6B7280;">2 hours ago</div>
                </div>
                <div style="font-size: 13.5px; color: #4B5563; margin-bottom: 8px;">
                    Sale SO-2026-0125 for Rajesh Patel was completed successfully.
                </div>
                <div>
                    <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=SO-2026-0125") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 4px;">
                        View Sale &rarr;
                    </a>
                </div>
            </div>
        </div>

        <!-- Notification Item 5: Purchase Order Pending -->
        <div style="padding: 18px 24px; border-bottom: 1px solid #E5E7EB; display: flex; align-items: flex-start; gap: 16px;">
            <div style="width: 40px; height: 40px; border-radius: 50%; background: #F3F4F6; color: #4B5563; display: flex; align-items: center; justify-content: center; font-size: 18px; flex-shrink: 0;">
                <i class="bi bi-clipboard"></i>
            </div>
            <div style="flex: 1;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 4px;">
                    <div style="font-size: 14.5px; font-weight: 700; color: #111827;">Purchase Order Pending</div>
                    <div style="font-size: 12px; color: #6B7280;">Today 08:45 AM</div>
                </div>
                <div style="font-size: 13.5px; color: #4B5563; margin-bottom: 8px;">
                    PO-2026-0049 is waiting for approval.
                </div>
                <div>
                    <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 4px;">
                        View Purchase &rarr;
                    </a>
                </div>
            </div>
        </div>

        <!-- Notification Item 6: Stock Adjustment Recorded -->
        <div style="padding: 18px 24px; border-bottom: 1px solid #E5E7EB; display: flex; align-items: flex-start; gap: 16px;">
            <div style="width: 40px; height: 40px; border-radius: 50%; background: #F3F4F6; color: #4B5563; display: flex; align-items: center; justify-content: center; font-size: 18px; flex-shrink: 0;">
                <i class="bi bi-sliders"></i>
            </div>
            <div style="flex: 1;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 4px;">
                    <div style="font-size: 14.5px; font-weight: 700; color: #111827;">Stock Adjustment Recorded</div>
                    <div style="font-size: 12px; color: #6B7280;">Today 08:20 AM</div>
                </div>
                <div style="font-size: 13.5px; color: #4B5563; margin-bottom: 8px;">
                    Inventory quantity for Taparia Spanner Set was adjusted by <strong style="color: #15803D;">+12 pcs</strong>.
                </div>
                <div>
                    <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 4px;">
                        View Product &rarr;
                    </a>
                </div>
            </div>
        </div>

        <!-- Notification Item 7: New User Added -->
        <div style="padding: 18px 24px; display: flex; align-items: flex-start; gap: 16px;">
            <div style="width: 40px; height: 40px; border-radius: 50%; background: #F3F4F6; color: #4B5563; display: flex; align-items: center; justify-content: center; font-size: 18px; flex-shrink: 0;">
                <i class="bi bi-person-plus"></i>
            </div>
            <div style="flex: 1;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 4px;">
                    <div style="font-size: 14.5px; font-weight: 700; color: #111827;">New User Added</div>
                    <div style="font-size: 12px; color: #6B7280;">Yesterday</div>
                </div>
                <div style="font-size: 13.5px; color: #4B5563; margin-bottom: 8px;">
                    New staff member Rajvi Lunagariya was registered into the system.
                </div>
                <div>
                    <a href="<%= ResolveUrl("~/Users/UserManagement.aspx") %>" style="color: #006C44; font-size: 13px; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 4px;">
                        View User &rarr;
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
