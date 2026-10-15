<%@ Page Title="Suppliers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SupplierList.aspx.cs" Inherits="Stock_Forgeeee.Suppliers.SupplierList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 1360px; margin: 0 auto;">
        <!-- Page Header (Matching Figma) -->
        <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 22px;">
            <div>
                <h1 style="font-size: 26px; font-weight: 700; color: #111827; margin: 0 0 4px 0; letter-spacing: -0.02em;">Suppliers</h1>
                <div style="font-size: 13.5px; color: #6B7280;">Manage your hardware suppliers and purchasing relationships.</div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Suppliers/AddSupplier.aspx") %>" style="display: inline-flex; align-items: center; gap: 7px; padding: 8px 18px; background: #006C44; color: #FFFFFF; font-size: 13px; font-weight: 600; border-radius: 6px; text-decoration: none; border: none; box-shadow: 0 1px 2px rgba(0,0,0,0.05); transition: background 0.15s ease;" onmouseover="this.style.background='#0B5C3B'" onmouseout="this.style.background='#006C44'">
                    <i class="bi bi-plus-lg" style="font-size: 13px; font-weight: 700;"></i>
                    <span>Add Supplier</span>
                </a>
            </div>
        </div>

        <!-- 4 KPI Stat Cards Row (Matching Figma) -->
        <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 20px;">
            <!-- Card 1: Total Suppliers -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px; display: flex; align-items: center; gap: 16px;">
                <div style="width: 44px; height: 44px; border-radius: 50%; background: #EAF8EF; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                    <i class="bi bi-people" style="font-size: 20px; color: #15803D;"></i>
                </div>
                <div>
                    <div style="font-size: 12px; color: #6B7280; font-weight: 500;">Total Suppliers</div>
                    <div id="statTotalSuppliers" style="font-size: 24px; font-weight: 700; color: #111827; line-height: 1.2; margin-top: 2px;">48</div>
                </div>
            </div>

            <!-- Card 2: Active -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px; display: flex; align-items: center; gap: 16px;">
                <div style="width: 44px; height: 44px; border-radius: 50%; background: #EAF8EF; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                    <i class="bi bi-check-circle" style="font-size: 20px; color: #15803D;"></i>
                </div>
                <div>
                    <div style="font-size: 12px; color: #6B7280; font-weight: 500;">Active</div>
                    <div style="font-size: 24px; font-weight: 700; color: #111827; line-height: 1.2; margin-top: 2px;">42</div>
                </div>
            </div>

            <!-- Card 3: Inactive -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px; display: flex; align-items: center; gap: 16px;">
                <div style="width: 44px; height: 44px; border-radius: 50%; background: #FEE2E2; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                    <i class="bi bi-x-circle" style="font-size: 20px; color: #DC2626;"></i>
                </div>
                <div>
                    <div style="font-size: 12px; color: #6B7280; font-weight: 500;">Inactive</div>
                    <div style="font-size: 24px; font-weight: 700; color: #111827; line-height: 1.2; margin-top: 2px;">6</div>
                </div>
            </div>

            <!-- Card 4: Purchase Orders -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px; display: flex; align-items: center; gap: 16px;">
                <div style="width: 44px; height: 44px; border-radius: 50%; background: #EFF6FF; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                    <i class="bi bi-receipt" style="font-size: 20px; color: #2563EB;"></i>
                </div>
                <div>
                    <div style="font-size: 12px; color: #6B7280; font-weight: 500;">Purchase Orders</div>
                    <div style="font-size: 24px; font-weight: 700; color: #111827; line-height: 1.2; margin-top: 2px;">128</div>
                </div>
            </div>
        </div>

        <!-- Filters Row (Matching Figma) -->
        <div style="display: flex; align-items: center; gap: 12px; margin-bottom: 16px;">
            <!-- Search Input -->
            <div style="position: relative; flex: 1;">
                <i class="bi bi-search" style="position: absolute; left: 14px; top: 50%; transform: translateY(-50%); color: #9CA3AF; font-size: 13.5px;"></i>
                <input type="text" id="suppSearchInput" onkeyup="filterSuppliersTable()" placeholder="Search suppliers..." style="width: 100%; height: 40px; padding: 6px 14px 6px 38px; border: 1px solid #E5E7EB; border-radius: 8px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#E5E7EB'" />
            </div>

            <!-- Status Dropdown -->
            <div style="position: relative; width: 160px;">
                <select id="suppStatusFilter" onchange="filterSuppliersTable()" style="width: 100%; height: 40px; padding: 6px 32px 6px 14px; border: 1px solid #E5E7EB; border-radius: 8px; font-size: 13px; color: #374151; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                    <option value="">All Status</option>
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                </select>
                <i class="bi bi-chevron-down" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
            </div>

            <!-- Sort Dropdown -->
            <div style="position: relative; width: 160px;">
                <select id="suppSortFilter" onchange="sortSuppliersTable()" style="width: 100%; height: 40px; padding: 6px 32px 6px 14px; border: 1px solid #E5E7EB; border-radius: 8px; font-size: 13px; color: #374151; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                    <option value="name_asc">Name A-Z</option>
                    <option value="name_desc">Name Z-A</option>
                    <option value="products_desc">Products: High to Low</option>
                    <option value="products_asc">Products: Low to High</option>
                </select>
                <i class="bi bi-chevron-down" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
            </div>

            <!-- Clear Filters Link -->
            <button type="button" onclick="clearSuppliersFilter()" style="border: none; background: transparent; color: #6B7280; font-size: 13px; font-weight: 500; cursor: pointer; padding: 6px 10px; transition: color 0.15s ease;" onmouseover="this.style.color='#111827'" onmouseout="this.style.color='#6B7280'">
                Clear Filters
            </button>
        </div>

        <!-- Supplier Table Container (Matching Figma) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; overflow: hidden; margin-bottom: 20px; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
            <div style="overflow-x: auto;">
                <table id="supplierMainTable" style="width: 100%; border-collapse: collapse; font-size: 13px; text-align: left;">
                    <thead>
                        <tr style="background: #F9FAFB; border-bottom: 1px solid #E5E7EB;">
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151;">Supplier</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151;">Contact</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151;">Phone</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: center;">Products</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: center;">Status</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: right;">Action</th>
                        </tr>
                    </thead>
                    <tbody id="supplierTableBody">
                        <!-- Row 1: ABC Hardware Suppliers -->
                        <tr class="supp-row" data-name="ABC Hardware Suppliers" data-contact="Amit Patel" data-status="Active" data-products="142" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 5px; background: #D1FAE5; color: #065F46; font-size: 11px; font-weight: 700; display: flex; align-items: center; justify-content: center; flex-shrink: 0; letter-spacing: 0.3px;">ABC</div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1001") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">ABC Hardware Suppliers</a>
                                        <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">orders@abchardware.in</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #374151; font-weight: 500;">Amit Patel</td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 98765 43210</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">142</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 10px; background: #EAF8EF; border-radius: 999px; font-size: 11px; font-weight: 500; color: #15803D;">Active</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleMenu(event, 'menu-1001')" style="background: none; border: none; color: #6B7280; font-size: 16px; cursor: pointer; padding: 4px 6px; border-radius: 4px;">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </button>
                                <div id="menu-1001" class="supp-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1001") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Details</a>
                                    <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1001") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                    <a href="<%= ResolveUrl("~/Purchases/EditPurchaseOrder.aspx?supplierId=1001") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">New Order</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 2: Patel Industrial Supply -->
                        <tr class="supp-row" data-name="Patel Industrial Supply" data-contact="Rahul Desai" data-status="Active" data-products="85" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 5px; background: #E0F2FE; color: #0284C7; font-size: 11px; font-weight: 700; display: flex; align-items: center; justify-content: center; flex-shrink: 0; letter-spacing: 0.3px;">PIS</div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1002") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Patel Industrial Supply</a>
                                        <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">sales@patelindustrial.com</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #374151; font-weight: 500;">Rahul Desai</td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 99887 76655</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">85</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 10px; background: #EAF8EF; border-radius: 999px; font-size: 11px; font-weight: 500; color: #15803D;">Active</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleMenu(event, 'menu-1002')" style="background: none; border: none; color: #6B7280; font-size: 16px; cursor: pointer; padding: 4px 6px; border-radius: 4px;">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </button>
                                <div id="menu-1002" class="supp-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1002") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Details</a>
                                    <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1002") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                    <a href="<%= ResolveUrl("~/Purchases/EditPurchaseOrder.aspx?supplierId=1002") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">New Order</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 3: Shree Tools & Hardware -->
                        <tr class="supp-row" data-name="Shree Tools & Hardware" data-contact="Vikram Singh" data-status="Active" data-products="320" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 5px; background: #F3E8FF; color: #9333EA; font-size: 11px; font-weight: 700; display: flex; align-items: center; justify-content: center; flex-shrink: 0; letter-spacing: 0.3px;">STH</div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1003") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Shree Tools &amp; Hardware</a>
                                        <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">contact@shreetools.in</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #374151; font-weight: 500;">Vikram Singh</td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 91234 56789</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">320</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 10px; background: #EAF8EF; border-radius: 999px; font-size: 11px; font-weight: 500; color: #15803D;">Active</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleMenu(event, 'menu-1003')" style="background: none; border: none; color: #6B7280; font-size: 16px; cursor: pointer; padding: 4px 6px; border-radius: 4px;">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </button>
                                <div id="menu-1003" class="supp-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1003") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Details</a>
                                    <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1003") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                    <a href="<%= ResolveUrl("~/Purchases/EditPurchaseOrder.aspx?supplierId=1003") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">New Order</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 4: Bombay Metals & Fasteners -->
                        <tr class="supp-row" data-name="Bombay Metals & Fasteners" data-contact="Sanjay Mehta" data-status="Inactive" data-products="45" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 5px; background: #FFEDD5; color: #EA580C; font-size: 11px; font-weight: 700; display: flex; align-items: center; justify-content: center; flex-shrink: 0; letter-spacing: 0.3px;">BME</div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1004") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Bombay Metals &amp; Fasteners</a>
                                        <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">info@bombaymetals.co.in</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #374151; font-weight: 500;">Sanjay Mehta</td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 98765 00001</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">45</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 10px; background: #FEE2E2; border-radius: 999px; font-size: 11px; font-weight: 500; color: #DC2626;">Inactive</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleMenu(event, 'menu-1004')" style="background: none; border: none; color: #6B7280; font-size: 16px; cursor: pointer; padding: 4px 6px; border-radius: 4px;">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </button>
                                <div id="menu-1004" class="supp-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1004") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Details</a>
                                    <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1004") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 5: Gujarat Technical Supplies -->
                        <tr class="supp-row" data-name="Gujarat Technical Supplies" data-contact="Neha Sharma" data-status="Active" data-products="210" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 5px; background: #CCFBF1; color: #0D9488; font-size: 11px; font-weight: 700; display: flex; align-items: center; justify-content: center; flex-shrink: 0; letter-spacing: 0.3px;">GTS</div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1005") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Gujarat Technical Supplies</a>
                                        <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">procurement@gts-india.in</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #374151; font-weight: 500;">Neha Sharma</td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 90000 12345</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">210</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 10px; background: #EAF8EF; border-radius: 999px; font-size: 11px; font-weight: 500; color: #15803D;">Active</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleMenu(event, 'menu-1005')" style="background: none; border: none; color: #6B7280; font-size: 16px; cursor: pointer; padding: 4px 6px; border-radius: 4px;">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </button>
                                <div id="menu-1005" class="supp-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1005") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Details</a>
                                    <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1005") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 6: National Iron Works -->
                        <tr class="supp-row" data-name="National Iron Works" data-contact="Rakesh Kumar" data-status="Active" data-products="18" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 5px; background: #E0E7FF; color: #4F46E5; font-size: 11px; font-weight: 700; display: flex; align-items: center; justify-content: center; flex-shrink: 0; letter-spacing: 0.3px;">NIW</div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1006") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">National Iron Works</a>
                                        <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">sales@nationaliron.com</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #374151; font-weight: 500;">Rakesh Kumar</td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 91111 22222</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">18</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 10px; background: #EAF8EF; border-radius: 999px; font-size: 11px; font-weight: 500; color: #15803D;">Active</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleMenu(event, 'menu-1006')" style="background: none; border: none; color: #6B7280; font-size: 16px; cursor: pointer; padding: 4px 6px; border-radius: 4px;">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </button>
                                <div id="menu-1006" class="supp-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1006") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Details</a>
                                    <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1006") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 7: Metro Heavy Equipments -->
                        <tr class="supp-row" data-name="Metro Heavy Equipments" data-contact="Priya Reddy" data-status="Active" data-products="92" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 5px; background: #FEF9C3; color: #CA8A04; font-size: 11px; font-weight: 700; display: flex; align-items: center; justify-content: center; flex-shrink: 0; letter-spacing: 0.3px;">MHE</div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1007") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Metro Heavy Equipments</a>
                                        <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">support@metroheavy.in</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #374151; font-weight: 500;">Priya Reddy</td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 93333 44444</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">92</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 10px; background: #EAF8EF; border-radius: 999px; font-size: 11px; font-weight: 500; color: #15803D;">Active</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleMenu(event, 'menu-1007')" style="background: none; border: none; color: #6B7280; font-size: 16px; cursor: pointer; padding: 4px 6px; border-radius: 4px;">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </button>
                                <div id="menu-1007" class="supp-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1007") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Details</a>
                                    <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1007") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 8: Vindhya Bearing Enterprises -->
                        <tr class="supp-row" data-name="Vindhya Bearing Enterprises" data-contact="Alok Jain" data-status="Inactive" data-products="12" style="transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 5px; background: #F3F4F6; color: #4B5563; font-size: 11px; font-weight: 700; display: flex; align-items: center; justify-content: center; flex-shrink: 0; letter-spacing: 0.3px;">VBE</div>
                                    <div>
                                        <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1008") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Vindhya Bearing Enterprises</a>
                                        <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">hello@vindhyabearings.in</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #374151; font-weight: 500;">Alok Jain</td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 95555 66666</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">12</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 10px; background: #FEE2E2; border-radius: 999px; font-size: 11px; font-weight: 500; color: #DC2626;">Inactive</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleMenu(event, 'menu-1008')" style="background: none; border: none; color: #6B7280; font-size: 16px; cursor: pointer; padding: 4px 6px; border-radius: 4px;">
                                    <i class="bi bi-three-dots-vertical"></i>
                                </button>
                                <div id="menu-1008" class="supp-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Suppliers/SupplierDetails.aspx?id=1008") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Details</a>
                                    <a href="<%= ResolveUrl("~/Suppliers/EditSupplier.aspx?id=1008") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Pagination Bar (Matching Figma) -->
        <div style="display: flex; justify-content: space-between; align-items: center; padding: 6px 4px; font-size: 13px; color: #6B7280;">
            <div id="suppPaginationInfo">
                Showing 1-8 of 48 suppliers
            </div>
            <div style="display: flex; align-items: center; gap: 4px;">
                <a href="javascript:void(0)" style="padding: 6px 12px; color: #6B7280; text-decoration: none; font-size: 13px;">&lsaquo; Previous</a>
                <span style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; background: #D1FAE5; color: #065F46; font-weight: 600; border-radius: 6px; font-size: 13px;">1</span>
                <a href="javascript:void(0)" style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; color: #374151; text-decoration: none; font-size: 13px; border-radius: 6px;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">2</a>
                <a href="javascript:void(0)" style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; color: #374151; text-decoration: none; font-size: 13px; border-radius: 6px;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">3</a>
                <span style="color: #9CA3AF; padding: 0 4px;">...</span>
                <a href="javascript:void(0)" style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; color: #374151; text-decoration: none; font-size: 13px; border-radius: 6px;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">6</a>
                <a href="javascript:void(0)" style="padding: 6px 12px; color: #374151; text-decoration: none; font-size: 13px;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#374151'">Next &rsaquo;</a>
            </div>
        </div>
    </div>

    <!-- Client-side Search, Filter & Menu Logic -->
    <script>
        function toggleMenu(e, id) {
            e.stopPropagation();
            document.querySelectorAll('.supp-dropdown').forEach(function (d) {
                if (d.id !== id) d.style.display = 'none';
            });
            var menu = document.getElementById(id);
            if (menu) {
                menu.style.display = (menu.style.display === 'none' || menu.style.display === '') ? 'block' : 'none';
            }
        }

        document.addEventListener('click', function () {
            document.querySelectorAll('.supp-dropdown').forEach(function (d) {
                d.style.display = 'none';
            });
        });

        function filterSuppliersTable() {
            var q = (document.getElementById('suppSearchInput').value || '').toLowerCase().trim();
            var st = document.getElementById('suppStatusFilter').value;
            var rows = document.querySelectorAll('#supplierTableBody tr.supp-row');
            var visibleCount = 0;

            rows.forEach(function (row) {
                var name = (row.getAttribute('data-name') || '').toLowerCase();
                var contact = (row.getAttribute('data-contact') || '').toLowerCase();
                var status = row.getAttribute('data-status') || '';
                var text = row.innerText.toLowerCase();

                var matchesQ = !q || name.indexOf(q) >= 0 || contact.indexOf(q) >= 0 || text.indexOf(q) >= 0;
                var matchesStatus = !st || status.toLowerCase() === st.toLowerCase();

                if (matchesQ && matchesStatus) {
                    row.style.display = '';
                    visibleCount++;
                } else {
                    row.style.display = 'none';
                }
            });

            var info = document.getElementById('suppPaginationInfo');
            if (info) {
                info.innerText = 'Showing 1-' + visibleCount + ' of 48 suppliers';
            }
        }

        function sortSuppliersTable() {
            var val = document.getElementById('suppSortFilter').value;
            var tbody = document.getElementById('supplierTableBody');
            var rows = Array.from(tbody.querySelectorAll('tr.supp-row'));

            rows.sort(function (a, b) {
                var nameA = (a.getAttribute('data-name') || '').toLowerCase();
                var nameB = (b.getAttribute('data-name') || '').toLowerCase();
                var prodA = parseInt(a.getAttribute('data-products') || '0', 10);
                var prodB = parseInt(b.getAttribute('data-products') || '0', 10);

                if (val === 'name_asc') return nameA.localeCompare(nameB);
                if (val === 'name_desc') return nameB.localeCompare(nameA);
                if (val === 'products_desc') return prodB - prodA;
                if (val === 'products_asc') return prodA - prodB;
                return 0;
            });

            rows.forEach(function (r) { tbody.appendChild(r); });
        }

        function clearSuppliersFilter() {
            document.getElementById('suppSearchInput').value = '';
            document.getElementById('suppStatusFilter').value = '';
            document.getElementById('suppSortFilter').value = 'name_asc';
            filterSuppliersTable();
            sortSuppliersTable();
        }
    </script>
</asp:Content>
