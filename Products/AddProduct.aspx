<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Stock_Forgeeee.Products.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header (Matching Screenshot 5) -->
    <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <h1 style="font-size: 24px; font-weight: 700; color: #111827; margin: 0 0 4px 0;">Add Product</h1>
            <div style="font-size: 13.5px; color: #6B7280;">Add a new hardware product to your inventory.</div>
        </div>
        <div style="display: flex; align-items: center; gap: 10px;">
            <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" style="display: inline-flex; align-items: center; justify-content: center; padding: 8px 18px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">Cancel</a>
            <asp:Button ID="btnSave" runat="server" Text="Save Product" OnClick="btnSave_Click" style="padding: 8px 20px; background: #3DA86F; border: 1px solid #3DA86F; border-radius: 6px; color: #FFFFFF; font-size: 13px; font-weight: 600; cursor: pointer;" />
        </div>
    </div>

    <!-- Alert Feedback -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 12px 16px; border-radius: 6px; margin-bottom: 20px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
        <i class="bi bi-exclamation-triangle-fill"></i>
        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
    </asp:Panel>

    <!-- Main Container Card (Matching Screenshot 5) -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; padding: 28px 32px; margin-bottom: 28px;">
        
        <!-- SECTION 1: Product Information -->
        <div style="margin-bottom: 28px;">
            <h2 style="font-size: 14.5px; font-weight: 700; color: #111827; margin: 0 0 20px 0;">Product Information</h2>

            <!-- Product Image -->
            <div style="margin-bottom: 20px;">
                <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 8px;">Product Image</label>
                <div style="display: flex; align-items: center; gap: 18px;">
                    <div style="width: 72px; height: 72px; border: 1px solid #E5E7EB; border-radius: 8px; background: #F9FAFB; display: flex; align-items: center; justify-content: center; color: #9CA3AF; font-size: 26px;">
                        <i class="bi bi-image"></i>
                    </div>
                    <div>
                        <div style="display: flex; align-items: center; gap: 14px; font-size: 13px; margin-bottom: 4px;">
                            <a href="javascript:void(0)" style="color: #3DA86F; font-weight: 600; text-decoration: none;">Change</a>
                            <a href="javascript:void(0)" style="color: #EF4444; font-weight: 500; text-decoration: none;">Remove</a>
                        </div>
                        <div style="font-size: 12px; color: #9CA3AF;">SVG, PNG, JPG or GIF (max. 800x400px)</div>
                    </div>
                </div>
            </div>

            <!-- Product Name -->
            <div style="margin-bottom: 18px;">
                <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Product Name</label>
                <asp:TextBox ID="txtProductName" runat="server" placeholder="Enter product name" style="width: 100%; height: 40px; padding: 6px 14px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #111827; box-sizing: border-box; outline: none; background: #FFFFFF;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtProductName" ErrorMessage="Product name is required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 12px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
            </div>

            <!-- SKU & Category Row -->
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 18px;">
                <div>
                    <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">SKU</label>
                    <asp:TextBox ID="txtSKU" runat="server" placeholder="Enter SKU" style="width: 100%; height: 40px; padding: 6px 14px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #111827; box-sizing: border-box; outline: none; background: #FFFFFF;"></asp:TextBox>
                    <div style="font-size: 11.5px; color: #9CA3AF; margin-top: 4px;">SKU must be unique.</div>
                    <asp:RequiredFieldValidator ID="rfvSKU" runat="server" ControlToValidate="txtSKU" ErrorMessage="SKU code is required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 12px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Category</label>
                    <asp:DropDownList ID="ddlCategory" runat="server" style="width: 100%; height: 40px; padding: 6px 14px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #374151; box-sizing: border-box; outline: none; background: #FFFFFF;">
                        <asp:ListItem Value="">Select category</asp:ListItem>
                        <asp:ListItem Value="Power Tools">Power Tools</asp:ListItem>
                        <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                        <asp:ListItem Value="Fasteners">Fasteners</asp:ListItem>
                        <asp:ListItem Value="Electrical">Electrical</asp:ListItem>
                        <asp:ListItem Value="Plumbing">Plumbing</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate="ddlCategory" InitialValue="" ErrorMessage="Please select a category." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 12px; margin-top: 4px; display: block;"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Brand -->
            <div style="margin-bottom: 18px;">
                <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Brand</label>
                <asp:TextBox ID="txtBrand" runat="server" placeholder="Enter brand" style="width: 100%; height: 40px; padding: 6px 14px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #111827; box-sizing: border-box; outline: none; background: #FFFFFF;"></asp:TextBox>
            </div>

            <!-- Description -->
            <div>
                <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Description</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" placeholder="Describe the product..." style="width: 100%; padding: 10px 14px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #111827; box-sizing: border-box; outline: none; background: #FFFFFF; line-height: 1.5;"></asp:TextBox>
            </div>
        </div>

        <hr style="border: none; border-top: 1px solid #E5E7EB; margin: 28px 0;" />

        <!-- SECTION 2: Pricing -->
        <div style="margin-bottom: 28px;">
            <h2 style="font-size: 14.5px; font-weight: 700; color: #111827; margin: 0 0 20px 0;">Pricing</h2>

            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px;">
                <div>
                    <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Purchase Price</label>
                    <div style="position: relative;">
                        <span style="position: absolute; left: 14px; top: 50%; transform: translateY(-50%); font-size: 13px; color: #6B7280; font-weight: 500;">₹</span>
                        <asp:TextBox ID="txtPurchasePrice" runat="server" placeholder=".00" style="width: 100%; height: 40px; padding: 6px 14px 6px 30px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #111827; box-sizing: border-box; outline: none; background: #FFFFFF; font-variant-numeric: tabular-nums;"></asp:TextBox>
                    </div>
                </div>

                <div>
                    <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Selling Price</label>
                    <div style="position: relative;">
                        <span style="position: absolute; left: 14px; top: 50%; transform: translateY(-50%); font-size: 13px; color: #6B7280; font-weight: 500;">₹</span>
                        <asp:TextBox ID="txtSellingPrice" runat="server" placeholder=".00" style="width: 100%; height: 40px; padding: 6px 14px 6px 30px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #111827; box-sizing: border-box; outline: none; background: #FFFFFF; font-variant-numeric: tabular-nums;"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>

        <hr style="border: none; border-top: 1px solid #E5E7EB; margin: 28px 0;" />

        <!-- SECTION 3: Inventory -->
        <div style="margin-bottom: 28px;">
            <h2 style="font-size: 14.5px; font-weight: 700; color: #111827; margin: 0 0 20px 0;">Inventory</h2>

            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 18px;">
                <div>
                    <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Opening Stock</label>
                    <asp:TextBox ID="txtInitialStock" runat="server" placeholder="Enter quantity" style="width: 100%; height: 40px; padding: 6px 14px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #111827; box-sizing: border-box; outline: none; background: #FFFFFF; font-variant-numeric: tabular-nums;"></asp:TextBox>
                </div>

                <div>
                    <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Unit</label>
                    <asp:DropDownList ID="ddlUnit" runat="server" style="width: 100%; height: 40px; padding: 6px 14px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #374151; box-sizing: border-box; outline: none; background: #FFFFFF;">
                        <asp:ListItem Value="Piece" Selected="True">Piece</asp:ListItem>
                        <asp:ListItem Value="Box">Box</asp:ListItem>
                        <asp:ListItem Value="Set">Set</asp:ListItem>
                        <asp:ListItem Value="Kg">Kilogram (Kg)</asp:ListItem>
                        <asp:ListItem Value="Meter">Meter (m)</asp:ListItem>
                        <asp:ListItem Value="Roll">Roll</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px;">
                <div>
                    <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Minimum Stock Level</label>
                    <asp:TextBox ID="txtMinStock" runat="server" placeholder="Enter minimum quantity" style="width: 100%; height: 40px; padding: 6px 14px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #111827; box-sizing: border-box; outline: none; background: #FFFFFF; font-variant-numeric: tabular-nums;"></asp:TextBox>
                    <div style="font-size: 11.5px; color: #9CA3AF; margin-top: 4px;">Controls low stock warnings.</div>
                </div>

                <div>
                    <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Maximum Stock Level</label>
                    <asp:TextBox ID="txtMaxStock" runat="server" placeholder="Enter maximum quantity" style="width: 100%; height: 40px; padding: 6px 14px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #111827; box-sizing: border-box; outline: none; background: #FFFFFF; font-variant-numeric: tabular-nums;"></asp:TextBox>
                </div>
            </div>
        </div>

        <hr style="border: none; border-top: 1px solid #E5E7EB; margin: 28px 0;" />

        <!-- SECTION 4: Supplier -->
        <div style="margin-bottom: 32px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
                <h2 style="font-size: 14.5px; font-weight: 700; color: #111827; margin: 0;">Supplier</h2>
                <a href="<%= ResolveUrl("~/Suppliers/AddSupplier.aspx") %>" style="color: #3DA86F; font-size: 13px; font-weight: 600; text-decoration: none;">+ Add Supplier</a>
            </div>

            <div>
                <label style="display: block; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 6px;">Supplier</label>
                <asp:DropDownList ID="ddlSupplier" runat="server" style="width: 100%; height: 40px; padding: 6px 14px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13.5px; color: #374151; box-sizing: border-box; outline: none; background: #FFFFFF;">
                    <asp:ListItem Value="">Select supplier</asp:ListItem>
                    <asp:ListItem Value="ABC Hardware Suppliers">ABC Hardware Suppliers</asp:ListItem>
                    <asp:ListItem Value="Patel Industrial Supply">Patel Industrial Supply</asp:ListItem>
                    <asp:ListItem Value="Global Tools Inc.">Global Tools Inc.</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <hr style="border: none; border-top: 1px solid #E5E7EB; margin: 28px 0;" />

        <!-- Bottom Actions -->
        <div style="display: flex; justify-content: flex-end; align-items: center; gap: 12px;">
            <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" style="display: inline-flex; align-items: center; justify-content: center; padding: 9px 20px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">Cancel</a>
            <asp:Button ID="btnSaveBottom" runat="server" Text="Save Product" OnClick="btnSave_Click" style="padding: 9px 22px; background: #3DA86F; border: 1px solid #3DA86F; border-radius: 6px; color: #FFFFFF; font-size: 13.5px; font-weight: 600; cursor: pointer;" />
        </div>

    </div>
</asp:Content>
