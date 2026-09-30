<%@ Page Title="Customer Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="Stock_Forgeeee.Customers.CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Customer Details</h1>
            <div class="page-subtitle">View customer activity, contact information, and purchase trends.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Customers/EditCustomer.aspx?id=101") %>" class="btn-secondary">
                <i class="bi bi-pencil-square"></i> Edit Customer
            </a>
            <a href="<%= ResolveUrl("~/Customers/CustomerList.aspx") %>" class="btn-primary">
                <i class="bi bi-arrow-left"></i> Back to List
            </a>
        </div>
    </div>

    <div class="profile-hero">
        <div class="hero-left">
            <div class="hero-avatar">AB</div>
            <div>
                <h2 class="hero-title">Aditi Bansal</h2>
                <div class="hero-subtitle">Retail Buyer · HomeFix Mart</div>
            </div>
        </div>
        <div class="status-pill active">Active</div>
    </div>

    <div class="metric-grid">
        <div class="metric-card">
            <span class="metric-label">Total Orders</span>
            <div class="metric-value">32</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +8.3%</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Total Spend</span>
            <div class="metric-value">₹4.82L</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +11.5%</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Last Order</span>
            <div class="metric-value">12 days</div>
            <span class="metric-change positive"><i class="bi bi-calendar3"></i> 26 Sep 2026</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Preferred Terms</span>
            <div class="metric-value">Net 15</div>
            <span class="metric-change negative"><i class="bi bi-clock-history"></i> Credit review</span>
        </div>
    </div>

    <div class="info-grid">
        <div class="info-card">
            <div class="card-header">
                <h3 class="card-title">Contact Information</h3>
            </div>
            <div class="info-list">
                <div class="info-row">
                    <span>Phone</span>
                    <strong>+91 98765 43210</strong>
                </div>
                <div class="info-row">
                    <span>Email</span>
                    <strong>aditi@homefixmart.in</strong>
                </div>
                <div class="info-row">
                    <span>Address</span>
                    <strong>26 Lakeview Avenue, Banjara Hills, Hyderabad</strong>
                </div>
                <div class="info-row">
                    <span>GST</span>
                    <strong>27ABCDE1234F1Z5</strong>
                </div>
            </div>
        </div>

        <div class="info-card">
            <div class="card-header">
                <h3 class="card-title">Buying Profile</h3>
            </div>
            <div class="info-list">
                <div class="info-row">
                    <span>Customer Type</span>
                    <strong>Retail</strong>
                </div>
                <div class="info-row">
                    <span>Preferred Category</span>
                    <strong>Power Tools & Fasteners</strong>
                </div>
                <div class="info-row">
                    <span>Avg. Monthly Spend</span>
                    <strong>₹45,200</strong>
                </div>
                <div class="info-row">
                    <span>Last Visit</span>
                    <strong>26 Sep 2026</strong>
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Recent Orders</h3>
            <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" class="small-link">View all</a>
        </div>
        <div class="card-body p-0">
            <div class="table-wrapper">
                <table class="customer-table">
                    <thead>
                        <tr>
                            <th>Invoice</th>
                            <th>Date</th>
                            <th>Items</th>
                            <th>Amount</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#INV-9824</td>
                            <td>29 Sep 2026</td>
                            <td>14</td>
                            <td>₹45,200</td>
                            <td><span class="status-pill active">Completed</span></td>
                        </tr>
                        <tr>
                            <td>#INV-9818</td>
                            <td>17 Sep 2026</td>
                            <td>9</td>
                            <td>₹18,950</td>
                            <td><span class="status-pill pending">Pending</span></td>
                        </tr>
                        <tr>
                            <td>#INV-9802</td>
                            <td>04 Sep 2026</td>
                            <td>11</td>
                            <td>₹23,760</td>
                            <td><span class="status-pill active">Completed</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
