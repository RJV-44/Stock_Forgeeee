<%@ Page Title="Customers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="Stock_Forgeeee.Customers.CustomerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 1360px; margin: 0 auto;">
        <!-- Breadcrumb (Matching Figma) -->
        <div style="display: flex; align-items: center; gap: 6px; font-size: 12px; color: #6B7280; margin-bottom: 10px;">
            <a href="<%= ResolveUrl("~/Dashboard.aspx") %>" style="color: #6B7280; text-decoration: none;" onmouseover="this.style.color='#111827'" onmouseout="this.style.color='#6B7280'">Dashboard</a>
            <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
            <span style="color: #111827; font-weight: 500;">Customers</span>
        </div>

        <!-- Page Header (Matching Figma) -->
        <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 22px;">
            <div>
                <h1 style="font-size: 26px; font-weight: 700; color: #111827; margin: 0 0 4px 0; letter-spacing: -0.02em;">Customers</h1>
                <div style="font-size: 13.5px; color: #6B7280;">Manage customer information and view their sales activity.</div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Customers/AddCustomer.aspx") %>" style="display: inline-flex; align-items: center; gap: 7px; padding: 8px 18px; background: #006C44; color: #FFFFFF; font-size: 13px; font-weight: 600; border-radius: 6px; text-decoration: none; border: none; box-shadow: 0 1px 2px rgba(0,0,0,0.05); transition: background 0.15s ease;" onmouseover="this.style.background='#0B5C3B'" onmouseout="this.style.background='#006C44'">
                    <i class="bi bi-plus-lg" style="font-size: 13px; font-weight: 700;"></i>
                    <span>Add Customer</span>
                </a>
            </div>
        </div>

        <!-- 4 KPI Stat Cards Grid (Matching Figma) -->
        <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 20px;">
            <!-- Card 1: TOTAL CUSTOMERS -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px; display: flex; justify-content: space-between; align-items: center;">
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">TOTAL CUSTOMERS</div>
                    <div id="statTotalCustomers" style="font-size: 24px; font-weight: 700; color: #111827; margin-top: 4px; line-height: 1.2;">186</div>
                </div>
                <div style="width: 44px; height: 44px; border-radius: 50%; background: #EAF8EF; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                    <i class="bi bi-people" style="font-size: 20px; color: #15803D;"></i>
                </div>
            </div>

            <!-- Card 2: ACTIVE CUSTOMERS -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px; display: flex; justify-content: space-between; align-items: center;">
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">ACTIVE CUSTOMERS</div>
                    <div style="font-size: 24px; font-weight: 700; color: #111827; margin-top: 4px; line-height: 1.2;">174</div>
                </div>
                <div style="width: 44px; height: 44px; border-radius: 50%; background: #EAF8EF; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                    <i class="bi bi-check-circle" style="font-size: 20px; color: #15803D;"></i>
                </div>
            </div>

            <!-- Card 3: INACTIVE CUSTOMERS -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px; display: flex; justify-content: space-between; align-items: center;">
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">INACTIVE CUSTOMERS</div>
                    <div style="font-size: 24px; font-weight: 700; color: #111827; margin-top: 4px; line-height: 1.2;">12</div>
                </div>
                <div style="width: 44px; height: 44px; border-radius: 50%; background: #FEE2E2; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                    <i class="bi bi-x-circle" style="font-size: 20px; color: #DC2626;"></i>
                </div>
            </div>

            <!-- Card 4: TOTAL SALES -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px; display: flex; justify-content: space-between; align-items: center;">
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">TOTAL SALES</div>
                    <div style="font-size: 24px; font-weight: 700; color: #111827; margin-top: 4px; line-height: 1.2; font-variant-numeric: tabular-nums;">₹12,85,400.00</div>
                </div>
                <div style="width: 44px; height: 44px; border-radius: 50%; background: #F3F4F6; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                    <i class="bi bi-wallet2" style="font-size: 20px; color: #4B5563;"></i>
                </div>
            </div>
        </div>

        <!-- Filter Toolbar (Matching Figma) -->
        <div style="display: flex; align-items: center; gap: 12px; margin-bottom: 16px;">
            <!-- Search Input -->
            <div style="position: relative; flex: 1;">
                <i class="bi bi-search" style="position: absolute; left: 14px; top: 50%; transform: translateY(-50%); color: #9CA3AF; font-size: 13.5px;"></i>
                <input type="text" id="custSearchInput" onkeyup="filterCustomerTable()" placeholder="Search customer name, phone or email..." style="width: 100%; height: 40px; padding: 6px 14px 6px 38px; border: 1px solid #E5E7EB; border-radius: 8px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; transition: border-color 0.15s ease;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#E5E7EB'" />
            </div>

            <!-- Status Dropdown -->
            <div style="position: relative; width: 150px;">
                <select id="custStatusFilter" onchange="filterCustomerTable()" style="width: 100%; height: 40px; padding: 6px 30px 6px 14px; border: 1px solid #E5E7EB; border-radius: 8px; font-size: 13px; color: #374151; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                    <option value="">Status: All</option>
                    <option value="ACTIVE">Status: Active</option>
                    <option value="INACTIVE">Status: Inactive</option>
                </select>
                <i class="bi bi-chevron-down" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
            </div>

            <!-- Sort Dropdown -->
            <div style="position: relative; width: 180px;">
                <select id="custSortFilter" onchange="sortCustomerTable()" style="width: 100%; height: 40px; padding: 6px 30px 6px 14px; border: 1px solid #E5E7EB; border-radius: 8px; font-size: 13px; color: #374151; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                    <option value="recent">Sort: Recently Added</option>
                    <option value="name_asc">Sort: Name A-Z</option>
                    <option value="spent_desc">Sort: Total Spent High-Low</option>
                    <option value="sales_desc">Sort: Sales High-Low</option>
                </select>
                <i class="bi bi-chevron-down" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
            </div>

            <!-- Clear Link -->
            <button type="button" onclick="clearCustomerFilter()" style="border: none; background: transparent; color: #6B7280; font-size: 13px; font-weight: 500; cursor: pointer; padding: 6px 10px; transition: color 0.15s ease;" onmouseover="this.style.color='#111827'" onmouseout="this.style.color='#6B7280'">
                Clear
            </button>
        </div>

        <!-- Customers Table Container (Matching Figma) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 10px; overflow: hidden; margin-bottom: 20px; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
            <div style="overflow-x: auto;">
                <table id="customerMainTable" style="width: 100%; border-collapse: collapse; font-size: 13px; text-align: left;">
                    <thead>
                        <tr style="background: #F9FAFB; border-bottom: 1px solid #E5E7EB;">
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151;">Customer</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151;">Phone</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: center;">Sales</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: right;">Total Spent (₹)</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151;">Last Purchase</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: center;">Status</th>
                            <th style="padding: 13px 20px; font-size: 12px; font-weight: 600; color: #374151; text-align: right;">Action</th>
                        </tr>
                    </thead>
                    <tbody id="customerTableBody">
                        <!-- Row 1: Rajesh Patel -->
                        <tr class="cust-row" data-name="Rajesh Patel" data-phone="+91 98765 43210" data-email="rajesh@example.in" data-sales="18" data-spent="142850" data-status="ACTIVE" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div>
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=101") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Rajesh Patel</a>
                                    <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">rajesh@example.in</div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 98765 43210</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">18</td>
                            <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹1,42,850.00</td>
                            <td style="padding: 14px 20px; color: #4B5563;">17 Aug 2026</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D; letter-spacing: 0.3px;">ACTIVE</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleCustMenu(event, 'cmenu-101')" style="background: none; border: none; color: #6B7280; font-size: 18px; cursor: pointer; padding: 2px 6px; letter-spacing: 1px;">
                                    <i class="bi bi-three-dots"></i>
                                </button>
                                <div id="cmenu-101" class="cust-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=101") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Profile</a>
                                    <a href="<%= ResolveUrl("~/Customers/EditCustomer.aspx?id=101") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                    <a href="<%= ResolveUrl("~/Sales/NewSale.aspx?customerId=101") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">New Sale</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 2: Amit Shah -->
                        <tr class="cust-row" data-name="Amit Shah" data-phone="+91 98254 12345" data-email="amit@example.in" data-sales="12" data-spent="86400" data-status="ACTIVE" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div>
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=102") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Amit Shah</a>
                                    <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">amit@example.in</div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 98254 12345</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">12</td>
                            <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹86,400.00</td>
                            <td style="padding: 14px 20px; color: #4B5563;">15 Aug 2026</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D; letter-spacing: 0.3px;">ACTIVE</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleCustMenu(event, 'cmenu-102')" style="background: none; border: none; color: #6B7280; font-size: 18px; cursor: pointer; padding: 2px 6px; letter-spacing: 1px;">
                                    <i class="bi bi-three-dots"></i>
                                </button>
                                <div id="cmenu-102" class="cust-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=102") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Profile</a>
                                    <a href="<%= ResolveUrl("~/Customers/EditCustomer.aspx?id=102") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 3: Kiran Enterprise -->
                        <tr class="cust-row" data-name="Kiran Enterprise" data-phone="+91 98980 23456" data-email="info@kiran.in" data-sales="25" data-spent="218750" data-status="ACTIVE" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div>
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=103") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Kiran Enterprise</a>
                                    <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">info@kiran.in</div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 98980 23456</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">25</td>
                            <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹2,18,750.00</td>
                            <td style="padding: 14px 20px; color: #4B5563;">14 Aug 2026</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D; letter-spacing: 0.3px;">ACTIVE</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleCustMenu(event, 'cmenu-103')" style="background: none; border: none; color: #6B7280; font-size: 18px; cursor: pointer; padding: 2px 6px; letter-spacing: 1px;">
                                    <i class="bi bi-three-dots"></i>
                                </button>
                                <div id="cmenu-103" class="cust-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=103") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Profile</a>
                                    <a href="<%= ResolveUrl("~/Customers/EditCustomer.aspx?id=103") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 4: Mahesh Hardware Works -->
                        <tr class="cust-row" data-name="Mahesh Hardware Works" data-phone="+91 98795 45678" data-email="contact@mahesh.in" data-sales="9" data-spent="54300" data-status="ACTIVE" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div>
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=104") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Mahesh Hardware Works</a>
                                    <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">contact@mahesh.in</div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 98795 45678</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">9</td>
                            <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹54,300.00</td>
                            <td style="padding: 14px 20px; color: #4B5563;">11 Aug 2026</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D; letter-spacing: 0.3px;">ACTIVE</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleCustMenu(event, 'cmenu-104')" style="background: none; border: none; color: #6B7280; font-size: 18px; cursor: pointer; padding: 2px 6px; letter-spacing: 1px;">
                                    <i class="bi bi-three-dots"></i>
                                </button>
                                <div id="cmenu-104" class="cust-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=104") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Profile</a>
                                    <a href="<%= ResolveUrl("~/Customers/EditCustomer.aspx?id=104") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 5: Patel Construction -->
                        <tr class="cust-row" data-name="Patel Construction" data-phone="+91 99890 56789" data-email="service@patel.in" data-sales="16" data-spent="125600" data-status="ACTIVE" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div>
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=105") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Patel Construction</a>
                                    <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">service@patel.in</div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 99890 56789</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">16</td>
                            <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹1,25,600.00</td>
                            <td style="padding: 14px 20px; color: #4B5563;">09 Aug 2026</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D; letter-spacing: 0.3px;">ACTIVE</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleCustMenu(event, 'cmenu-105')" style="background: none; border: none; color: #6B7280; font-size: 18px; cursor: pointer; padding: 2px 6px; letter-spacing: 1px;">
                                    <i class="bi bi-three-dots"></i>
                                </button>
                                <div id="cmenu-105" class="cust-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=105") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Profile</a>
                                    <a href="<%= ResolveUrl("~/Customers/EditCustomer.aspx?id=105") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 6: Shree Electricals -->
                        <tr class="cust-row" data-name="Shree Electricals" data-phone="+91 98123 67890" data-email="sales@shree.in" data-sales="7" data-spent="42850" data-status="ACTIVE" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div>
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=106") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Shree Electricals</a>
                                    <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">sales@shree.in</div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 98123 67890</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">7</td>
                            <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹42,850.00</td>
                            <td style="padding: 14px 20px; color: #4B5563;">05 Aug 2026</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D; letter-spacing: 0.3px;">ACTIVE</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleCustMenu(event, 'cmenu-106')" style="background: none; border: none; color: #6B7280; font-size: 18px; cursor: pointer; padding: 2px 6px; letter-spacing: 1px;">
                                    <i class="bi bi-three-dots"></i>
                                </button>
                                <div id="cmenu-106" class="cust-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=106") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Profile</a>
                                    <a href="<%= ResolveUrl("~/Customers/EditCustomer.aspx?id=106") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 7: Om Traders -->
                        <tr class="cust-row" data-name="Om Traders" data-phone="+91 98250 78901" data-email="om@example.in" data-sales="11" data-spent="73250" data-status="INACTIVE" style="border-bottom: 1px solid #F3F4F6; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div>
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=107") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Om Traders</a>
                                    <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">om@example.in</div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 98250 78901</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">11</td>
                            <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹73,250.00</td>
                            <td style="padding: 14px 20px; color: #4B5563;">02 Aug 2026</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #F3F4F6; border-radius: 4px; font-size: 11px; font-weight: 600; color: #4B5563; letter-spacing: 0.3px;">INACTIVE</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleCustMenu(event, 'cmenu-107')" style="background: none; border: none; color: #6B7280; font-size: 18px; cursor: pointer; padding: 2px 6px; letter-spacing: 1px;">
                                    <i class="bi bi-three-dots"></i>
                                </button>
                                <div id="cmenu-107" class="cust-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=107") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Profile</a>
                                    <a href="<%= ResolveUrl("~/Customers/EditCustomer.aspx?id=107") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 8: Gujarat BuildMart -->
                        <tr class="cust-row" data-name="Gujarat BuildMart" data-phone="+91 98790 89012" data-email="admin1@gujbuild.in" data-sales="20" data-spent="186400" data-status="ACTIVE" style="transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                            <td style="padding: 14px 20px;">
                                <div>
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=108") %>" style="font-weight: 600; color: #111827; text-decoration: none;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#111827'">Gujarat BuildMart</a>
                                    <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">admin1@gujbuild.in</div>
                                </div>
                            </td>
                            <td style="padding: 14px 20px; color: #4B5563;">+91 98790 89012</td>
                            <td style="padding: 14px 20px; text-align: center; font-weight: 600; color: #111827;">20</td>
                            <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹1,86,400.00</td>
                            <td style="padding: 14px 20px; color: #4B5563;">30 Jul 2026</td>
                            <td style="padding: 14px 20px; text-align: center;">
                                <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D; letter-spacing: 0.3px;">ACTIVE</span>
                            </td>
                            <td style="padding: 14px 20px; text-align: right; position: relative;">
                                <button type="button" onclick="toggleCustMenu(event, 'cmenu-108')" style="background: none; border: none; color: #6B7280; font-size: 18px; cursor: pointer; padding: 2px 6px; letter-spacing: 1px;">
                                    <i class="bi bi-three-dots"></i>
                                </button>
                                <div id="cmenu-108" class="cust-dropdown" style="display: none; position: absolute; right: 20px; top: 40px; background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 6px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); z-index: 50; width: 140px; text-align: left; padding: 4px 0;">
                                    <a href="<%= ResolveUrl("~/Customers/CustomerDetails.aspx?id=108") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">View Profile</a>
                                    <a href="<%= ResolveUrl("~/Customers/EditCustomer.aspx?id=108") %>" style="display: block; padding: 6px 12px; font-size: 12.5px; color: #374151; text-decoration: none;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">Edit</a>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Pagination Bar (Matching Figma) -->
        <div style="display: flex; justify-content: space-between; align-items: center; padding: 6px 4px; font-size: 13px; color: #6B7280;">
            <div id="custPaginationInfo">
                Showing 1-8 of 186 customers
            </div>
            <div style="display: flex; align-items: center; gap: 4px;">
                <a href="javascript:void(0)" style="padding: 6px 12px; color: #6B7280; text-decoration: none; font-size: 13px;">Previous</a>
                <span style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; background: #2E855A; color: #FFFFFF; font-weight: 600; border-radius: 4px; font-size: 13px;">1</span>
                <a href="javascript:void(0)" style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; color: #374151; text-decoration: none; font-size: 13px; border-radius: 4px;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">2</a>
                <a href="javascript:void(0)" style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; color: #374151; text-decoration: none; font-size: 13px; border-radius: 4px;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">3</a>
                <span style="color: #9CA3AF; padding: 0 4px;">...</span>
                <a href="javascript:void(0)" style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; color: #374151; text-decoration: none; font-size: 13px; border-radius: 4px;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">24</a>
                <a href="javascript:void(0)" style="padding: 6px 12px; color: #374151; text-decoration: none; font-size: 13px; font-weight: 500;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#374151'">Next</a>
            </div>
        </div>
    </div>

    <!-- Client-side Search, Filter & Menu Logic -->
    <script>
        function toggleCustMenu(e, id) {
            e.stopPropagation();
            document.querySelectorAll('.cust-dropdown').forEach(function (d) {
                if (d.id !== id) d.style.display = 'none';
            });
            var menu = document.getElementById(id);
            if (menu) {
                menu.style.display = (menu.style.display === 'none' || menu.style.display === '') ? 'block' : 'none';
            }
        }

        document.addEventListener('click', function () {
            document.querySelectorAll('.cust-dropdown').forEach(function (d) {
                d.style.display = 'none';
            });
        });

        function filterCustomerTable() {
            var q = (document.getElementById('custSearchInput').value || '').toLowerCase().trim();
            var st = document.getElementById('custStatusFilter').value;
            var rows = document.querySelectorAll('#customerTableBody tr.cust-row');
            var visibleCount = 0;

            rows.forEach(function (row) {
                var name = (row.getAttribute('data-name') || '').toLowerCase();
                var phone = (row.getAttribute('data-phone') || '').toLowerCase();
                var email = (row.getAttribute('data-email') || '').toLowerCase();
                var status = row.getAttribute('data-status') || '';

                var matchesQ = !q || name.indexOf(q) >= 0 || phone.indexOf(q) >= 0 || email.indexOf(q) >= 0;
                var matchesStatus = !st || status.toUpperCase() === st.toUpperCase();

                if (matchesQ && matchesStatus) {
                    row.style.display = '';
                    visibleCount++;
                } else {
                    row.style.display = 'none';
                }
            });

            var info = document.getElementById('custPaginationInfo');
            if (info) {
                info.innerText = 'Showing 1-' + visibleCount + ' of 186 customers';
            }
        }

        function sortCustomerTable() {
            var val = document.getElementById('custSortFilter').value;
            var tbody = document.getElementById('customerTableBody');
            var rows = Array.from(tbody.querySelectorAll('tr.cust-row'));

            rows.sort(function (a, b) {
                var nameA = (a.getAttribute('data-name') || '').toLowerCase();
                var nameB = (b.getAttribute('data-name') || '').toLowerCase();
                var salesA = parseInt(a.getAttribute('data-sales') || '0', 10);
                var salesB = parseInt(b.getAttribute('data-sales') || '0', 10);
                var spentA = parseFloat(a.getAttribute('data-spent') || '0');
                var spentB = parseFloat(b.getAttribute('data-spent') || '0');

                if (val === 'name_asc') return nameA.localeCompare(nameB);
                if (val === 'spent_desc') return spentB - spentA;
                if (val === 'sales_desc') return salesB - salesA;
                return 0; // default recent
            });

            rows.forEach(function (r) { tbody.appendChild(r); });
        }

        function clearCustomerFilter() {
            document.getElementById('custSearchInput').value = '';
            document.getElementById('custStatusFilter').value = '';
            document.getElementById('custSortFilter').value = 'recent';
            filterCustomerTable();
            sortCustomerTable();
        }
    </script>
</asp:Content>
