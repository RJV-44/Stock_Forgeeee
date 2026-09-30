<%@ Page Title="Stock Overview" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockOverview.aspx.cs" Inherits="Stock_Forgeeee.Inventory.StockOverview" %>
<%@ Register Src="~/Controls/Pagination.ascx" TagPrefix="uc" TagName="Pagination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Inventory Overview</h1>
            <div class="page-subtitle">Track available stock, reorder pressure, and warehouse movement in one place.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" class="btn-primary">
                <i class="bi bi-plus-circle"></i> Adjust Stock
            </a>
            <a href="<%= ResolveUrl("~/Inventory/StockMovementHistory.aspx") %>" class="btn-secondary">
                <i class="bi bi-arrow-left-right"></i> View Movement History
            </a>
        </div>
    </div>

    <div class="inventory-metric-grid">
        <div class="inventory-metric-card">
            <span class="metric-label">Total Items</span>
            <div class="metric-value">486</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +4.6%</span>
        </div>
        <div class="inventory-metric-card">
            <span class="metric-label">Low Stock</span>
            <div class="metric-value">8</div>
            <span class="metric-change negative"><i class="bi bi-arrow-down-short"></i> 3 urgent</span>
        </div>
        <div class="inventory-metric-card">
            <span class="metric-label">Inventory Value</span>
            <div class="metric-value">₹18.4L</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +7.2%</span>
        </div>
        <div class="inventory-metric-card">
            <span class="metric-label">Stock Accuracy</span>
            <div class="metric-value">96.4%</div>
            <span class="metric-change positive"><i class="bi bi-check-circle"></i> Stable</span>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="filter-row">
                <div class="search-box">
                    <i class="bi bi-search search-icon"></i>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search product, SKU, or category..."></asp:TextBox>
                </div>
                <div class="filter-field">
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">All categories</asp:ListItem>
                        <asp:ListItem Value="Power Tools">Power Tools</asp:ListItem>
                        <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                        <asp:ListItem Value="Fasteners">Fasteners</asp:ListItem>
                        <asp:ListItem Value="Electrical">Electrical</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="filter-field">
                    <asp:DropDownList ID="ddlStockStatus" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">All stock</asp:ListItem>
                        <asp:ListItem Value="Healthy">Healthy</asp:ListItem>
                        <asp:ListItem Value="Low">Low stock</asp:ListItem>
                        <asp:ListItem Value="Out">Out of stock</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:Button ID="btnFilter" runat="server" Text="Apply" CssClass="btn-secondary" />
            </div>

            <div class="table-wrapper mt-2">
                <table class="inventory-table">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Category</th>
                            <th>SKU</th>
                            <th>On Hand</th>
                            <th>Reorder Level</th>
                            <th>Unit Price</th>
                            <th>Status</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="product-chip">
                                    <div class="product-thumb"><i class="bi bi-tools"></i></div>
                                    <div class="product-name">
                                        <strong>Bosch GSB 500W Impact Drill</strong>
                                        <small>Fast-moving item</small>
                                    </div>
                                </div>
                            </td>
                            <td>Power Tools</td>
                            <td>HW-BSH-500</td>
                            <td><strong>3</strong></td>
                            <td>12</td>
                            <td>₹4,150</td>
                            <td><span class="status-pill blocked">Low Stock</span></td>
                            <td class="text-end">
                                <div class="action-group">
                                    <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=101") %>" class="btn-icon"><i class="bi bi-eye"></i></a>
                                    <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" class="btn-icon"><i class="bi bi-arrow-repeat"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="product-chip">
                                    <div class="product-thumb"><i class="bi bi-wrench"></i></div>
                                    <div class="product-name">
                                        <strong>Stanley Heavy Duty Hammer</strong>
                                        <small>Manual tool</small>
                                    </div>
                                </div>
                            </td>
                            <td>Hand Tools</td>
                            <td>HW-STN-021</td>
                            <td><strong>5</strong></td>
                            <td>10</td>
                            <td>₹680</td>
                            <td><span class="status-pill pending">Low</span></td>
                            <td class="text-end">
                                <div class="action-group">
                                    <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=102") %>" class="btn-icon"><i class="bi bi-eye"></i></a>
                                    <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" class="btn-icon"><i class="bi bi-arrow-repeat"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="product-chip">
                                    <div class="product-thumb"><i class="bi bi-box-seam"></i></div>
                                    <div class="product-name">
                                        <strong>Stainless Steel Hinges 4-inch</strong>
                                        <small>Packaged hardware</small>
                                    </div>
                                </div>
                            </td>
                            <td>Fasteners</td>
                            <td>HW-HNG-401</td>
                            <td><strong>120</strong></td>
                            <td>35</td>
                            <td>₹1,200</td>
                            <td><span class="status-pill active">Healthy</span></td>
                            <td class="text-end">
                                <div class="action-group">
                                    <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=103") %>" class="btn-icon"><i class="bi bi-eye"></i></a>
                                    <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" class="btn-icon"><i class="bi bi-arrow-repeat"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="product-chip">
                                    <div class="product-thumb"><i class="bi bi-plug"></i></div>
                                    <div class="product-name">
                                        <strong>Finolex Copper Wire 1.5 sq mm</strong>
                                        <small>Electrical supply</small>
                                    </div>
                                </div>
                            </td>
                            <td>Electrical</td>
                            <td>HW-FNX-150</td>
                            <td><strong>45</strong></td>
                            <td>20</td>
                            <td>₹1,850</td>
                            <td><span class="status-pill active">Healthy</span></td>
                            <td class="text-end">
                                <div class="action-group">
                                    <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=104") %>" class="btn-icon"><i class="bi bi-eye"></i></a>
                                    <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" class="btn-icon"><i class="bi bi-arrow-repeat"></i></a>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <uc:Pagination runat="server" ID="PaginationControl" />
        </div>
    </div>
</asp:Content>
