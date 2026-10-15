<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Stock_Forgeeee.Products.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 1360px; margin: 0 auto;">
        
        <!-- 4 Stat Cards Row (Matching Figma Screenshot 1) -->
        <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 20px;">
            <!-- Card 1: TOTAL PRODUCTS -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px; display: flex; justify-content: space-between; align-items: flex-start;">
                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">TOTAL PRODUCTS</div>
                    <div style="font-size: 28px; font-weight: 700; color: #111827; margin-top: 6px; line-height: 1.1;">248</div>
                </div>
                <div style="color: #9CA3AF; font-size: 20px; margin-top: 2px;">
                    <i class="bi bi-box"></i>
                </div>
            </div>

            <!-- Card 2: TOTAL UNITS -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px; display: flex; justify-content: space-between; align-items: flex-start;">
                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">TOTAL UNITS</div>
                    <div style="font-size: 28px; font-weight: 700; color: #111827; margin-top: 6px; line-height: 1.1; font-variant-numeric: tabular-nums;">8,420</div>
                </div>
                <div style="color: #9CA3AF; font-size: 20px; margin-top: 2px;">
                    <i class="bi bi-layers"></i>
                </div>
            </div>

            <!-- Card 3: LOW STOCK -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px; display: flex; justify-content: space-between; align-items: flex-start;">
                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">LOW STOCK</div>
                    <div style="font-size: 28px; font-weight: 700; color: #DC2626; margin-top: 6px; line-height: 1.1;">18</div>
                </div>
                <div style="color: #DC2626; font-size: 20px; margin-top: 2px;">
                    <i class="bi bi-exclamation-triangle"></i>
                </div>
            </div>

            <!-- Card 4: OUT OF STOCK -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px; display: flex; justify-content: space-between; align-items: flex-start;">
                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">OUT OF STOCK</div>
                    <div style="font-size: 28px; font-weight: 700; color: #111827; margin-top: 6px; line-height: 1.1;">6</div>
                </div>
                <div style="color: #9CA3AF; font-size: 20px; margin-top: 2px;">
                    <i class="bi bi-cart3"></i>
                </div>
            </div>
        </div>

        <!-- Filter Row & Needs Attention Alert (Matching Figma Screenshot 1) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px 8px 0 0; padding: 12px 16px; display: flex; align-items: center; justify-content: space-between; gap: 12px; flex-wrap: wrap; border-bottom: 1px solid #E5E7EB;">
            <!-- Left Filter Elements -->
            <div style="display: flex; align-items: center; gap: 10px; flex: 1; flex-wrap: wrap;">
                <!-- Search Box -->
                <div style="position: relative; width: 220px;">
                    <i class="bi bi-search" style="position: absolute; left: 10px; top: 50%; transform: translateY(-50%); color: #9CA3AF; font-size: 12.5px;"></i>
                    <input type="text" id="prodSearchInput" onkeyup="filterProductsTable()" placeholder="Search product or SKU..." style="width: 100%; height: 34px; padding: 4px 10px 4px 30px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box;" />
                </div>

                <!-- Category Dropdown -->
                <div style="position: relative;">
                    <select id="prodCategoryFilter" onchange="filterProductsTable()" style="height: 34px; padding: 4px 26px 4px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #374151; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                        <option value="">Category</option>
                        <option value="Mechanical">Mechanical</option>
                        <option value="Fasteners">Fasteners</option>
                        <option value="Plumbing">Plumbing</option>
                        <option value="Electrical">Electrical</option>
                        <option value="Structural">Structural</option>
                        <option value="Safety">Safety</option>
                        <option value="Chemicals">Chemicals</option>
                        <option value="Tools">Tools</option>
                    </select>
                    <i class="bi bi-caret-down-fill" style="position: absolute; right: 8px; top: 50%; transform: translateY(-50%); font-size: 9px; color: #6B7280; pointer-events: none;"></i>
                </div>

                <!-- Stock Status Dropdown -->
                <div style="position: relative;">
                    <select id="prodStatusFilter" onchange="filterProductsTable()" style="height: 34px; padding: 4px 26px 4px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #374151; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                        <option value="">Stock Status</option>
                        <option value="In Stock">In Stock</option>
                        <option value="Low Stock">Low Stock</option>
                        <option value="Out of Stock">Out of Stock</option>
                    </select>
                    <i class="bi bi-caret-down-fill" style="position: absolute; right: 8px; top: 50%; transform: translateY(-50%); font-size: 9px; color: #6B7280; pointer-events: none;"></i>
                </div>

                <!-- Supplier Dropdown -->
                <div style="position: relative;">
                    <select id="prodSupplierFilter" onchange="filterProductsTable()" style="height: 34px; padding: 4px 26px 4px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #374151; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                        <option value="">Supplier</option>
                        <option value="Bosch">Bosch</option>
                        <option value="Stanley">Stanley</option>
                        <option value="National">National</option>
                    </select>
                    <i class="bi bi-caret-down-fill" style="position: absolute; right: 8px; top: 50%; transform: translateY(-50%); font-size: 9px; color: #6B7280; pointer-events: none;"></i>
                </div>

                <!-- Clear Filters Link -->
                <button type="button" onclick="clearProductFilters()" style="background: none; border: none; color: #006C44; font-size: 12.5px; font-weight: 500; cursor: pointer; padding: 4px 6px;">
                    Clear Filters
                </button>
            </div>

            <!-- Right: Needs Attention Pill (Matching Figma) -->
            <div style="display: inline-flex; align-items: center; gap: 6px; padding: 5px 12px; background: #FEF2F2; border: 1px solid #FEE2E2; border-radius: 9999px; font-size: 12px; font-weight: 500; color: #DC2626;">
                <i class="bi bi-exclamation-circle" style="font-size: 12px;"></i>
                <span>18 products need attention</span>
            </div>
        </div>

        <!-- Products Table (Matching Figma Screenshot 1) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-top: none; border-radius: 0 0 8px 8px; overflow: hidden; margin-bottom: 24px;">
            <div style="overflow-x: auto;">
                <table id="productsMainTable" style="width: 100%; border-collapse: collapse; font-size: 12.5px; text-align: left;">
                    <thead>
                        <tr style="background: #FFFFFF; border-bottom: 1px solid #E5E7EB;">
                            <th style="padding: 12px 18px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px;">PRODUCT</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px;">CATEGORY</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px; text-align: right;">CURRENT STOCK</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px; text-align: right;">MIN. STOCK</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px;">UNIT</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px; text-align: center;">STATUS</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px;">LAST UPDATED</th>
                            <th style="padding: 12px 18px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px; text-align: right;">ACTION</th>
                        </tr>
                    </thead>
                    <tbody id="productsTableBody">
                        <!-- Row 1: Steel Ball Bearing -->
                        <tr class="prod-row" data-name="Steel Ball Bearing" data-sku="SKU-BRG-001" data-cat="Mechanical" data-status="In Stock" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 12px 18px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; font-size: 15px; color: #4B5563; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-disc"></i>
                                    </div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=1") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Steel Ball Bearing</a>
                                        <div style="font-size: 11px; color: #6B7280;">SKU-BRG-001</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Mechanical</td>
                            <td style="padding: 12px 16px; text-align: right; font-weight: 700; color: #111827; font-variant-numeric: tabular-nums;">1,240</td>
                            <td style="padding: 12px 16px; text-align: right; color: #4B5563; font-variant-numeric: tabular-nums;">500</td>
                            <td style="padding: 12px 16px; color: #4B5563;">pcs</td>
                            <td style="padding: 12px 16px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 500; color: #15803D;">In Stock</span>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">2 hours ago</td>
                            <td style="padding: 12px 18px; text-align: right; color: #9CA3AF;">
                                <i class="bi bi-three-dots-vertical" style="cursor: pointer; font-size: 14px;"></i>
                            </td>
                        </tr>

                        <!-- Row 2: Hex Bolt M12 -->
                        <tr class="prod-row" data-name="Hex Bolt M12" data-sku="SKU-FAS-042" data-cat="Fasteners" data-status="Low Stock" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 12px 18px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; font-size: 15px; color: #4B5563; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-nut"></i>
                                    </div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=2") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Hex Bolt M12</a>
                                        <div style="font-size: 11px; color: #6B7280;">SKU-FAS-042</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Fasteners</td>
                            <td style="padding: 12px 16px; text-align: right; font-weight: 700; color: #DC2626; font-variant-numeric: tabular-nums;">45</td>
                            <td style="padding: 12px 16px; text-align: right; color: #4B5563; font-variant-numeric: tabular-nums;">200</td>
                            <td style="padding: 12px 16px; color: #4B5563;">box</td>
                            <td style="padding: 12px 16px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #FEF3C7; border-radius: 4px; font-size: 11px; font-weight: 500; color: #B45309;">Low Stock</span>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Yesterday, 14:30</td>
                            <td style="padding: 12px 18px; text-align: right; color: #9CA3AF;">
                                <i class="bi bi-three-dots-vertical" style="cursor: pointer; font-size: 14px;"></i>
                            </td>
                        </tr>

                        <!-- Row 3: Pressure Valve -->
                        <tr class="prod-row" data-name="Pressure Valve" data-sku="SKU-PLM-110" data-cat="Plumbing" data-status="Out of Stock" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 12px 18px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; font-size: 15px; color: #4B5563; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-funnel"></i>
                                    </div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=3") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Pressure Valve</a>
                                        <div style="font-size: 11px; color: #6B7280;">SKU-PLM-110</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Plumbing</td>
                            <td style="padding: 12px 16px; text-align: right; font-weight: 700; color: #DC2626; font-variant-numeric: tabular-nums;">0</td>
                            <td style="padding: 12px 16px; text-align: right; color: #4B5563; font-variant-numeric: tabular-nums;">15</td>
                            <td style="padding: 12px 16px; color: #4B5563;">pcs</td>
                            <td style="padding: 12px 16px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #FEE2E2; border-radius: 4px; font-size: 11px; font-weight: 500; color: #DC2626;">Out of Stock</span>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">3 days ago</td>
                            <td style="padding: 12px 18px; text-align: right; color: #9CA3AF;">
                                <i class="bi bi-three-dots-vertical" style="cursor: pointer; font-size: 14px;"></i>
                            </td>
                        </tr>

                        <!-- Row 4: Copper Wire -->
                        <tr class="prod-row" data-name="Copper Wire" data-sku="SKU-ELC-088" data-cat="Electrical" data-status="In Stock" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 12px 18px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; font-size: 15px; color: #4B5563; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-slash-circle"></i>
                                    </div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=4") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Copper Wire</a>
                                        <div style="font-size: 11px; color: #6B7280;">SKU-ELC-088</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Electrical</td>
                            <td style="padding: 12px 16px; text-align: right; font-weight: 700; color: #111827; font-variant-numeric: tabular-nums;">850</td>
                            <td style="padding: 12px 16px; text-align: right; color: #4B5563; font-variant-numeric: tabular-nums;">100</td>
                            <td style="padding: 12px 16px; color: #4B5563;">m</td>
                            <td style="padding: 12px 16px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 500; color: #15803D;">In Stock</span>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Today, 09:15</td>
                            <td style="padding: 12px 18px; text-align: right; color: #9CA3AF;">
                                <i class="bi bi-three-dots-vertical" style="cursor: pointer; font-size: 14px;"></i>
                            </td>
                        </tr>

                        <!-- Row 5: L-Bracket Aluminum -->
                        <tr class="prod-row" data-name="L-Bracket Aluminum" data-sku="SKU-STR-201" data-cat="Structural" data-status="In Stock" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 12px 18px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; font-size: 15px; color: #4B5563; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-square-half"></i>
                                    </div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=5") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">L-Bracket Aluminum</a>
                                        <div style="font-size: 11px; color: #6B7280;">SKU-STR-201</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Structural</td>
                            <td style="padding: 12px 16px; text-align: right; font-weight: 700; color: #111827; font-variant-numeric: tabular-nums;">312</td>
                            <td style="padding: 12px 16px; text-align: right; color: #4B5563; font-variant-numeric: tabular-nums;">150</td>
                            <td style="padding: 12px 16px; color: #4B5563;">pcs</td>
                            <td style="padding: 12px 16px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 500; color: #15803D;">In Stock</span>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Oct 12, 2023</td>
                            <td style="padding: 12px 18px; text-align: right; color: #9CA3AF;">
                                <i class="bi bi-three-dots-vertical" style="cursor: pointer; font-size: 14px;"></i>
                            </td>
                        </tr>

                        <!-- Row 6: Safety Goggles -->
                        <tr class="prod-row" data-name="Safety Goggles" data-sku="SKU-PPE-004" data-cat="Safety" data-status="Low Stock" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 12px 18px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; font-size: 15px; color: #4B5563; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-eyeglasses"></i>
                                    </div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=6") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Safety Goggles</a>
                                        <div style="font-size: 11px; color: #6B7280;">SKU-PPE-004</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Safety</td>
                            <td style="padding: 12px 16px; text-align: right; font-weight: 700; color: #DC2626; font-variant-numeric: tabular-nums;">12</td>
                            <td style="padding: 12px 16px; text-align: right; color: #4B5563; font-variant-numeric: tabular-nums;">50</td>
                            <td style="padding: 12px 16px; color: #4B5563;">pair</td>
                            <td style="padding: 12px 16px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #FEF3C7; border-radius: 4px; font-size: 11px; font-weight: 500; color: #B45309;">Low Stock</span>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Oct 10, 2023</td>
                            <td style="padding: 12px 18px; text-align: right; color: #9CA3AF;">
                                <i class="bi bi-three-dots-vertical" style="cursor: pointer; font-size: 14px;"></i>
                            </td>
                        </tr>

                        <!-- Row 7: Heavy Machine Lubricant -->
                        <tr class="prod-row" data-name="Heavy Machine Lubricant" data-sku="SKU-CHM-055" data-cat="Chemicals" data-status="In Stock" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 12px 18px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; font-size: 15px; color: #4B5563; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-droplet"></i>
                                    </div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=7") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Heavy Machine Lubricant</a>
                                        <div style="font-size: 11px; color: #6B7280;">SKU-CHM-055</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Chemicals</td>
                            <td style="padding: 12px 16px; text-align: right; font-weight: 700; color: #111827; font-variant-numeric: tabular-nums;">42</td>
                            <td style="padding: 12px 16px; text-align: right; color: #4B5563; font-variant-numeric: tabular-nums;">20</td>
                            <td style="padding: 12px 16px; color: #4B5563;">gal</td>
                            <td style="padding: 12px 16px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 500; color: #15803D;">In Stock</span>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Oct 05, 2023</td>
                            <td style="padding: 12px 18px; text-align: right; color: #9CA3AF;">
                                <i class="bi bi-three-dots-vertical" style="cursor: pointer; font-size: 14px;"></i>
                            </td>
                        </tr>

                        <!-- Row 8: Digital Multimeter -->
                        <tr class="prod-row" data-name="Digital Multimeter" data-sku="SKU-TOL-331" data-cat="Tools" data-status="In Stock">
                            <td style="padding: 12px 18px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; font-size: 15px; color: #4B5563; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-speedometer2"></i>
                                    </div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=8") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Digital Multimeter</a>
                                        <div style="font-size: 11px; color: #6B7280;">SKU-TOL-331</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Tools</td>
                            <td style="padding: 12px 16px; text-align: right; font-weight: 700; color: #111827; font-variant-numeric: tabular-nums;">8</td>
                            <td style="padding: 12px 16px; text-align: right; color: #4B5563; font-variant-numeric: tabular-nums;">5</td>
                            <td style="padding: 12px 16px; color: #4B5563;">pcs</td>
                            <td style="padding: 12px 16px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 500; color: #15803D;">In Stock</span>
                            </td>
                            <td style="padding: 12px 16px; color: #4B5563;">Sep 28, 2023</td>
                            <td style="padding: 12px 18px; text-align: right; color: #9CA3AF;">
                                <i class="bi bi-three-dots-vertical" style="cursor: pointer; font-size: 14px;"></i>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Hidden elements to preserve designer/code-behind bindings -->
        <div style="display: none;">
            <asp:Repeater ID="rptProducts" runat="server"></asp:Repeater>
            <asp:Panel ID="pnlNoProducts" runat="server"></asp:Panel>
        </div>
    </div>

    <!-- Client-side filter script -->
    <script>
        function filterProductsTable() {
            var q = (document.getElementById('prodSearchInput').value || '').toLowerCase().trim();
            var cat = (document.getElementById('prodCategoryFilter').value || '').toLowerCase();
            var status = (document.getElementById('prodStatusFilter').value || '').toLowerCase();
            var rows = document.querySelectorAll('#productsTableBody tr.prod-row');

            rows.forEach(function (row) {
                var name = (row.getAttribute('data-name') || '').toLowerCase();
                var sku = (row.getAttribute('data-sku') || '').toLowerCase();
                var rCat = (row.getAttribute('data-cat') || '').toLowerCase();
                var rStatus = (row.getAttribute('data-status') || '').toLowerCase();

                var matchesQ = !q || name.indexOf(q) >= 0 || sku.indexOf(q) >= 0;
                var matchesCat = !cat || rCat === cat;
                var matchesStatus = !status || rStatus === status;

                if (matchesQ && matchesCat && matchesStatus) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            });
        }

        function clearProductFilters() {
            document.getElementById('prodSearchInput').value = '';
            document.getElementById('prodCategoryFilter').value = '';
            document.getElementById('prodStatusFilter').value = '';
            document.getElementById('prodSupplierFilter').value = '';
            filterProductsTable();
        }
    </script>
</asp:Content>
