<%@ Page Title="Sales Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalesReport.aspx.cs" Inherits="Stock_Forgeeee.Reports.SalesReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb (Matching Image 3) -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; color: #6B7280; margin-bottom: 8px;">
        <a href="<%= ResolveUrl("~/Reports/ReportsDashboard.aspx") %>" style="color: #6B7280; text-decoration: none;">Reports</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active" style="color: #111827; font-weight: 500;">Sales Report</span>
    </div>

    <!-- Page Header (Matching Image 3) -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 20px;">
        <div>
            <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827; margin: 0 0 4px 0;">Sales Report</h1>
            <div class="sf-page-subtitle" style="font-size: 13px; color: #6B7280;">Analyze sales performance, customers, products and payment activity.</div>
        </div>
        <div class="sf-header-actions">
            <button type="button" class="btn-outline-action" style="background: #ffffff; color: #111827; border: 1px solid #D1D5DB; border-radius: 6px; padding: 7px 14px; font-size: 13px; font-weight: 500; display: inline-flex; align-items: center; gap: 6px; cursor: pointer;">
                <i class="bi bi-download" style="font-size: 12px;"></i> Export <i class="bi bi-chevron-down" style="font-size: 10px; margin-left: 2px;"></i>
            </button>
        </div>
    </div>

    <!-- Filter Bar (Matching Image 3) -->
    <div class="sf-card" style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 8px; padding: 12px 18px; margin-bottom: 20px;">
        <div style="display: flex; align-items: center; gap: 12px; flex-wrap: wrap;">
            <select class="sf-select" style="height: 36px; padding: 6px 26px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; background: #ffffff;">
                <option>📅 This Month</option>
                <option>📅 Last Month</option>
                <option>📅 This Quarter</option>
                <option>📅 This Year</option>
            </select>
            <select class="sf-select" style="height: 36px; padding: 6px 26px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; background: #ffffff;">
                <option>Customer: All</option>
                <option>Rajesh Patel</option>
                <option>Acme Industries</option>
                <option>Vikram Singh</option>
                <option>BuildRight Const.</option>
                <option>Anita Desai</option>
            </select>
            <select class="sf-select" style="height: 36px; padding: 6px 26px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; background: #ffffff;">
                <option>Product: All</option>
                <option>Bosch 10mm Drill Kit</option>
                <option>Makita Angle Grinder</option>
                <option>DeWalt Impact Driver</option>
                <option>Stanley Hand Tool Set</option>
            </select>
            <select class="sf-select" style="height: 36px; padding: 6px 26px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; background: #ffffff;">
                <option>Payment: All</option>
                <option>Paid</option>
                <option>Partial</option>
                <option>Unpaid</option>
            </select>
            <select class="sf-select" style="height: 36px; padding: 6px 26px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; background: #ffffff;">
                <option>Status: All</option>
                <option>Completed</option>
                <option>Pending</option>
            </select>
            <div style="margin-left: auto; display: flex; align-items: center; gap: 12px;">
                <a href="javascript:void(0)" class="sf-text-btn" style="color: #6B7280; font-size: 13px; text-decoration: none; cursor: pointer;">Clear</a>
                <button type="button" class="btn-primary-action" style="background: #006C44; color: #ffffff; border: none; border-radius: 6px; padding: 7px 18px; font-size: 13px; font-weight: 600; cursor: pointer;">Apply</button>
            </div>
        </div>
    </div>

    <!-- 4 Metric Cards (Matching Image 3) -->
    <div class="sf-kpi-grid" style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 24px;">
        <!-- Card 1: Total Sales -->
        <div class="sf-kpi-card" style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 12.5px; font-weight: 500; color: #4B5563;">Total Sales</div>
                <div style="width: 30px; height: 30px; border-radius: 6px; background: #EAF8EF; color: #15803D; display: flex; align-items: center; justify-content: center; font-size: 15px;">
                    <i class="bi bi-wallet2"></i>
                </div>
            </div>
            <div style="font-size: 24px; font-weight: 700; color: #111827; margin-top: 10px;">₹12,85,400.00</div>
        </div>

        <!-- Card 2: Orders -->
        <div class="sf-kpi-card" style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 12.5px; font-weight: 500; color: #4B5563;">Orders</div>
                <div style="width: 30px; height: 30px; border-radius: 6px; background: #F3F4F6; color: #4B5563; display: flex; align-items: center; justify-content: center; font-size: 15px;">
                    <i class="bi bi-receipt"></i>
                </div>
            </div>
            <div style="font-size: 24px; font-weight: 700; color: #111827; margin-top: 10px;">124</div>
        </div>

        <!-- Card 3: Average Sale -->
        <div class="sf-kpi-card" style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 12.5px; font-weight: 500; color: #4B5563;">Average Sale</div>
                <div style="width: 30px; height: 30px; border-radius: 6px; background: #F3F4F6; color: #4B5563; display: flex; align-items: center; justify-content: center; font-size: 15px;">
                    <i class="bi bi-calculator"></i>
                </div>
            </div>
            <div style="font-size: 24px; font-weight: 700; color: #111827; margin-top: 10px;">₹10,366.94</div>
        </div>

        <!-- Card 4: Outstanding -->
        <div class="sf-kpi-card" style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 18px 20px;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 12.5px; font-weight: 500; color: #4B5563;">Outstanding</div>
                <div style="width: 30px; height: 30px; border-radius: 6px; background: #FEE2E2; color: #DC2626; display: flex; align-items: center; justify-content: center; font-size: 15px;">
                    <i class="bi bi-cash-stack"></i>
                </div>
            </div>
            <div style="font-size: 24px; font-weight: 700; color: #DC2626; margin-top: 10px;">₹84,500.00</div>
        </div>
    </div>

    <!-- Charts Row: Sales Trend & Sales Breakdown (Matching Image 3) -->
    <div style="display: grid; grid-template-columns: 1.4fr 1fr; gap: 20px; margin-bottom: 24px;">
        
        <!-- Sales Trend Card with Bar Chart -->
        <div class="sf-card" style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Sales Trend</div>
                <div style="font-size: 12px; color: #6B7280;">Value in ₹</div>
            </div>

            <!-- Chart with Y-Axis and Horizontal Grid Lines -->
            <div style="position: relative; height: 160px; display: flex; margin-bottom: 8px;">
                <!-- Left Y-Axis labels -->
                <div style="display: flex; flex-direction: column; justify-content: space-between; font-size: 10.5px; color: #9CA3AF; padding-right: 12px; text-align: right; width: 45px; user-select: none;">
                    <span>400K</span>
                    <span>300K</span>
                    <span>200K</span>
                    <span>100K</span>
                    <span>0</span>
                </div>

                <!-- Chart Canvas Area with Grid and Bars -->
                <div style="flex: 1; position: relative; border-left: 1px solid #E5E7EB; border-bottom: 1px solid #E5E7EB;">
                    <!-- Subtle horizontal grid lines -->
                    <div style="position: absolute; top: 0; left: 0; right: 0; border-top: 1px dashed #F3F4F6;"></div>
                    <div style="position: absolute; top: 25%; left: 0; right: 0; border-top: 1px dashed #F3F4F6;"></div>
                    <div style="position: absolute; top: 50%; left: 0; right: 0; border-top: 1px dashed #F3F4F6;"></div>
                    <div style="position: absolute; top: 75%; left: 0; right: 0; border-top: 1px dashed #F3F4F6;"></div>

                    <!-- Bars Container -->
                    <div style="position: absolute; inset: 0; display: flex; align-items: flex-end; justify-content: space-around; padding: 0 16px;">
                        <!-- W1 -->
                        <div style="width: 14%; height: 28%; background: #B2D8C5; border-radius: 2px 2px 0 0;" title="W1: ₹1,12,000"></div>
                        <!-- W2 -->
                        <div style="width: 14%; height: 55%; background: #76B995; border-radius: 2px 2px 0 0;" title="W2: ₹2,20,000"></div>
                        <!-- W3 -->
                        <div style="width: 14%; height: 28%; background: #B2D8C5; border-radius: 2px 2px 0 0;" title="W3: ₹1,10,000"></div>
                        <!-- W4 (Tallest, Forest Green) -->
                        <div style="width: 14%; height: 90%; background: #006C44; border-radius: 2px 2px 0 0;" title="W4: ₹3,60,000"></div>
                        <!-- W5 -->
                        <div style="width: 14%; height: 68%; background: #76B995; border-radius: 2px 2px 0 0;" title="W5: ₹2,70,000"></div>
                    </div>
                </div>
            </div>

            <!-- X-Axis Labels -->
            <div style="display: flex; margin-left: 45px; justify-content: space-around; padding: 6px 16px 0; font-size: 11px; color: #6B7280;">
                <span style="width: 14%; text-align: center;">W1</span>
                <span style="width: 14%; text-align: center;">W2</span>
                <span style="width: 14%; text-align: center;">W3</span>
                <span style="width: 14%; text-align: center;">W4</span>
                <span style="width: 14%; text-align: center;">W5</span>
            </div>
        </div>

        <!-- Sales Breakdown Card -->
        <div class="sf-card" style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Sales Breakdown</div>
                <div style="display: flex; align-items: center; gap: 6px;">
                    <span style="font-size: 12px; color: #6B7280;">View by:</span>
                    <select class="sf-select" style="height: 28px; padding: 2px 22px 2px 8px; font-size: 12px; border-radius: 4px;">
                        <option selected>Product</option>
                        <option>Customer</option>
                    </select>
                </div>
            </div>

            <!-- 4 Products List (Matching Image 3) -->
            <div style="display: flex; flex-direction: column; gap: 16px;">
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <span style="width: 26px; height: 26px; background: #F3F4F6; border-radius: 4px; display: inline-flex; align-items: center; justify-content: center; font-size: 11px; font-weight: 700; color: #6B7280;">P1</span>
                        <span style="font-size: 13px; font-weight: 500; color: #111827;">Bosch 10mm Drill Kit</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹1,85,400</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <span style="width: 26px; height: 26px; background: #F3F4F6; border-radius: 4px; display: inline-flex; align-items: center; justify-content: center; font-size: 11px; font-weight: 700; color: #6B7280;">P2</span>
                        <span style="font-size: 13px; font-weight: 500; color: #111827;">Makita Angle Grinder</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹1,42,000</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <span style="width: 26px; height: 26px; background: #F3F4F6; border-radius: 4px; display: inline-flex; align-items: center; justify-content: center; font-size: 11px; font-weight: 700; color: #6B7280;">P3</span>
                        <span style="font-size: 13px; font-weight: 500; color: #111827;">DeWalt Impact Driver</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹95,500</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <span style="width: 26px; height: 26px; background: #F3F4F6; border-radius: 4px; display: inline-flex; align-items: center; justify-content: center; font-size: 11px; font-weight: 700; color: #6B7280;">P4</span>
                        <span style="font-size: 13px; font-weight: 500; color: #111827;">Stanley Hand Tool Set</span>
                    </div>
                    <strong style="font-size: 13px; color: #111827;">₹62,100</strong>
                </div>
            </div>
        </div>
    </div>

    <!-- Sales Transactions Table Card (Matching Image 3) -->
    <div class="sf-table-card" style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; overflow: hidden; margin-bottom: 24px;">
        <div class="sf-table-header" style="padding: 16px 20px; border-bottom: 1px solid #E5E7EB; display: flex; justify-content: space-between; align-items: center;">
            <div class="sf-table-title" style="font-size: 15px; font-weight: 700; color: #111827;">Sales Transactions</div>
            <button type="button" class="icon-button" style="width: 32px; height: 32px; border: 1px solid #E5E7EB; border-radius: 6px; background: #ffffff; display: flex; align-items: center; justify-content: center; color: #6B7280; cursor: pointer;" title="Filter">
                <i class="bi bi-filter"></i>
            </button>
        </div>

        <div style="overflow-x: auto;">
            <table class="sf-table" style="width: 100%; border-collapse: collapse; font-size: 13px;">
                <thead>
                    <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB;">
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: left; width: 16%;">Sale No.</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: left; width: 24%;">Customer</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: left; width: 18%;">Date</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: center; width: 8%;">Items</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: right; width: 16%;">Total</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: center; width: 10%;">Payment</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: center; width: 12%;">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Row 1: SO-2026-0125 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0125") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0125
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 500; color: #111827;">Rajesh Patel</td>
                        <td style="padding: 14px 18px; color: #4B5563;">17 Aug 2026</td>
                        <td style="padding: 14px 18px; text-align: center; font-weight: 600; color: #111827;">5</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">₹7,647.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-success" style="padding: 3px 12px; border-radius: 999px; font-size: 11px; font-weight: 600; background: #EAF8EF; color: #15803D;">Paid</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-neutral" style="padding: 3px 12px; border-radius: 999px; font-size: 11px; font-weight: 500; background: #E5E7EB; color: #374151;">Completed</span>
                        </td>
                    </tr>

                    <!-- Row 2: SO-2026-0124 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0124") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0124
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 500; color: #111827;">Acme Industries</td>
                        <td style="padding: 14px 18px; color: #4B5563;">17 Aug 2026</td>
                        <td style="padding: 14px 18px; text-align: center; font-weight: 600; color: #111827;">12</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">₹45,200.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-warning" style="padding: 3px 12px; border-radius: 999px; font-size: 11px; font-weight: 600; background: #FFEDD5; color: #C2410C;">Partial</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-neutral" style="padding: 3px 12px; border-radius: 999px; font-size: 11px; font-weight: 500; background: #E5E7EB; color: #374151;">Completed</span>
                        </td>
                    </tr>

                    <!-- Row 3: SO-2026-0123 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0123") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0123
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 500; color: #111827;">Vikram Singh</td>
                        <td style="padding: 14px 18px; color: #4B5563;">16 Aug 2026</td>
                        <td style="padding: 14px 18px; text-align: center; font-weight: 600; color: #111827;">2</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">₹1,850.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-success" style="padding: 3px 12px; border-radius: 999px; font-size: 11px; font-weight: 600; background: #EAF8EF; color: #15803D;">Paid</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-neutral" style="padding: 3px 12px; border-radius: 999px; font-size: 11px; font-weight: 500; background: #E5E7EB; color: #374151;">Completed</span>
                        </td>
                    </tr>

                    <!-- Row 4: SO-2026-0122 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0122") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0122
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 500; color: #111827;">BuildRight Const.</td>
                        <td style="padding: 14px 18px; color: #4B5563;">16 Aug 2026</td>
                        <td style="padding: 14px 18px; text-align: center; font-weight: 600; color: #111827;">24</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">₹1,12,000.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-danger" style="padding: 3px 12px; border-radius: 999px; font-size: 11px; font-weight: 600; background: #FEE2E2; color: #DC2626;">Unpaid</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-warning" style="padding: 3px 12px; border-radius: 999px; font-size: 11px; font-weight: 500; background: #FEF3C7; color: #B45309;">Pending</span>
                        </td>
                    </tr>

                    <!-- Row 5: SO-2026-0121 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0121") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0121
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 500; color: #111827;">Anita Desai</td>
                        <td style="padding: 14px 18px; color: #4B5563;">15 Aug 2026</td>
                        <td style="padding: 14px 18px; text-align: center; font-weight: 600; color: #111827;">1</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">₹450.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-success" style="padding: 3px 12px; border-radius: 999px; font-size: 11px; font-weight: 600; background: #EAF8EF; color: #15803D;">Paid</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-neutral" style="padding: 3px 12px; border-radius: 999px; font-size: 11px; font-weight: 500; background: #E5E7EB; color: #374151;">Completed</span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Table Footer Pagination (Matching Image 3) -->
        <div class="sf-table-footer" style="padding: 14px 20px; display: flex; justify-content: space-between; align-items: center; background: #ffffff; border-top: 1px solid #E5E7EB;">
            <div style="font-size: 12.5px; color: #6B7280;">Showing 1-5 of 124 sales</div>
            <div class="sf-pagination" style="display: flex; align-items: center; gap: 4px;">
                <button type="button" class="sf-page-btn" style="border: 1px solid #D1D5DB; background: #ffffff; color: #4B5563; padding: 4px 10px; border-radius: 4px; font-size: 12px; cursor: pointer;">Previous</button>
                <button type="button" class="sf-page-btn active" style="border: 1px solid #006C44; background: #006C44; color: #ffffff; font-weight: 600; padding: 4px 11px; border-radius: 4px; font-size: 12px; cursor: pointer;">1</button>
                <button type="button" class="sf-page-btn" style="border: 1px solid #D1D5DB; background: #ffffff; color: #4B5563; padding: 4px 10px; border-radius: 4px; font-size: 12px; cursor: pointer;">2</button>
                <button type="button" class="sf-page-btn" style="border: 1px solid #D1D5DB; background: #ffffff; color: #4B5563; padding: 4px 10px; border-radius: 4px; font-size: 12px; cursor: pointer;">3</button>
                <span style="padding: 0 4px; color: #9CA3AF; font-size: 12px;">...</span>
                <button type="button" class="sf-page-btn" style="border: 1px solid #D1D5DB; background: #ffffff; color: #4B5563; padding: 4px 10px; border-radius: 4px; font-size: 12px; cursor: pointer;">25</button>
                <button type="button" class="sf-page-btn" style="border: 1px solid #D1D5DB; background: #ffffff; color: #4B5563; padding: 4px 10px; border-radius: 4px; font-size: 12px; cursor: pointer;">Next</button>
            </div>
        </div>
    </div>
</asp:Content>
