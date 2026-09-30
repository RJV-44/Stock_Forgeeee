<%@ Page Title="Customer List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="Stock_Forgeeee.Customers.CustomerList" %>
<%@ Register Src="~/Controls/Pagination.ascx" TagPrefix="uc" TagName="Pagination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Customer Directory</h1>
            <div class="page-subtitle">Track customer accounts, buying behavior, and order activity across your hardware business.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Customers/AddCustomer.aspx") %>" class="btn-primary">
                <i class="bi bi-plus-lg"></i> Add Customer
            </a>
        </div>
    </div>

    <div class="metric-grid">
        <div class="metric-card">
            <span class="metric-label">Total Customers</span>
            <div class="metric-value">1,284</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +9.4%</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Active Buyers</span>
            <div class="metric-value">876</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +6.2%</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">New This Month</span>
            <div class="metric-value">74</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +12.1%</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Avg. Order Value</span>
            <div class="metric-value">₹18.6K</div>
            <span class="metric-change negative"><i class="bi bi-arrow-down-short"></i> -1.2%</span>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="filter-row">
                <div class="search-box">
                    <i class="bi bi-search search-icon"></i>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search by customer name, company, or phone..."></asp:TextBox>
                </div>
                <div class="filter-field">
                    <asp:DropDownList ID="ddlType" runat="server" CssClass="form-select">
                        <option value="">All customer types</option>
                        <option value="Retail">Retail</option>
                        <option value="Contractor">Contractor</option>
                        <option value="Wholesale">Wholesale</option>
                        <option value="Industrial">Industrial</option>
                    </asp:DropDownList>
                </div>
                <div class="filter-field">
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select">
                        <option value="">All status</option>
                        <option value="Active">Active</option>
                        <option value="Pending">Pending</option>
                        <option value="Blocked">Blocked</option>
                    </asp:DropDownList>
                </div>
                <asp:Button ID="btnFilter" runat="server" Text="Apply" CssClass="btn-secondary" />
            </div>

            <div class="table-wrapper mt-2">
                <table class="customer-table">
                    <thead>
                        <tr>
                            <th>Customer</th>
                            <th>Company</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Orders</th>
                            <th>Total Spend</th>
                            <th>Status</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="customer-name">
                                    <div class="customer-avatar">AB</div>
                                    <div class="customer-meta">
                                        <strong>Aditi Bansal</strong>
                                        <small>Retail Buyer</small>
                                    </div>
                                </div>
                            </td>
                            <td>HomeFix Mart</td>
                            <td>+91 98765 43210</td>
                            <td>aditi@homefixmart.in</td>
                            <td>32</td>
                            <td>₹4,82,500</td>
                            <td><span class="status-pill active">Active</span></td>
                            <td>
                                <div class="action-group">
                                    <a href="CustomerDetails.aspx?id=101" class="btn-icon" title="View details"><i class="bi bi-eye"></i></a>
                                    <a href="EditCustomer.aspx?id=101" class="btn-icon" title="Edit customer"><i class="bi bi-pencil"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="customer-name">
                                    <div class="customer-avatar">RS</div>
                                    <div class="customer-meta">
                                        <strong>Rohit Sharma</strong>
                                        <small>Contractor</small>
                                    </div>
                                </div>
                            </td>
                            <td>Sharma Constructions</td>
                            <td>+91 99876 55443</td>
                            <td>rohit@sharmacon.in</td>
                            <td>18</td>
                            <td>₹8,30,200</td>
                            <td><span class="status-pill active">Active</span></td>
                            <td>
                                <div class="action-group">
                                    <a href="CustomerDetails.aspx?id=102" class="btn-icon" title="View details"><i class="bi bi-eye"></i></a>
                                    <a href="EditCustomer.aspx?id=102" class="btn-icon" title="Edit customer"><i class="bi bi-pencil"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="customer-name">
                                    <div class="customer-avatar">NM</div>
                                    <div class="customer-meta">
                                        <strong>Nisha Mehta</strong>
                                        <small>Wholesale</small>
                                    </div>
                                </div>
                            </td>
                            <td>Metro Hardware Supply</td>
                            <td>+91 98660 15520</td>
                            <td>nisha@metrohardware.in</td>
                            <td>51</td>
                            <td>₹14,20,000</td>
                            <td><span class="status-pill pending">Pending</span></td>
                            <td>
                                <div class="action-group">
                                    <a href="CustomerDetails.aspx?id=103" class="btn-icon" title="View details"><i class="bi bi-eye"></i></a>
                                    <a href="EditCustomer.aspx?id=103" class="btn-icon" title="Edit customer"><i class="bi bi-pencil"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="customer-name">
                                    <div class="customer-avatar">VK</div>
                                    <div class="customer-meta">
                                        <strong>Vikram Kulkarni</strong>
                                        <small>Industrial</small>
                                    </div>
                                </div>
                            </td>
                            <td>Prime Infra Works</td>
                            <td>+91 98111 77541</td>
                            <td>vikram@primeinfra.co</td>
                            <td>12</td>
                            <td>₹6,74,800</td>
                            <td><span class="status-pill blocked">Blocked</span></td>
                            <td>
                                <div class="action-group">
                                    <a href="CustomerDetails.aspx?id=104" class="btn-icon" title="View details"><i class="bi bi-eye"></i></a>
                                    <a href="EditCustomer.aspx?id=104" class="btn-icon" title="Edit customer"><i class="bi bi-pencil"></i></a>
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
