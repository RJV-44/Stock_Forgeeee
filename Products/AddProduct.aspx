<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Stock_Forgeeee.Products.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <div>
            <h1 class="page-title">Add New Product</h1>
            <div class="page-subtitle">Register a new hardware item in the inventory database.</div>
        </div>
        <div>
            <a href="ProductList.aspx" class="btn-secondary"><i class="bi bi-arrow-left"></i> Back to Product List</a>
        </div>
    </div>

    <div class="card" style="max-width: 860px;">
        <div class="card-body">
            <div class="row" style="display: flex; flex-wrap: wrap; gap: 20px;">
                <!-- Product Name -->
                <div style="flex: 1; min-width: 300px;" class="form-group">
                    <label class="form-label">Product Name <span class="required">*</span></label>
                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" placeholder="e.g. Bosch GSB 500W Impact Drill"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtProductName" ErrorMessage="Product name is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>

                <!-- SKU Code -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">SKU Code / Part Number <span class="required">*</span></label>
                    <asp:TextBox ID="txtSKU" runat="server" CssClass="form-control" placeholder="e.g. HW-BSH-500"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSKU" runat="server" ControlToValidate="txtSKU" ErrorMessage="SKU code is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row" style="display: flex; flex-wrap: wrap; gap: 20px;">
                <!-- Category -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Category <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                        <option value="">Select Category</option>
                        <option value="Power Tools">Power Tools</option>
                        <option value="Hand Tools">Hand Tools</option>
                        <option value="Fasteners">Fasteners & Screws</option>
                        <option value="Electrical">Electrical Supplies</option>
                        <option value="Plumbing">Plumbing Fittings</option>
                    </asp:DropDownList>
                </div>

                <!-- Unit of Measurement -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Unit of Measure <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlUnit" runat="server" CssClass="form-select">
                        <option value="Piece">Piece (Pcs)</option>
                        <option value="Box">Box</option>
                        <option value="Set">Set</option>
                        <option value="Kg">Kilogram (Kg)</option>
                        <option value="Meter">Meter (m)</option>
                        <option value="Roll">Roll</option>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="row" style="display: flex; flex-wrap: wrap; gap: 20px;">
                <!-- Purchase Price (INR) -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Purchase Price (₹ INR) <span class="required">*</span></label>
                    <asp:TextBox ID="txtPurchasePrice" runat="server" CssClass="form-control" placeholder="0.00"></asp:TextBox>
                </div>

                <!-- Selling Price (INR) -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Selling Price (₹ INR) <span class="required">*</span></label>
                    <asp:TextBox ID="txtSellingPrice" runat="server" CssClass="form-control" placeholder="0.00"></asp:TextBox>
                </div>

                <!-- Initial Stock -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Initial Stock Quantity <span class="required">*</span></label>
                    <asp:TextBox ID="txtInitialStock" runat="server" CssClass="form-control" placeholder="0"></asp:TextBox>
                </div>
            </div>

            <div class="row" style="display: flex; flex-wrap: wrap; gap: 20px;">
                <!-- Min Reorder Level -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Minimum Stock Alert Level</label>
                    <asp:TextBox ID="txtMinStock" runat="server" CssClass="form-control" placeholder="e.g. 5"></asp:TextBox>
                </div>

                <!-- Supplier -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Primary Supplier</label>
                    <asp:DropDownList ID="ddlSupplier" runat="server" CssClass="form-select">
                        <option value="">Select Primary Supplier</option>
                        <option value="1">National Hardware Distributors</option>
                        <option value="2">Bosch India Power Tools Ltd</option>
                        <option value="3">Stanley Black & Decker India</option>
                    </asp:DropDownList>
                </div>
            </div>

            <!-- Description -->
            <div class="form-group">
                <label class="form-label">Product Description / Notes</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Enter product specifications, warranty information, etc."></asp:TextBox>
            </div>

            <div class="d-flex gap-2 pt-3 border-top">
                <asp:Button ID="btnSave" runat="server" Text="Save Product" CssClass="btn-primary" OnClick="btnSave_Click" />
                <a href="ProductList.aspx" class="btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</asp:Content>
