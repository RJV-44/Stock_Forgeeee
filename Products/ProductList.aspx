<%@ Page Title="Product Catalog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Stock_Forgeeee.Products.ProductList" %>
<%@ Register Src="~/Controls/Pagination.ascx" TagPrefix="uc" TagName="Pagination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Product Inventory</h1>
            <div class="page-subtitle">Manage and track hardware items, stock levels, categories, and prices.</div>
        </div>
        <div>
            <a href="<%= ResolveUrl("~/Products/AddProduct.aspx") %>" class="btn-primary">
                <i class="bi bi-plus-lg"></i> Add New Product
            </a>
        </div>
    </div>

    <!-- Filter & Search Bar -->
    <div class="card">
        <div class="card-body">
            <div class="filter-bar">
                <div class="search-box">
                    <i class="bi bi-search search-icon"></i>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search by SKU, product name, or category..."></asp:TextBox>
                </div>
                <div style="width: 180px;">
                    <asp:DropDownList ID="ddlCategoryFilter" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">All Categories</asp:ListItem>
                        <asp:ListItem Value="Power Tools">Power Tools</asp:ListItem>
                        <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                        <asp:ListItem Value="Fasteners">Fasteners &amp; Screws</asp:ListItem>
                        <asp:ListItem Value="Electrical">Electrical Supplies</asp:ListItem>
                        <asp:ListItem Value="Plumbing">Plumbing Fittings</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div style="width: 160px;">
                    <asp:DropDownList ID="ddlStockStatus" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">All Stock Status</asp:ListItem>
                        <asp:ListItem Value="InStock">In Stock</asp:ListItem>
                        <asp:ListItem Value="LowStock">Low Stock Alert</asp:ListItem>
                        <asp:ListItem Value="OutOfStock">Out of Stock</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:Button ID="btnFilter" runat="server" Text="Apply Filter" CssClass="btn-secondary" />
            </div>

            <!-- Product Table -->
            <div class="table-wrapper">
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>SKU Code</th>
                            <th>Category ID</th>
                            <th>Cost Price</th>
                            <th>Selling Price</th>
                            <th>Reorder Level</th>
                            <th>Status</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptProducts" runat="server">
                            <ItemTemplate>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center gap-3">
                                    <div class="bg-light p-2 rounded" style="width: 40px; height: 40px; display:flex; align-items:center; justify-content:center;">
                                        <i class="bi bi-tools text-primary" style="font-size: 20px;"></i>
                                    </div>
                                    <div>
                                        <a href='ProductDetails.aspx?id=<%#: Eval("ProductId") %>' class="font-weight-bold text-dark"><%#: Eval("ProductName") %></a>
                                        <div class="small-text text-secondary"><%#: Eval("Description") %></div>
                                    </div>
                                </div>
                            </td>
                            <td><code><%#: Eval("Sku") %></code></td>
                            <td><%#: Eval("CategoryId") %></td>
                            <td>₹<%#: Eval("CostPrice", "{0:N2}") %></td>
                            <td><strong>₹<%#: Eval("UnitPrice", "{0:N2}") %></strong></td>
                            <td><span class="badge badge-warning"><%#: Eval("ReorderLevel") %></span></td>
                            <td><span class='<%# Convert.ToBoolean(Eval("IsActive")) ? "badge badge-success" : "badge badge-secondary" %>'><%#: Convert.ToBoolean(Eval("IsActive")) ? "Active" : "Inactive" %></span></td>
                            <td class="text-end">
                                <a href='ProductDetails.aspx?id=<%#: Eval("ProductId") %>' class="btn-icon" title="View Details"><i class="bi bi-eye"></i></a>
                                <a href='EditProduct.aspx?id=<%#: Eval("ProductId") %>' class="btn-icon text-primary" title="Edit"><i class="bi bi-pencil"></i></a>
                            </td>
                        </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
            <asp:Panel ID="pnlNoProducts" runat="server" CssClass="small-text text-secondary" Visible="false">
                No products were found.
            </asp:Panel>

            <!-- Pagination User Control -->
            <uc:Pagination runat="server" ID="PaginationControl" />
        </div>
    </div>
</asp:Content>
