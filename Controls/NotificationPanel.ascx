<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NotificationPanel.ascx.cs" Inherits="Stock_Forgeeee.Controls.NotificationPanel" %>
<link rel="stylesheet" href="Content/site.css" />
<link href="Content/components.css" rel="stylesheet" type="text/css" />
<div class="notification-panel-overlay" id="notificationOverlay"></div>
<div class="notification-panel" id="notificationPanel">
    <div class="notification-header">
        <h5 class="m-0 font-weight-bold">Notifications</h5>
        <button type="button" class="btn-close-panel" id="btnCloseNotification"><i class="bi bi-x-lg"></i></button>
    </div>
    <div class="notification-body">
        <div class="notification-item unread">
            <div class="notif-icon bg-warning-light text-warning">
                <i class="bi bi-exclamation-triangle"></i>
            </div>
            <div class="notif-content">
                <div class="notif-title">Low Stock Alert</div>
                <div class="notif-desc">Bosch Drill GSB 500W is below minimum stock (3 items remaining).</div>
                <div class="notif-time">10 mins ago</div>
            </div>
        </div>
        <div class="notification-item unread">
            <div class="notif-icon bg-success-light text-success">
                <i class="bi bi-cart-check"></i>
            </div>
            <div class="notif-content">
                <div class="notif-title">New Purchase Received</div>
                <div class="notif-desc">PO-2026-089 has been delivered by National Hardware Suppliers.</div>
                <div class="notif-time">1 hour ago</div>
            </div>
        </div>
        <div class="notification-item">
            <div class="notif-icon bg-info-light text-info">
                <i class="bi bi-receipt"></i>
            </div>
            <div class="notif-content">
                <div class="notif-title">Sales Invoice Generated</div>
                <div class="notif-desc">Invoice #INV-9823 created for ₹48,500.</div>
                <div class="notif-time">3 hours ago</div>
            </div>
        </div>
    </div>
    <div class="notification-footer">
        <a href="<%= ResolveUrl("~/Notifications/Notifications.aspx") %>" class="btn-link">View All Notifications</a>
    </div>
</div>
