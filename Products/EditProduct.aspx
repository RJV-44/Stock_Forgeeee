<%@ Page Title="Edit Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Stock_Forgeeee.Products.EditProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div style="font-size: 12px; color: #6B7280; margin-bottom: 12px; display: flex; align-items: center; gap: 6px;">
        <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" style="color: #6B7280; text-decoration: none;">Products</a>
        <span style="color: #9CA3AF;">&rsaquo;</span>
        <span style="color: #111827; font-weight: 500;">Edit Product</span>
    </div>

    <!-- Header with Actions -->
    <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <h1 style="font-size: 20px; font-weight: 700; color: #111827; margin: 0 0 4px 0; display: inline-block;">Edit Product</h1>
            <span style="font-size: 13px; color: #6B7280; margin-left: 12px;">Update product information and inventory settings.</span>
        </div>
        <div style="display: flex; align-items: center; gap: 14px;">
            <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" style="font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; padding: 6px 10px;">Cancel</a>
            <asp:LinkButton ID="btnSaveTop" runat="server" OnClick="btnSaveTop_Click" style="display: inline-flex; align-items: center; gap: 6px; font-size: 13px; font-weight: 600; color: #111827; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; padding: 6px 14px; text-decoration: none; cursor: pointer;">
                <i class="bi bi-floppy"></i>
                <span>Save Changes</span>
            </asp:LinkButton>
        </div>
    </div>

    <!-- Alert Feedback -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 10px 14px; border-radius: 6px; margin-bottom: 18px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
        <i class="bi bi-exclamation-triangle-fill"></i>
        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
    </asp:Panel>

    <!-- Hidden Fields for Compatibility -->
    <asp:TextBox ID="txtStockQty" runat="server" Text="12" style="display: none;"></asp:TextBox>
    <asp:TextBox ID="txtReorderLevel" runat="server" Text="20" style="display: none;"></asp:TextBox>

    <!-- 3-Column Figma Layout Grid -->
    <div style="display: grid; grid-template-columns: 240px 1fr 280px; gap: 24px; align-items: start;">
        
        <!-- ================= Column 1: Image & Supplier ================= -->
        <div style="display: flex; flex-direction: column; gap: 24px;">
            <!-- Product Image -->
            <div>
                <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 8px;">
                    <i class="bi bi-image" style="color: #6B7280;"></i>
                    <span>Product Image</span>
                </div>
                <div style="border: 1.5px dashed #CBD5E1; border-radius: 8px; background: #FFFFFF; padding: 24px 16px; display: flex; align-items: center; justify-content: center; min-height: 220px; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
                    <!-- High Quality Vector Art Cordless Drill -->
                    <svg width="160" height="150" viewBox="0 0 160 150" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <!-- Drill Bit -->
                        <rect x="138" y="44" width="20" height="3" fill="#64748B"/>
                        <polygon points="158,42 162,45.5 158,49" fill="#475569"/>
                        <line x1="142" y1="44" x2="140" y2="47" stroke="#334155" stroke-width="1"/>
                        <line x1="147" y1="44" x2="145" y2="47" stroke="#334155" stroke-width="1"/>
                        <line x1="152" y1="44" x2="150" y2="47" stroke="#334155" stroke-width="1"/>
                        <!-- Chuck Head -->
                        <rect x="122" y="38" width="16" height="15" rx="2" fill="#1E293B"/>
                        <rect x="120" y="40" width="3" height="11" fill="#475569"/>
                        <rect x="110" y="34" width="13" height="23" rx="2" fill="#334155"/>
                        <!-- Torque Ring -->
                        <rect x="100" y="32" width="11" height="27" rx="2" fill="#475569"/>
                        <line x1="103" y1="34" x2="103" y2="57" stroke="#F97316" stroke-width="1.5"/>
                        <!-- Drill Body Housing (Dark Gray + Orange Accent) -->
                        <path d="M 46 32 C 46 32, 60 28, 86 28 C 96 28, 100 32, 100 45 C 100 58, 96 62, 86 62 C 72 62, 60 60, 48 54 Z" fill="#1E293B"/>
                        <!-- Ventilation Slots -->
                        <line x1="56" y1="36" x2="68" y2="36" stroke="#475569" stroke-width="2" stroke-linecap="round"/>
                        <line x1="56" y1="41" x2="72" y2="41" stroke="#475569" stroke-width="2" stroke-linecap="round"/>
                        <line x1="56" y1="46" x2="68" y2="46" stroke="#475569" stroke-width="2" stroke-linecap="round"/>
                        <!-- Orange Accent Band -->
                        <path d="M 66 54 L 72 54 L 70 66 L 64 66 Z" fill="#EA580C"/>
                        <!-- Grip Handle -->
                        <path d="M 52 54 C 52 54, 56 68, 60 90 C 64 105, 68 116, 70 120 L 52 120 C 50 115, 46 102, 42 86 C 40 74, 40 60, 46 54 Z" fill="#334155"/>
                        <!-- Rubber Overmold Grip -->
                        <path d="M 50 70 C 50 70, 54 84, 58 102 L 64 102 C 60 84, 56 70, 56 70 Z" fill="#1E293B"/>
                        <!-- Trigger Switch -->
                        <path d="M 64 68 C 64 68, 70 70, 70 76 C 70 80, 65 82, 65 82 Z" fill="#EA580C"/>
                        <!-- Battery Base Pack -->
                        <rect x="40" y="118" width="46" height="18" rx="4" fill="#0F172A"/>
                        <rect x="42" y="132" width="42" height="4" rx="1" fill="#EA580C"/>
                    </svg>
                </div>
            </div>

            <!-- Supplier -->
            <div>
                <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 8px;">
                    <i class="bi bi-truck" style="color: #6B7280;"></i>
                    <span>Supplier</span>
                </div>
                <div>
                    <label style="display: block; font-size: 11px; color: #6B7280; margin-bottom: 4px;">Supplier Entity</label>
                    <asp:DropDownList ID="ddlSupplier" runat="server" style="width: 100%; height: 36px; padding: 6px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;">
                        <asp:ListItem Value="Hardware Corp" Selected="True">Hardware Corp</asp:ListItem>
                        <asp:ListItem Value="ABC Hardware Suppliers">ABC Hardware Suppliers</asp:ListItem>
                        <asp:ListItem Value="Apex Tools Industrial">Apex Tools Industrial</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <!-- ================= Column 2: Product Information ================= -->
        <div style="display: flex; flex-direction: column; gap: 16px;">
            <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 2px;">
                <i class="bi bi-info-circle" style="color: #6B7280;"></i>
                <span>Product Information</span>
            </div>

            <!-- Product Name -->
            <div>
                <label style="display: block; font-size: 11.5px; font-weight: 500; color: #374151; margin-bottom: 4px;">Product Name</label>
                <asp:TextBox ID="txtProductName" runat="server" Text="Wireless Drill Pro" style="width: 100%; height: 36px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvProductName" runat="server" ControlToValidate="txtProductName" ErrorMessage="Product name is required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11px; margin-top: 3px; display: block;"></asp:RequiredFieldValidator>
            </div>

            <!-- SKU & Brand (2 columns) -->
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px;">
                <div>
                    <label style="display: block; font-size: 11.5px; font-weight: 500; color: #374151; margin-bottom: 4px;">SKU</label>
                    <div style="position: relative; display: flex; align-items: center;">
                        <asp:TextBox ID="txtSKU" runat="server" Text="DRL-W-101" style="width: 100%; height: 36px; padding: 6px 32px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        <i class="bi bi-lock" style="position: absolute; right: 10px; color: #9CA3AF; font-size: 13px;"></i>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvSKU" runat="server" ControlToValidate="txtSKU" ErrorMessage="SKU is required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11px; margin-top: 3px; display: block;"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <label style="display: block; font-size: 11.5px; font-weight: 500; color: #374151; margin-bottom: 4px;">Brand</label>
                    <asp:TextBox ID="txtBrand" runat="server" Text="Hardware Corp" style="width: 100%; height: 36px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                </div>
            </div>

            <!-- Category -->
            <div>
                <label style="display: block; font-size: 11.5px; font-weight: 500; color: #374151; margin-bottom: 4px;">Category</label>
                <asp:DropDownList ID="ddlCategory" runat="server" style="width: 100%; max-width: 240px; height: 36px; padding: 6px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none;">
                    <asp:ListItem Value="Power Tools" Selected="True">Power Tools</asp:ListItem>
                    <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                    <asp:ListItem Value="Fasteners">Fasteners & Screws</asp:ListItem>
                    <asp:ListItem Value="Electrical">Electrical Supplies</asp:ListItem>
                </asp:DropDownList>
            </div>

            <!-- Description -->
            <div>
                <label style="display: block; font-size: 11.5px; font-weight: 500; color: #374151; margin-bottom: 4px;">Description</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="5" Text="High-performance cordless drill with variable speed settings and an ergonomic grip designed for continuous industrial use. Includes dual lithium-ion batteries." style="width: 100%; padding: 10px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; line-height: 1.6; outline: none;"></asp:TextBox>
            </div>
        </div>

        <!-- ================= Column 3: Pricing & Inventory ================= -->
        <div style="display: flex; flex-direction: column; gap: 24px;">
            <!-- Pricing Section -->
            <div>
                <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 8px;">
                    <i class="bi bi-tag" style="color: #6B7280;"></i>
                    <span>Pricing</span>
                </div>

                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 10px; margin-bottom: 12px;">
                    <div>
                        <label style="display: block; font-size: 11px; color: #6B7280; margin-bottom: 4px;">Purchase Price</label>
                        <div style="position: relative; display: flex; align-items: center;">
                            <span style="position: absolute; left: 8px; font-size: 12px; color: #6B7280;">₹</span>
                            <asp:TextBox ID="txtPurchasePrice" runat="server" Text="1,250.00" style="width: 100%; height: 34px; padding: 4px 6px 4px 20px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvPurchasePrice" runat="server" ControlToValidate="txtPurchasePrice" ErrorMessage="Purchase price required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11px; margin-top: 3px; display: block;"></asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <label style="display: block; font-size: 11px; color: #6B7280; margin-bottom: 4px;">Selling Price</label>
                        <div style="position: relative; display: flex; align-items: center;">
                            <span style="position: absolute; left: 8px; font-size: 12px; color: #15803D; font-weight: 600;">₹</span>
                            <asp:TextBox ID="txtSellingPrice" runat="server" Text="1,499.00" style="width: 100%; height: 34px; padding: 4px 6px 4px 20px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12px; color: #15803D; font-weight: 600; background: #FFFFFF; outline: none;"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvSellingPrice" runat="server" ControlToValidate="txtSellingPrice" ErrorMessage="Selling price required." EnableClientScript="false" ForeColor="#DC2626" Display="Dynamic" style="font-size: 11px; margin-top: 3px; display: block;"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center; padding: 8px 12px; background: #F8FAFC; border: 1px solid #E2E8F0; border-radius: 6px;">
                    <span style="font-size: 11.5px; color: #4B5563;">Calculated Margin</span>
                    <span style="font-size: 11px; font-weight: 700; color: #15803D; background: #DCFCE7; padding: 2px 8px; border-radius: 4px;">16.6%</span>
                </div>
            </div>

            <!-- Inventory Section -->
            <div>
                <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; font-weight: 600; color: #374151; margin-bottom: 8px;">
                    <i class="bi bi-box-seam" style="color: #6B7280;"></i>
                    <span>Inventory</span>
                </div>

                <!-- Current Stock Card -->
                <div style="background: #F8FAFC; border: 1px solid #E2E8F0; border-radius: 8px; padding: 12px; margin-bottom: 12px;">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 6px;">
                        <span style="font-size: 11px; color: #6B7280;">Current Stock</span>
                        <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="display: inline-flex; align-items: center; gap: 4px; font-size: 11px; color: #4B5563; text-decoration: none; font-weight: 500;">
                            <i class="bi bi-sliders"></i>
                            <span>Adjust</span>
                        </a>
                    </div>
                    <div style="font-size: 20px; font-weight: 700; color: #111827; margin-bottom: 6px;">
                        12 <span style="font-size: 12px; font-weight: 400; color: #6B7280;">Units</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 4px; font-size: 10.5px; color: #6B7280;">
                        <i class="bi bi-info-circle"></i>
                        <span>Use Stock Adjustment to change.</span>
                    </div>
                </div>

                <!-- Min / Max Stock (2 columns) -->
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 10px; margin-bottom: 12px;">
                    <div>
                        <label style="display: block; font-size: 11px; color: #6B7280; margin-bottom: 4px;">Min. Stock</label>
                        <asp:TextBox ID="txtMinStock" runat="server" Text="20" style="width: 100%; height: 34px; padding: 4px 8px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                    </div>

                    <div>
                        <label style="display: block; font-size: 11px; color: #6B7280; margin-bottom: 4px;">Max. Stock</label>
                        <asp:TextBox ID="txtMaxStock" runat="server" Text="50" style="width: 100%; height: 34px; padding: 4px 8px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12px; color: #111827; background: #FFFFFF; outline: none;"></asp:TextBox>
                    </div>
                </div>

                <!-- Measurement Unit -->
                <div>
                    <label style="display: block; font-size: 11px; color: #6B7280; margin-bottom: 4px;">Measurement Unit</label>
                    <asp:DropDownList ID="ddlUnit" runat="server" style="width: 100%; height: 34px; padding: 4px 8px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12px; color: #111827; background: #FFFFFF; outline: none;">
                        <asp:ListItem Value="Piece" Selected="True">Piece</asp:ListItem>
                        <asp:ListItem Value="Box">Box</asp:ListItem>
                        <asp:ListItem Value="Set">Set</asp:ListItem>
                        <asp:ListItem Value="Roll">Roll</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
    </div>

    <!-- Hidden Submit Button for Server PostBack -->
    <asp:Button ID="btnUpdateProduct" runat="server" Text="Save Product" OnClick="btnUpdateProduct_Click" style="display: none;" />
</asp:Content>
