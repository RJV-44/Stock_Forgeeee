<%@ Page Title="Inventory Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InventoryReport.aspx.cs" Inherits="Stock_Forgeeee.Reports.InventoryReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; margin-bottom: 12px;">
        <a href="<%= ResolveUrl("~/Reports/ReportsDashboard.aspx") %>" style="color: #6B7280; text-decoration: none;">Reports</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <span style="color: #111827; font-weight: 600;">Inventory Report</span>
    </div>

    <!-- Page Header (Matching Figma Screenshot 5) -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827; margin: 0 0 4px 0;">Inventory Report</h1>
            <div class="sf-page-subtitle" style="font-size: 13.5px; color: #6B7280;">Track inventory value and stock movement.</div>
        </div>
        <div class="sf-header-actions">
            <button type="button" class="btn-outline-action" style="display: inline-flex; align-items: center; gap: 8px; padding: 7px 14px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; cursor: pointer;">
                <i class="bi bi-download" style="font-size: 13px; color: #6B7280;"></i> Export <i class="bi bi-chevron-down" style="font-size: 10px; color: #6B7280; margin-left: 4px;"></i>
            </button>
        </div>
    </div>

    <!-- Filter Bar -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 12px 18px; margin-bottom: 20px;">
        <div style="display: flex; align-items: center; gap: 12px; flex-wrap: wrap;">
            <select class="sf-select" style="padding: 7px 28px 7px 12px; font-size: 13px;">
                <option selected>Status (All)</option>
                <option>In Stock</option>
                <option>Low Stock</option>
                <option>Out of Stock</option>
            </select>
            <select class="sf-select" style="padding: 7px 28px 7px 12px; font-size: 13px;">
                <option selected>Supplier (All)</option>
                <option>ABC Hardware Suppliers</option>
                <option>Patel Industrial Hardware</option>
            </select>
            <select class="sf-select" style="padding: 7px 28px 7px 12px; font-size: 13px;">
                <option selected>Date Range (This Month)</option>
                <option>Last Month</option>
                <option>Year to Date</option>
            </select>
            <div style="margin-left: auto; display: flex; align-items: center; gap: 14px;">
                <button type="button" style="background: transparent; border: none; font-size: 13px; color: #6B7280; cursor: pointer; padding: 6px 8px;">Clear</button>
                <button type="button" style="padding: 8px 18px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; font-size: 13px; font-weight: 600; color: #FFFFFF; cursor: pointer;">Apply Filters</button>
            </div>
        </div>
    </div>

    <!-- 4 Metric Cards -->
    <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 24px;">
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="text-transform: uppercase; font-size: 11px; font-weight: 700; color: #6B7280; letter-spacing: 0.3px;">Total Products</div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 8px; font-variant-numeric: tabular-nums;">486</div>
        </div>

        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="text-transform: uppercase; font-size: 11px; font-weight: 700; color: #6B7280; letter-spacing: 0.3px;">Total Stock Units</div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 8px; font-variant-numeric: tabular-nums;">8,642</div>
        </div>

        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="text-transform: uppercase; font-size: 11px; font-weight: 700; color: #6B7280; letter-spacing: 0.3px;">Stock Value</div>
            <div style="font-size: 22px; font-weight: 700; color: #006C44; margin-top: 8px; font-variant-numeric: tabular-nums;">₹24,68,300</div>
        </div>

        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-left: 4px solid #DC2626; border-radius: 8px; padding: 18px 20px;">
            <div style="text-transform: uppercase; font-size: 11px; font-weight: 700; color: #6B7280; letter-spacing: 0.3px;">Low Stock Items</div>
            <div style="font-size: 22px; font-weight: 700; color: #DC2626; margin-top: 8px; font-variant-numeric: tabular-nums;">18</div>
        </div>
    </div>

    <!-- Middle 2 Cards: Chart & Status Breakdown -->
    <div style="display: grid; grid-template-columns: 1.5fr 1fr; gap: 20px; margin-bottom: 24px;">
        <!-- Left: Stock Movement Chart -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Stock Movement</div>
                <div style="display: flex; gap: 16px; font-size: 12px; color: #4B5563;">
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #F87171;"></span> Low Stock (18)
                    </span>
                    <span style="display: flex; align-items: center; gap: 6px;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #DC2626;"></span> Out of Stock (56)
                    </span>
                </div>
            </div>

            <!-- Bar Chart Representation -->
            <div style="height: 140px; display: flex; align-items: flex-end; justify-content: space-around; padding: 0 20px; border-bottom: 1px solid #E5E7EB;">
                <!-- W1 -->
                <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="display: flex; align-items: flex-end; gap: 4px; height: 110px;">
                        <div style="width: 18px; height: 35px; background: #E2E8F0; border-radius: 2px;"></div>
                        <div style="width: 18px; height: 75px; background: #3DA86F; border-radius: 2px;"></div>
                    </div>
                    <span style="font-size: 11px; color: #6B7280;">W1</span>
                </div>
                <!-- W2 -->
                <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="display: flex; align-items: flex-end; gap: 4px; height: 110px;">
                        <div style="width: 18px; height: 25px; background: #E2E8F0; border-radius: 2px;"></div>
                        <div style="width: 18px; height: 95px; background: #3DA86F; border-radius: 2px;"></div>
                    </div>
                    <span style="font-size: 11px; color: #6B7280;">W2</span>
                </div>
                <!-- W3 -->
                <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="display: flex; align-items: flex-end; gap: 4px; height: 110px;">
                        <div style="width: 18px; height: 50px; background: #E2E8F0; border-radius: 2px;"></div>
                        <div style="width: 18px; height: 45px; background: #3DA86F; border-radius: 2px;"></div>
                    </div>
                    <span style="font-size: 11px; color: #6B7280;">W3</span>
                </div>
                <!-- W4 -->
                <div style="display: flex; flex-direction: column; align-items: center; gap: 6px;">
                    <div style="display: flex; align-items: flex-end; gap: 4px; height: 110px;">
                        <div style="width: 18px; height: 20px; background: #E2E8F0; border-radius: 2px;"></div>
                        <div style="width: 18px; height: 105px; background: #3DA86F; border-radius: 2px;"></div>
                    </div>
                    <span style="font-size: 11px; color: #6B7280;">W4</span>
                </div>
            </div>
        </div>

        <!-- Right: Stock Status Breakdown Card -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; display: flex; flex-direction: column; justify-content: center;">
            <div style="font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 18px;">
                Stock Status Breakdown
            </div>

            <div style="display: flex; flex-direction: column; gap: 14px;">
                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 12.5px; color: #4B5563; margin-bottom: 4px;">
                        <span>In Stock</span>
                        <strong style="color: #111827;">84%</strong>
                    </div>
                    <div style="height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                        <div style="width: 84%; height: 100%; background: #16A34A;"></div>
                    </div>
                </div>

                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 12.5px; color: #4B5563; margin-bottom: 4px;">
                        <span>Out of Stock</span>
                        <strong style="color: #111827;">12%</strong>
                    </div>
                    <div style="height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                        <div style="width: 12%; height: 100%; background: #CBD5E1;"></div>
                    </div>
                </div>

                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 12.5px; color: #4B5563; margin-bottom: 4px;">
                        <span>Low Stock</span>
                        <strong style="color: #DC2626;">4%</strong>
                    </div>
                    <div style="height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                        <div style="width: 4%; height: 100%; background: #DC2626;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Inventory Table Card (Matching Figma Screenshot 5) -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; margin-bottom: 24px; overflow: hidden;">
        <div style="overflow-x: auto;">
            <table style="width: 100%; border-collapse: collapse; text-align: left; font-size: 13px;">
                <thead>
                    <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB; color: #6B7280; font-size: 11px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.3px;">
                        <th style="padding: 12px 20px; width: 32%;">CATEGORY</th>
                        <th style="padding: 12px 14px; text-align: center; width: 14%;">STOCK</th>
                        <th style="padding: 12px 14px; text-align: center; width: 14%;">REORDER</th>
                        <th style="padding: 12px 16px; text-align: right; width: 18%;">VALUE (₹)</th>
                        <th style="padding: 12px 16px; width: 14%;">STATUS</th>
                        <th style="padding: 12px 16px; width: 4%; text-align: center;"></th>
                    </tr>
                </thead>
                <tbody style="divide-y: 1px solid #E5E7EB;">
                    <!-- Row 1: Power Tools In Stock -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 500; color: #111827;">Power Tools</td>
                        <td style="padding: 14px 14px; text-align: center; font-weight: 600; color: #111827;">24</td>
                        <td style="padding: 14px 14px; text-align: center; color: #6B7280;">10</td>
                        <td style="padding: 14px 16px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">35,976.00</td>
                        <td style="padding: 14px 16px;">
                            <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D;">
                                In Stock
                            </span>
                        </td>
                        <td style="padding: 14px 16px; text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots" style="cursor: pointer;"></i></td>
                    </tr>

                    <!-- Row 2: Power Tools Low Stock -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 500; color: #111827;">Power Tools</td>
                        <td style="padding: 14px 14px; text-align: center; font-weight: 700; color: #DC2626;">4</td>
                        <td style="padding: 14px 14px; text-align: center; color: #6B7280;">15</td>
                        <td style="padding: 14px 16px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">18,400.00</td>
                        <td style="padding: 14px 16px;">
                            <span style="display: inline-block; padding: 2px 8px; background: #FEF3C7; border-radius: 4px; font-size: 11px; font-weight: 600; color: #B45309;">
                                Low Stock
                            </span>
                        </td>
                        <td style="padding: 14px 16px; text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots" style="cursor: pointer;"></i></td>
                    </tr>

                    <!-- Row 3: Power Tools Out of Stock -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 500; color: #111827;">Power Tools</td>
                        <td style="padding: 14px 14px; text-align: center; font-weight: 600; color: #6B7280;">0</td>
                        <td style="padding: 14px 14px; text-align: center; color: #6B7280;">5</td>
                        <td style="padding: 14px 16px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">0.00</td>
                        <td style="padding: 14px 16px;">
                            <span style="display: inline-block; padding: 2px 8px; background: #F3F4F6; border-radius: 4px; font-size: 11px; font-weight: 600; color: #6B7280;">
                                Out of Stock
                            </span>
                        </td>
                        <td style="padding: 14px 16px; text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots" style="cursor: pointer;"></i></td>
                    </tr>

                    <!-- Row 4: Fasteners In Stock -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px; font-weight: 500; color: #111827;">Fasteners</td>
                        <td style="padding: 14px 14px; text-align: center; font-weight: 600; color: #111827;">1,250</td>
                        <td style="padding: 14px 14px; text-align: center; color: #6B7280;">500</td>
                        <td style="padding: 14px 16px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">6,250.00</td>
                        <td style="padding: 14px 16px;">
                            <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D;">
                                In Stock
                            </span>
                        </td>
                        <td style="padding: 14px 16px; text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots" style="cursor: pointer;"></i></td>
                    </tr>

                    <!-- Row 5: PPE In Stock -->
                    <tr>
                        <td style="padding: 14px 20px; font-weight: 500; color: #111827;">PPE</td>
                        <td style="padding: 14px 14px; text-align: center; font-weight: 600; color: #111827;">85</td>
                        <td style="padding: 14px 14px; text-align: center; color: #6B7280;">20</td>
                        <td style="padding: 14px 16px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">12,750.00</td>
                        <td style="padding: 14px 16px;">
                            <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D;">
                                In Stock
                            </span>
                        </td>
                        <td style="padding: 14px 16px; text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots" style="cursor: pointer;"></i></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Table Footer Pagination -->
        <div style="padding: 14px 20px; border-top: 1px solid #E5E7EB; display: flex; justify-content: flex-end; align-items: center; font-size: 13px; color: #6B7280;">
            <div style="display: flex; gap: 4px; align-items: center;">
                <button type="button" style="padding: 5px 10px; border: 1px solid #D1D5DB; border-radius: 6px; background: #FFFFFF; font-size: 12.5px; color: #4B5563; cursor: pointer;">Previous</button>
                <button type="button" style="padding: 5px 12px; border: 1px solid #006C44; border-radius: 6px; background: #006C44; font-size: 12.5px; font-weight: 600; color: #FFFFFF; cursor: pointer;">1</button>
                <button type="button" style="padding: 5px 12px; border: 1px solid #D1D5DB; border-radius: 6px; background: #FFFFFF; font-size: 12.5px; color: #4B5563; cursor: pointer;">2</button>
                <button type="button" style="padding: 5px 12px; border: 1px solid #D1D5DB; border-radius: 6px; background: #FFFFFF; font-size: 12.5px; color: #4B5563; cursor: pointer;">3</button>
                <span style="padding: 0 4px; color: #9CA3AF;">...</span>
                <button type="button" style="padding: 5px 12px; border: 1px solid #D1D5DB; border-radius: 6px; background: #FFFFFF; font-size: 12.5px; color: #4B5563; cursor: pointer;">90</button>
                <button type="button" style="padding: 5px 10px; border: 1px solid #D1D5DB; border-radius: 6px; background: #FFFFFF; font-size: 12.5px; color: #4B5563; cursor: pointer;">Next</button>
            </div>
        </div>
    </div>
</asp:Content>
