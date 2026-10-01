<%@ Page Title="Notifications" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="Stock_Forgeeee.Notifications.Notifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Notifications</h1>
            <div class="page-subtitle">Track alerts, updates, and task reminders across your hardware operations.</div>
        </div>
        <div class="page-actions">
            <asp:Button ID="btnMarkAllRead" runat="server" Text="Mark all as read" CssClass="btn-secondary" OnClick="btnMarkAllRead_Click" UseSubmitBehavior="false" CausesValidation="false" />
        </div>
    </div>

    <div class="card mb-4">
        <div class="card-body">
            <div class="filter-row" style="display: flex; gap: 12px; align-items: flex-start; flex-wrap: wrap;">
                <div class="search-box" style="flex: 1; min-width: 260px;">
                    <i class="bi bi-search search-icon"></i>
                    <asp:TextBox ID="txtSearchNotif" runat="server" CssClass="form-control" placeholder="Search notification title or keywords..."></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revSearchNotif" runat="server" ControlToValidate="txtSearchNotif" ValidationExpression="^[a-zA-Z0-9\s\+\-\@\.\,]{0,50}$" ErrorMessage="Search query contains invalid characters (max 50 chars)." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="filter-field" style="min-width: 180px;">
                    <asp:DropDownList ID="ddlFilterCategory" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">All Categories</asp:ListItem>
                        <asp:ListItem Value="Inventory">Inventory Alerts</asp:ListItem>
                        <asp:ListItem Value="Purchases">Purchase Orders</asp:ListItem>
                        <asp:ListItem Value="Sales">Sales Invoices</asp:ListItem>
                        <asp:ListItem Value="Suppliers">Supplier Reminders</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:Button ID="btnFilterNotif" runat="server" Text="Filter" CssClass="btn-secondary" OnClick="btnFilterNotif_Click" />
            </div>
        </div>
    </div>

    <div class="dashboard-grid" style="grid-template-columns: 1.6fr 0.8fr;">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Inbox Feed</h3>
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
                                <a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>" class="btn-secondary btn-sm">Check suppliers</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="card mb-4">
                <div class="card-header">
                    <h3 class="card-title">Broadcast System Alert</h3>
                </div>
                <div class="card-body">
                    <asp:ValidationSummary ID="valSummaryNotif" runat="server" CssClass="alert alert-danger" HeaderText="Please correct the following errors:" DisplayMode="BulletList" EnableClientScript="false" />

                    <div class="form-group">
                        <label class="form-label">Alert Subject <span class="required">*</span></label>
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="e.g. Warehouse Audit Reminder"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="txtSubject" ErrorMessage="Alert Subject is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revSubject" runat="server" ControlToValidate="txtSubject" ValidationExpression="^[a-zA-Z0-9\s\-\.\,\!\?]{3,100}$" ErrorMessage="Subject must be 3 to 100 characters." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    </div>

                    <div class="form-group">
                        <label class="form-label">Target Audience <span class="required">*</span></label>
                        <asp:DropDownList ID="ddlTargetAudience" runat="server" CssClass="form-select">
                            <asp:ListItem Value="">Select audience</asp:ListItem>
                            <asp:ListItem Value="All">All System Users</asp:ListItem>
                            <asp:ListItem Value="Managers">Warehouse Managers</asp:ListItem>
                            <asp:ListItem Value="Sales">Sales Representatives</asp:ListItem>
                            <asp:ListItem Value="Purchasing">Purchasing Staff</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvTarget" runat="server" ControlToValidate="ddlTargetAudience" InitialValue="" ErrorMessage="Target Audience selection is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label class="form-label">Priority Level <span class="required">*</span></label>
                        <asp:DropDownList ID="ddlPriority" runat="server" CssClass="form-select">
                            <asp:ListItem Value="">Select priority</asp:ListItem>
                            <asp:ListItem Value="Normal">Normal</asp:ListItem>
                            <asp:ListItem Value="High">High Priority</asp:ListItem>
                            <asp:ListItem Value="Urgent">Urgent / Critical</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvPriority" runat="server" ControlToValidate="ddlPriority" InitialValue="" ErrorMessage="Priority Level selection is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label class="form-label">Alert Message <span class="required">*</span></label>
                        <asp:TextBox ID="txtMessageBody" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Enter alert details, instructions, or deadlines..."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMessageBody" runat="server" ControlToValidate="txtMessageBody" ErrorMessage="Alert Message is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMessageBody" runat="server" ControlToValidate="txtMessageBody" ValidationExpression="^[\s\S]{5,300}$" ErrorMessage="Message must be between 5 and 300 characters." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    </div>

                    <div class="pt-2">
                        <asp:Button ID="btnSendNotification" runat="server" Text="Send Alert" CssClass="btn-primary" OnClick="btnSendNotification_Click" />
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
    </div>
</asp:Content>

