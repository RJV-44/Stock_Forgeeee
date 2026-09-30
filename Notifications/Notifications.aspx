<%@ Page Title="Notifications" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="Stock_Forgeeee.Notifications.Notifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Notifications</h1>
            <div class="page-subtitle">Track alerts, updates, and task reminders across your hardware operations.</div>
        </div>
        <div class="page-actions">
            <button type="button" class="btn-secondary">
                <i class="bi bi-check2-all"></i> Mark all as read
            </button>
        </div>
    </div>

    <div class="dashboard-grid" style="grid-template-columns: 1.6fr 0.8fr;">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Inbox</h3>
                <div class="notification-toolbar">
                    <div class="notification-type-tabs">
                        <button type="button" class="notification-tab active">All</button>
                        <button type="button" class="notification-tab">Unread</button>
                        <button type="button" class="notification-tab">Alerts</button>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="notification-feed">
                    <div class="notification-feed-item unread">
                        <div class="notif-icon bg-warning-light text-warning">
                            <i class="bi bi-exclamation-triangle"></i>
                        </div>
                        <div class="notif-content">
                            <div class="notif-header">
                                <div class="notif-title">Low Stock Alert</div>
                                <div class="notif-time">10 mins ago</div>
                            </div>
                            <div class="notif-desc">Bosch Drill GSB 500W is below the minimum stock level. Only 3 units remain in the warehouse.</div>
                            <div class="notif-actions">
                                <a href="<%= ResolveUrl("~/Inventory/StockOverview.aspx") %>" class="btn-secondary btn-sm">Review stock</a>
                                <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" class="btn-primary btn-sm">Restock</a>
                            </div>
                        </div>
                    </div>

                    <div class="notification-feed-item unread">
                        <div class="notif-icon bg-success-light text-success">
                            <i class="bi bi-cart-check"></i>
                        </div>
                        <div class="notif-content">
                            <div class="notif-header">
                                <div class="notif-title">New Purchase Received</div>
                                <div class="notif-time">1 hour ago</div>
                            </div>
                            <div class="notif-desc">PO-2026-089 has been delivered by National Hardware Suppliers and has been marked received.</div>
                            <div class="notif-actions">
                                <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" class="btn-secondary btn-sm">Open purchase</a>
                            </div>
                        </div>
                    </div>

                    <div class="notification-feed-item">
                        <div class="notif-icon bg-info-light text-info">
                            <i class="bi bi-receipt"></i>
                        </div>
                        <div class="notif-content">
                            <div class="notif-header">
                                <div class="notif-title">Sales Invoice Generated</div>
                                <div class="notif-time">3 hours ago</div>
                            </div>
                            <div class="notif-desc">Invoice #INV-9823 was generated successfully for ₹48,500 and sent to the customer via email.</div>
                            <div class="notif-actions">
                                <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" class="btn-secondary btn-sm">View invoice</a>
                            </div>
                        </div>
                    </div>

                    <div class="notification-feed-item">
                        <div class="notif-icon bg-primary-light text-primary">
                            <i class="bi bi-hourglass-split"></i>
                        </div>
                        <div class="notif-content">
                            <div class="notif-header">
                                <div class="notif-title">Pending supplier follow-up</div>
                                <div class="notif-time">Yesterday</div>
                            </div>
                            <div class="notif-desc">Three supplier quotations are still awaiting a response before the next purchase approval cycle.</div>
                            <div class="notif-actions">
                                <a href="<%= ResolveUrl("~/Suppliers/") %>" class="btn-secondary btn-sm">Check suppliers</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Overview</h3>
            </div>
            <div class="card-body">
                <div class="notification-summary-grid">
                    <div class="notification-summary-card">
                        <span class="muted-label">Unread</span>
                        <strong>12</strong>
                    </div>
                    <div class="notification-summary-card">
                        <span class="muted-label">Critical</span>
                        <strong>3</strong>
                    </div>
                </div>

                <div class="notification-quick-list">
                    <div class="quick-list-item">
                        <div>
                            <span class="mini-label">Inventory</span>
                            <strong>8 low stock</strong>
                        </div>
                        <span class="trend-pill negative"><i class="bi bi-arrow-down-short"></i> 4%</span>
                    </div>

                    <div class="quick-list-item">
                        <div>
                            <span class="mini-label">Purchases</span>
                            <strong>4 pending approval</strong>
                        </div>
                        <span class="trend-pill positive"><i class="bi bi-arrow-up-short"></i> 2%</span>
                    </div>

                    <div class="quick-list-item">
                        <div>
                            <span class="mini-label">Sales</span>
                            <strong>6 invoice alerts</strong>
                        </div>
                        <span class="trend-pill positive"><i class="bi bi-arrow-up-short"></i> 6%</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
