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
            <!-- Server-Side Alert Feedback Panel -->
            <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="val-alert val-alert-danger">
                <i class="bi bi-exclamation-triangle-fill"></i>
                <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
            </asp:Panel>

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
                    <asp:RegularExpressionValidator ID="revSKU" runat="server" ControlToValidate="txtSKU" ValidationExpression="^[a-zA-Z0-9_\-]+$" ErrorMessage="SKU must be alphanumeric (hyphens/underscores allowed)." CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="row" style="display: flex; flex-wrap: wrap; gap: 20px;">
                <!-- Category -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Category <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">Select Category</asp:ListItem>
                        <asp:ListItem Value="Power Tools">Power Tools</asp:ListItem>
                        <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                        <asp:ListItem Value="Fasteners">Fasteners &amp; Screws</asp:ListItem>
                        <asp:ListItem Value="Electrical">Electrical Supplies</asp:ListItem>
                        <asp:ListItem Value="Plumbing">Plumbing Fittings</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate="ddlCategory" InitialValue="" ErrorMessage="Please select a category." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>

                <!-- Unit of Measurement -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Unit of Measure <span class="required">*</span></label>
                    <asp:DropDownList ID="ddlUnit" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">Select Unit</asp:ListItem>
                        <asp:ListItem Value="Piece">Piece (Pcs)</asp:ListItem>
                        <asp:ListItem Value="Box">Box</asp:ListItem>
                        <asp:ListItem Value="Set">Set</asp:ListItem>
                        <asp:ListItem Value="Kg">Kilogram (Kg)</asp:ListItem>
                        <asp:ListItem Value="Meter">Meter (m)</asp:ListItem>
                        <asp:ListItem Value="Roll">Roll</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvUnit" runat="server" ControlToValidate="ddlUnit" InitialValue="" ErrorMessage="Please select a unit of measure." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row" style="display: flex; flex-wrap: wrap; gap: 20px;">
                <!-- Purchase Price (INR) -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Purchase Price (₹ INR) <span class="required">*</span></label>
                    <asp:TextBox ID="txtPurchasePrice" runat="server" CssClass="form-control" placeholder="0.00"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPurchasePrice" runat="server" ControlToValidate="txtPurchasePrice" ErrorMessage="Purchase price is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPurchasePrice" runat="server" ControlToValidate="txtPurchasePrice" Operator="DataTypeCheck" Type="Double" ErrorMessage="Enter a valid numeric purchase price." CssClass="validation-error" Display="Dynamic"></asp:CompareValidator>
                </div>

                <!-- Selling Price (INR) -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Selling Price (₹ INR) <span class="required">*</span></label>
                    <asp:TextBox ID="txtSellingPrice" runat="server" CssClass="form-control" placeholder="0.00"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSellingPrice" runat="server" ControlToValidate="txtSellingPrice" ErrorMessage="Selling price is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvSellingPrice" runat="server" ControlToValidate="txtSellingPrice" Operator="DataTypeCheck" Type="Double" ErrorMessage="Enter a valid numeric selling price." CssClass="validation-error" Display="Dynamic"></asp:CompareValidator>
                </div>

                <!-- Initial Stock -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Initial Stock Quantity <span class="required">*</span></label>
                    <asp:TextBox ID="txtInitialStock" runat="server" CssClass="form-control" placeholder="0"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInitialStock" runat="server" ControlToValidate="txtInitialStock" ErrorMessage="Initial stock quantity is required." CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvInitialStock" runat="server" ControlToValidate="txtInitialStock" Operator="DataTypeCheck" Type="Integer" ErrorMessage="Enter a valid integer quantity." CssClass="validation-error" Display="Dynamic"></asp:CompareValidator>
                </div>
            </div>

            <div class="row" style="display: flex; flex-wrap: wrap; gap: 20px;">
                <!-- Min Reorder Level -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Minimum Stock Alert Level</label>
                    <asp:TextBox ID="txtMinStock" runat="server" CssClass="form-control" placeholder="e.g. 5"></asp:TextBox>
                    <asp:CompareValidator ID="cvMinStock" runat="server" ControlToValidate="txtMinStock" Operator="DataTypeCheck" Type="Integer" ErrorMessage="Enter a valid integer reorder level." CssClass="validation-error" Display="Dynamic"></asp:CompareValidator>
                </div>

                <!-- Supplier -->
                <div style="flex: 1; min-width: 200px;" class="form-group">
                    <label class="form-label">Primary Supplier</label>
                    <asp:DropDownList ID="ddlSupplier" runat="server" CssClass="form-select">
                        <asp:ListItem Value="">Select Primary Supplier</asp:ListItem>
                        <asp:ListItem Value="1">National Hardware Distributors</asp:ListItem>
                        <asp:ListItem Value="2">Bosch India Power Tools Ltd</asp:ListItem>
                        <asp:ListItem Value="3">Stanley Black &amp; Decker India</asp:ListItem>
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
