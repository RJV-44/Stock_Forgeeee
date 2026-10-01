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
            <asp:ValidationSummary ID="valProduct" runat="server" ValidationGroup="ProductForm" CssClass="alert alert-danger" HeaderText="Please correct the following errors:" DisplayMode="BulletList" EnableClientScript="false" />
            <div class="adjustment-form">
                <div class="form-group">
                    <label class="form-label">Product Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" MaxLength="120" Text="Bosch GSB 500W Impact Drill"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtProductName" ErrorMessage="Product name is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revProductName" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtProductName" ValidationExpression="^(?=.*\S)[\s\S]{2,120}$" ErrorMessage="Product name must be 2 to 120 characters and cannot be blank." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">SKU / Part Number <span class="required">*</span></label>
                    <asp:TextBox ID="txtSKU" runat="server" CssClass="form-control" MaxLength="40" Text="HW-BSH-500"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSKU" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtSKU" ErrorMessage="SKU code is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revSKU" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtSKU" ValidationExpression="^[A-Za-z0-9][A-Za-z0-9._/-]{1,39}$" ErrorMessage="SKU must be 2 to 40 letters, numbers, periods, underscores, hyphens, or slashes." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Category <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">Select Category</asp:ListItem>
                        <asp:ListItem Value="Power Tools">Power Tools</asp:ListItem>
                        <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                        <asp:ListItem Value="Fasteners">Fasteners</asp:ListItem>
                        <asp:ListItem Value="Electrical">Electrical</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ValidationGroup="ProductForm" ControlToValidate="ddlCategory" InitialValue="" ErrorMessage="Product category is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
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
                    <label class="form-label">Purchase Price (₹) <span class="required">*</span></label>
                    <asp:TextBox ID="txtPurchasePrice" runat="server" CssClass="form-control" Text="3200"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPurchasePrice" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtPurchasePrice" ErrorMessage="Purchase price is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPurchasePrice" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtPurchasePrice" ValidationExpression="^(0|[1-9][0-9]{0,8})(\.[0-9]{1,2})?$" ErrorMessage="Purchase price must be a non-negative amount with up to 2 decimal places." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Selling Price (₹) <span class="required">*</span></label>
                    <asp:TextBox ID="txtSellingPrice" runat="server" CssClass="form-control" Text="4150"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSellingPrice" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtSellingPrice" ErrorMessage="Selling price is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revSellingPrice" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtSellingPrice" ValidationExpression="^(0|[1-9][0-9]{0,8})(\.[0-9]{1,2})?$" ErrorMessage="Selling price must be a non-negative amount with up to 2 decimal places." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Current Stock <span class="required">*</span></label>
                    <asp:TextBox ID="txtStockQty" runat="server" CssClass="form-control" Text="3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStockQty" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtStockQty" ErrorMessage="Current stock is required." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revStockQty" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtStockQty" ValidationExpression="^(0|[1-9][0-9]{0,8})$" ErrorMessage="Current stock must be a non-negative whole number." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label class="form-label">Reorder Level</label>
                    <asp:TextBox ID="txtReorderLevel" runat="server" CssClass="form-control" Text="12"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revReorderLevel" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtReorderLevel" ValidationExpression="^(0|[1-9][0-9]{0,8})$" ErrorMessage="Reorder level must be a non-negative whole number." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group full-width">
                    <label class="form-label">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" MaxLength="1000" CssClass="form-control" Text="Heavy-duty impact drill for masonry, metal, and woodwork. Ideal for installation and construction jobs."></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revDescription" runat="server" ValidationGroup="ProductForm" ControlToValidate="txtDescription" ValidationExpression="^[\s\S]{0,1000}$" ErrorMessage="Product description cannot exceed 1000 characters." CssClass="validation-error" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="d-flex gap-2 pt-3 border-top mt-2">
                <asp:Button ID="btnUpdateProduct" runat="server" Text="Update Product" CssClass="btn-primary" ValidationGroup="ProductForm" OnClick="btnUpdateProduct_Click" />
                <a href="ProductList.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>
