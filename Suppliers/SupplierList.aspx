<%@ Page Title="Supplier Directory" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SupplierList.aspx.cs" Inherits="Stock_Forgeeee.Suppliers.SupplierList" %>
<%@ Register Src="~/Controls/Pagination.ascx" TagPrefix="uc" TagName="Pagination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Supplier Directory</h1>
            <div class="page-subtitle">Manage vendor contacts, hardware manufacturing partners, procurement volume, and rating status.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Suppliers/AddSupplier.aspx") %>" class="btn-primary">
                <i class="bi bi-plus-lg"></i> Add New Supplier
            </a>
        </div>
    </div>

    <div class="metric-grid">
        <div class="metric-card">
            <span class="metric-label">Total Suppliers</span>
            <div class="metric-value">48</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +4 Active</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Preferred Vendors</span>
            <div class="metric-value">18</div>
            <span class="metric-change positive"><i class="bi bi-check-circle"></i> Tier 1 Partners</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Total Purchase Volume</span>
            <div class="metric-value">&#8377;64.2L</div>
            <span class="metric-change positive"><i class="bi bi-arrow-up-short"></i> +14.8% YTD</span>
        </div>
        <div class="metric-card">
            <span class="metric-label">Avg. Lead Time</span>
            <div class="metric-value">3.2 Days</div>
            <span class="metric-change positive"><i class="bi bi-lightning-charge"></i> High Reliability</span>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="filter-row">
                <div class="search-box">
                    <i class="bi bi-search search-icon"></i>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" MaxLength="50" placeholder="Search by vendor name, code, contact person, or phone..."></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revSupplierSearch" runat="server" ValidationGroup="SupplierFilter" ControlToValidate="txtSearch" ValidationExpression="^[\p{L}\p{M}0-9\s+@.&amp;,'/#()-]{0,50}$" ErrorMessage="Search may contain letters, numbers, spaces, and common supplier punctuation (maximum 50 characters)." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="filter-field">
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">All Categories</asp:ListItem>
                        <asp:ListItem Value="Power Tools">Power Tools</asp:ListItem>
                        <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                        <asp:ListItem Value="Electrical">Electrical Supplies</asp:ListItem>
                        <asp:ListItem Value="Plumbing">Plumbing Fittings</asp:ListItem>
                        <asp:ListItem Value="Fasteners">Fasteners &amp; Screws</asp:ListItem>
                        <asp:ListItem Value="Paints">Paints &amp; Coatings</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="filter-field">
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">All Status</asp:ListItem>
                        <asp:ListItem Value="Preferred">Preferred Partner</asp:ListItem>
                        <asp:ListItem Value="Active">Active</asp:ListItem>
                        <asp:ListItem Value="Pending">Pending Review</asp:ListItem>
                        <asp:ListItem Value="Inactive">Inactive</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:Button ID="btnFilter" runat="server" Text="Apply Filter" CssClass="btn-secondary" ValidationGroup="SupplierFilter" OnClick="btnFilter_Click" />
            </div>

            <div class="table-wrapper mt-2">
                <table class="customer-table">
                    <thead>
                        <tr>
                            <th>Supplier &amp; Code</th>
                            <th>Category</th>
                            <th>Contact Person</th>
                            <th>Phone &amp; Email</th>
                            <th>Active POs</th>
                            <th>Total Spend</th>
                            <th>Status</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="customer-name">
                                    <div class="customer-avatar" style="background: linear-gradient(135deg, #4caf7d 0%, #2d8a5a 100%); color: #fff;">BS</div>
                                    <div class="customer-meta">
                                        <strong>Bosch Power Tools India Ltd</strong>
                                        <small>Code: <code>SUP-1001</code></small>
                                    </div>
                                </div>
                            </td>
                            <td><span class="badge badge-info">Power Tools</span></td>
                            <td>Rajesh Verma</td>
                            <td>
                                <div class="customer-contact">
                                    <span><i class="bi bi-telephone text-muted"></i> +91 98200 11223</span>
                                    <span><i class="bi bi-envelope text-muted"></i> rajesh@bosch.co.in</span>
                                </div>
                            </td>
                            <td><strong>3 Orders</strong></td>
                            <td>₹18,50,000</td>
                            <td><span class="status-pill active">Preferred</span></td>
                            <td>
                                <div class="action-group">
                                    <a href="SupplierDetails.aspx?id=1001" class="btn-icon" title="View Supplier Details"><i class="bi bi-eye"></i></a>
                                    <a href="EditSupplier.aspx?id=1001" class="btn-icon" title="Edit Supplier"><i class="bi bi-pencil"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="customer-name">
                                    <div class="customer-avatar" style="background: linear-gradient(135deg, #3b82f6 0%, #1d4ed8 100%); color: #fff;">ST</div>
                                    <div class="customer-meta">
                                        <strong>Stanley Black &amp; Decker India</strong>
                                        <small>Code: <code>SUP-1002</code></small>
                                    </div>
                                </div>
                            </td>
                            <td><span class="badge badge-neutral">Hand Tools</span></td>
                            <td>Priya Nair</td>
                            <td>
                                <div class="customer-contact">
                                    <span><i class="bi bi-telephone text-muted"></i> +91 98450 44556</span>
                                    <span><i class="bi bi-envelope text-muted"></i> priya@stanley.in</span>
                                </div>
                            </td>
                            <td><strong>2 Orders</strong></td>
                            <td>₹12,80,000</td>
                            <td><span class="status-pill active">Active</span></td>
                            <td>
                                <div class="action-group">
                                    <a href="SupplierDetails.aspx?id=1002" class="btn-icon" title="View Supplier Details"><i class="bi bi-eye"></i></a>
                                    <a href="EditSupplier.aspx?id=1002" class="btn-icon" title="Edit Supplier"><i class="bi bi-pencil"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="customer-name">
                                    <div class="customer-avatar" style="background: linear-gradient(135deg, #f59e0b 0%, #b45309 100%); color: #fff;">HV</div>
                                    <div class="customer-meta">
                                        <strong>Havells Electricals Ltd</strong>
                                        <small>Code: <code>SUP-1003</code></small>
                                    </div>
                                </div>
                            </td>
                            <td><span class="badge badge-warning">Electrical</span></td>
                            <td>Amit Sundaram</td>
                            <td>
                                <div class="customer-contact">
                                    <span><i class="bi bi-telephone text-muted"></i> +91 98711 88990</span>
                                    <span><i class="bi bi-envelope text-muted"></i> order@havells.com</span>
                                </div>
                            </td>
                            <td><strong>1 Order</strong></td>
                            <td>₹22,40,000</td>
                            <td><span class="status-pill active">Preferred</span></td>
                            <td>
                                <div class="action-group">
                                    <a href="SupplierDetails.aspx?id=1003" class="btn-icon" title="View Supplier Details"><i class="bi bi-eye"></i></a>
                                    <a href="EditSupplier.aspx?id=1003" class="btn-icon" title="Edit Supplier"><i class="bi bi-pencil"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="customer-name">
                                    <div class="customer-avatar" style="background: linear-gradient(135deg, #8b5cf6 0%, #6d28d9 100%); color: #fff;">AP</div>
                                    <div class="customer-meta">
                                        <strong>Asian Paints Hardware Division</strong>
                                        <small>Code: <code>SUP-1004</code></small>
                                    </div>
                                </div>
                            </td>
                            <td><span class="badge badge-success">Paints &amp; Coatings</span></td>
                            <td>Sunita Patel</td>
                            <td>
                                <div class="customer-contact">
                                    <span><i class="bi bi-telephone text-muted"></i> +91 98990 33211</span>
                                    <span><i class="bi bi-envelope text-muted"></i> sunita@asianpaints.com</span>
                                </div>
                            </td>
                            <td><strong>0 Orders</strong></td>
                            <td>₹6,30,000</td>
                            <td><span class="status-pill pending">Pending Review</span></td>
                            <td>
                                <div class="action-group">
                                    <a href="SupplierDetails.aspx?id=1004" class="btn-icon" title="View Supplier Details"><i class="bi bi-eye"></i></a>
                                    <a href="EditSupplier.aspx?id=1004" class="btn-icon" title="Edit Supplier"><i class="bi bi-pencil"></i></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="customer-name">
                                    <div class="customer-avatar" style="background: linear-gradient(135deg, #64748b 0%, #334155 100%); color: #fff;">AN</div>
                                    <div class="customer-meta">
                                        <strong>Anchor Electricals &amp; Wiring</strong>
                                        <small>Code: <code>SUP-1005</code></small>
                                    </div>
                                </div>
                            </td>
                            <td><span class="badge badge-warning">Electrical</span></td>
                            <td>Suresh Kumar</td>
                            <td>
                                <div class="customer-contact">
                                    <span><i class="bi bi-telephone text-muted"></i> +91 98112 33445</span>
                                    <span><i class="bi bi-envelope text-muted"></i> sales@anchor.co.in</span>
                                </div>
                            </td>
                            <td><strong>0 Orders</strong></td>
                            <td>₹4,20,000</td>
                            <td><span class="status-pill blocked">Inactive</span></td>
                            <td>
                                <div class="action-group">
                                    <a href="SupplierDetails.aspx?id=1005" class="btn-icon" title="View Supplier Details"><i class="bi bi-eye"></i></a>
                                    <a href="EditSupplier.aspx?id=1005" class="btn-icon" title="Edit Supplier"><i class="bi bi-pencil"></i></a>
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
