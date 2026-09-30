<%@ Page Title="Stock Movement History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockMovementHistory.aspx.cs" Inherits="Stock_Forgeeee.Inventory.StockMovementHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Stock Movement History</h1>
            <div class="page-subtitle">Review stock movements, adjustments, and transfer activity across your warehouse.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Inventory/StockOverview.aspx") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to Inventory
            </a>
        </div>
    </div>

    <div class="inventory-metric-grid">
        <div class="inventory-metric-card">
            <span class="metric-label">Inbound</span>
            <div class="metric-value">184</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +9.4%</span>
        </div>
        <div class="inventory-metric-card">
            <span class="metric-label">Outbound</span>
            <div class="metric-value">136</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +5.2%</span>
        </div>
        <div class="inventory-metric-card">
            <span class="metric-label">Adjustments</span>
            <div class="metric-value">22</div>
            <span class="metric-change negative"><i class="bi bi-arrow-down-short"></i> 3 follow-up</span>
        </div>
        <div class="inventory-metric-card">
            <span class="metric-label">Transfers</span>
            <div class="metric-value">17</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +2.1%</span>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="filter-row">
                <div class="search-box">
                    <i class="bi bi-search search-icon"></i>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search movement, SKU, or reference..."></asp:TextBox>
                </div>
                <div class="filter-field">
                    <asp:DropDownList ID="ddlMovementType" runat="server" CssClass="form-select">
                        <option value="">All movement types</option>
                        <option value="Inbound">Inbound</option>
                        <option value="Outbound">Outbound</option>
                        <option value="Adjustment">Adjustment</option>
                        <option value="Transfer">Transfer</option>
                    </asp:DropDownList>
                </div>
                <div class="filter-field">
                    <asp:DropDownList ID="ddlDateRange" runat="server" CssClass="form-select">
                        <option value="">Last 30 days</option>
                        <option value="7">Last 7 days</option>
                        <option value="14">Last 14 days</option>
                        <option value="90">Last 90 days</option>
                    </asp:DropDownList>
                </div>
                <asp:Button ID="btnFilter" runat="server" Text="Apply" CssClass="btn-secondary" />
            </div>

            <div class="table-wrapper mt-2">
                <table class="movement-table">
                    <thead>
                        <tr>
                            <th>Movement ID</th>
                            <th>Product</th>
                            <th>Type</th>
                            <th>Qty</th>
                            <th>Reference</th>
                            <th>Date</th>
                            <th>By</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#MOV-1042</td>
                            <td>Bosch GSB 500W Impact Drill</td>
                            <td><span class="status-pill active">Inbound</span></td>
                            <td>+12</td>
                            <td>GRN-1042</td>
                            <td>29 Sep 2026</td>
                            <td>Warehouse A</td>
                        </tr>
                        <tr>
                            <td>#MOV-1039</td>
                            <td>Stanley Heavy Duty Hammer</td>
                            <td><span class="status-pill pending">Outbound</span></td>
                            <td>-5</td>
                            <td>SO-9823</td>
                            <td>28 Sep 2026</td>
                            <td>Sales Desk</td>
                        </tr>
                        <tr>
                            <td>#MOV-1032</td>
                            <td>Stainless Steel Hinges 4-inch</td>
                            <td><span class="status-pill blocked">Adjustment</span></td>
                            <td>-2</td>
                            <td>COUNT-07</td>
                            <td>27 Sep 2026</td>
                            <td>System Admin</td>
                        </tr>
                        <tr>
                            <td>#MOV-1030</td>
                            <td>Finolex Copper Wire 1.5 sq mm</td>
                            <td><span class="status-pill active">Transfer</span></td>
                            <td>+8</td>
                            <td>WH-TRN-120</td>
                            <td>26 Sep 2026</td>
                            <td>Warehouse B</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
