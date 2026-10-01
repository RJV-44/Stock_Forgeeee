<%@ Page Title="Sales List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalesList.aspx.cs" Inherits="Stock_Forgeeee.Sales.SalesList" %>
<%@ Register Src="~/Controls/Pagination.ascx" TagPrefix="uc" TagName="Pagination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Sales List</h1>
            <div class="page-subtitle">Track customer orders, payment status, and invoice performance in one place.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Sales/NewSale.aspx") %>" class="btn-primary">
                <i class="bi bi-plus-circle"></i> New Sale
            </a>
        </div>
    </div>

    <div class="metric-grid">
        <div class="metric-card">
            <span class="metric-label">Total Revenue</span>
            <div class="metric-value">₹12.45L</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +14.2%</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Orders</span>
            <div class="metric-value">1,240</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +8.1%</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Avg. Order</span>
            <div class="metric-value">₹18.6K</div>
            <span class="metric-change negative"><i class="bi bi-arrow-down-short"></i> -1.2%</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Paid Invoices</span>
            <div class="metric-value">94%</div>
            <span class="metric-change positive"><i class="bi bi-check-circle"></i> On track</span>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="filter-row">
                <div class="search-box">
                    <i class="bi bi-search search-icon"></i>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" MaxLength="50" placeholder="Search invoice, customer, or product..."></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revSalesSearch" runat="server" ValidationGroup="SalesFilter" ControlToValidate="txtSearch" ValidationExpression="^[-a-zA-Z0-9\s+@.,/#]{0,50}$" ErrorMessage="Search may contain letters, numbers, spaces, and common invoice punctuation (maximum 50 characters)." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="filter-field">
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">All Status</asp:ListItem>
                        <asp:ListItem Value="Completed">Completed</asp:ListItem>
                        <asp:ListItem Value="Pending">Pending</asp:ListItem>
                        <asp:ListItem Value="Paid">Paid</asp:ListItem>
                        <asp:ListItem Value="Cancelled">Cancelled</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="filter-field">
                    <asp:DropDownList ID="ddlPeriod" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">Last 30 days</asp:ListItem>
                        <asp:ListItem Value="7">Last 7 days</asp:ListItem>
                        <asp:ListItem Value="14">Last 14 days</asp:ListItem>
                        <asp:ListItem Value="90">Last 90 days</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:Button ID="btnFilter" runat="server" Text="Apply" CssClass="btn-secondary" ValidationGroup="SalesFilter" OnClick="btnFilter_Click" />
            </div>

            <div class="table-wrapper mt-2">
                <table class="customer-table">
                    <thead>
                        <tr>
                            <th>Invoice</th>
                            <th>Customer</th>
                            <th>Order Value</th>
                            <th>Payment</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#INV-9824</td>
                            <td>Apex Builders</td>
                            <td>₹45,200</td>
                            <td>UPI</td>
                            <td>30 Sep 2026</td>
                            <td><span class="status-pill active">Completed</span></td>
                            <td class="text-end">
                                <div class="action-group">
                                    <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=9824") %>" class="btn-icon"><i class="bi bi-eye"></i></a>
                                    <a href="<%= ResolveUrl("~/Sales/EditSale.aspx?id=9824") %>" class="btn-icon"><i class="bi bi-pencil-square"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>#INV-9823</td>
                            <td>Sharma Constructions</td>
                            <td>₹18,500</td>
                            <td>Credit</td>
                            <td>29 Sep 2026</td>
                            <td><span class="status-pill pending">Pending</span></td>
                            <td class="text-end">
                                <div class="action-group">
                                    <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=9823") %>" class="btn-icon"><i class="bi bi-eye"></i></a>
                                    <a href="<%= ResolveUrl("~/Sales/EditSale.aspx?id=9823") %>" class="btn-icon"><i class="bi bi-pencil-square"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>#INV-9822</td>
                            <td>Modern Electricals</td>
                            <td>₹1,24,000</td>
                            <td>Bank Transfer</td>
                            <td>27 Sep 2026</td>
                            <td><span class="status-pill active">Paid</span></td>
                            <td class="text-end">
                                <div class="action-group">
                                    <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=9822") %>" class="btn-icon"><i class="bi bi-eye"></i></a>
                                    <a href="<%= ResolveUrl("~/Sales/EditSale.aspx?id=9822") %>" class="btn-icon"><i class="bi bi-pencil-square"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>#INV-9821</td>
                            <td>Royal Infra</td>
                            <td>₹32,750</td>
                            <td>Cash</td>
                            <td>24 Sep 2026</td>
                            <td><span class="status-pill blocked">Cancelled</span></td>
                            <td class="text-end">
                                <div class="action-group">
                                    <a href="<%= ResolveUrl("~/Sales/SaleDetails.aspx?id=9821") %>" class="btn-icon"><i class="bi bi-eye"></i></a>
                                    <a href="<%= ResolveUrl("~/Sales/EditSale.aspx?id=9821") %>" class="btn-icon"><i class="bi bi-pencil-square"></i></a>
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
