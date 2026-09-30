<%@ Page Title="Edit Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Stock_Forgeeee.Products.EditProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Edit Product</h1>
            <div class="page-subtitle">Update product details, pricing, and inventory settings.</div>
        </div>
        <div class="page-actions">
            <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=101") %>" class="btn-secondary">
                <i class="bi bi-arrow-left"></i> Back to Details
            </a>
        </div>
    </div>

    <div class="card" style="max-width: 980px;">
        <div class="card-body">
            <div class="adjustment-form">
                <div class="form-group">
                    <label class="form-label">Product Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" Text="Bosch GSB 500W Impact Drill"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">SKU / Part Number <span class="required">*</span></label>
                    <asp:TextBox ID="txtSKU" runat="server" CssClass="form-control" Text="HW-BSH-500"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Category <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Power Tools" Selected="True">Power Tools</asp:ListItem>
                        <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                        <asp:ListItem Value="Fasteners">Fasteners</asp:ListItem>
                        <asp:ListItem Value="Electrical">Electrical</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Unit of Measure</label>
                    <asp:DropDownList ID="ddlUnit" runat="server" CssClass="form-select">
                        <asp:ListItem Value="Piece" Selected="True">Piece</asp:ListItem>
                        <asp:ListItem Value="Box">Box</asp:ListItem>
                        <asp:ListItem Value="Set">Set</asp:ListItem>
                        <asp:ListItem Value="Roll">Roll</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Purchase Price (₹)</label>
                    <asp:TextBox ID="txtPurchasePrice" runat="server" CssClass="form-control" Text="₹3,200"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Selling Price (₹)</label>
                    <asp:TextBox ID="txtSellingPrice" runat="server" CssClass="form-control" Text="₹4,150"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Current Stock</label>
                    <asp:TextBox ID="txtStockQty" runat="server" CssClass="form-control" Text="3"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Reorder Level</label>
                    <asp:TextBox ID="txtReorderLevel" runat="server" CssClass="form-control" Text="12"></asp:TextBox>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" Text="Heavy-duty impact drill for masonry, metal, and woodwork. Ideal for installation and construction jobs."></asp:TextBox>
                </div>
            </div>

            <div class="d-flex gap-2 pt-3 border-top mt-2">
                <asp:Button ID="btnUpdateProduct" runat="server" Text="Update Product" CssClass="btn-primary" />
                <a href="ProductList.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>
