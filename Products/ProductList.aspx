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
                            <th>Category</th>
                            <th>Purchase Price</th>
                            <th>Selling Price</th>
                            <th>Stock Qty</th>
                            <th>Status</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center gap-3">
                                    <div class="bg-light p-2 rounded" style="width: 40px; height: 40px; display:flex; align-items:center; justify-content:center;">
                                        <i class="bi bi-tools text-primary" style="font-size: 20px;"></i>
                                    </div>
                                    <div>
                                        <a href="ProductDetails.aspx?id=101" class="font-weight-bold text-dark">Bosch GSB 500W Impact Drill</a>
                                        <div class="small-text text-secondary">Unit: Piece</div>
                                    </div>
                                </div>
                            </td>
                            <td><code>HW-BSH-500</code></td>
                            <td>Power Tools</td>
                            <td>₹3,200</td>
                            <td><strong>₹4,150</strong></td>
                            <td><span class="badge badge-danger">3 Pcs</span></td>
                            <td><span class="badge badge-danger">Low Stock</span></td>
                            <td class="text-end">
                                <a href="ProductDetails.aspx?id=101" class="btn-icon" title="View Details"><i class="bi bi-eye"></i></a>
                                <a href="EditProduct.aspx?id=101" class="btn-icon text-primary" title="Edit"><i class="bi bi-pencil"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center gap-3">
                                    <div class="bg-light p-2 rounded" style="width: 40px; height: 40px; display:flex; align-items:center; justify-content:center;">
                                        <i class="bi bi-wrench text-success" style="font-size: 20px;"></i>
                                    </div>
                                    <div>
                                        <a href="ProductDetails.aspx?id=102" class="font-weight-bold text-dark">Stanley Heavy Duty Claw Hammer</a>
                                        <div class="small-text text-secondary">Unit: Piece</div>
                                    </div>
                                </div>
                            </td>
                            <td><code>HW-STN-021</code></td>
                            <td>Hand Tools</td>
                            <td>₹450</td>
                            <td><strong>₹680</strong></td>
                            <td><span class="badge badge-warning">5 Pcs</span></td>
                            <td><span class="badge badge-warning">Low Stock</span></td>
                            <td class="text-end">
                                <a href="ProductDetails.aspx?id=102" class="btn-icon" title="View Details"><i class="bi bi-eye"></i></a>
                                <a href="EditProduct.aspx?id=102" class="btn-icon text-primary" title="Edit"><i class="bi bi-pencil"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center gap-3">
                                    <div class="bg-light p-2 rounded" style="width: 40px; height: 40px; display:flex; align-items:center; justify-content:center;">
                                        <i class="bi bi-box-seam text-info" style="font-size: 20px;"></i>
                                    </div>
                                    <div>
                                        <a href="ProductDetails.aspx?id=103" class="font-weight-bold text-dark">Stainless Steel Hinges 4-inch (Pack of 10)</a>
                                        <div class="small-text text-secondary">Unit: Box</div>
                                    </div>
                                </div>
                            </td>
                            <td><code>HW-HNG-401</code></td>
                            <td>Fasteners & Screws</td>
                            <td>₹850</td>
                            <td><strong>₹1,200</strong></td>
                            <td><span class="badge badge-success">120 Boxes</span></td>
                            <td><span class="badge badge-success">In Stock</span></td>
                            <td class="text-end">
                                <a href="ProductDetails.aspx?id=103" class="btn-icon" title="View Details"><i class="bi bi-eye"></i></a>
                                <a href="EditProduct.aspx?id=103" class="btn-icon text-primary" title="Edit"><i class="bi bi-pencil"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center gap-3">
                                    <div class="bg-light p-2 rounded" style="width: 40px; height: 40px; display:flex; align-items:center; justify-content:center;">
                                        <i class="bi bi-plug text-warning" style="font-size: 20px;"></i>
                                    </div>
                                    <div>
                                        <a href="ProductDetails.aspx?id=104" class="font-weight-bold text-dark">Finolex Copper Wire 1.5 sq mm (90m Roll)</a>
                                        <div class="small-text text-secondary">Unit: Roll</div>
                                    </div>
                                </div>
                            </td>
                            <td><code>HW-FNX-150</code></td>
                            <td>Electrical Supplies</td>
                            <td>₹1,400</td>
                            <td><strong>₹1,850</strong></td>
                            <td><span class="badge badge-success">45 Rolls</span></td>
                            <td><span class="badge badge-success">In Stock</span></td>
                            <td class="text-end">
                                <a href="ProductDetails.aspx?id=104" class="btn-icon" title="View Details"><i class="bi bi-eye"></i></a>
                                <a href="EditProduct.aspx?id=104" class="btn-icon text-primary" title="Edit"><i class="bi bi-pencil"></i></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Pagination User Control -->
            <uc:Pagination runat="server" ID="PaginationControl" />
        </div>
    </div>
</asp:Content>
