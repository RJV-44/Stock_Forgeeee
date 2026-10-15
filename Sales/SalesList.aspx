<%@ Page Title="Sales" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalesList.aspx.cs" Inherits="Stock_Forgeeee.Sales.SalesList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb (Optional/Subtle) -->
    <div class="sf-breadcrumb" style="display: none;">
        <a href="<%= ResolveUrl("~/Dashboard.aspx") %>">Dashboard</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active">Sales</span>
    </div>

    <!-- Page Header (Matching Image 5 / Figma Sales) -->
    <div class="sf-page-header">
        <div>
            <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827;">Sales</h1>
            <div class="sf-page-subtitle" style="font-size: 13px; color: #6B7280; margin-top: 4px;">
                Manage customer sales and track completed transactions.
            </div>
        </div>
        <div class="sf-header-actions">
            <a href="<%= ResolveUrl("~/Sales/NewSale.aspx") %>" class="btn-primary-action" style="background: #3DA86F; font-weight: 600; padding: 9px 18px; border-radius: 6px;">
                <i class="bi bi-plus-lg"></i> New Sale
            </a>
        </div>
    </div>

    <!-- 4 Top Metric KPI Cards (Matching Image 5) -->
    <div class="sf-kpi-grid" style="grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 20px;">
        <!-- Card 1: TOTAL SALES -->
        <div class="sf-kpi-card" style="padding: 18px 20px; background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px;">
            <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">TOTAL SALES</div>
            <div style="font-size: 24px; font-weight: 700; color: #111827; margin-top: 8px;">₹12,85,400.00</div>
        </div>

        <!-- Card 2: TODAY'S SALES -->
        <div class="sf-kpi-card" style="padding: 18px 20px; background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px;">
            <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">TODAY'S SALES</div>
            <div style="display: flex; align-items: baseline; gap: 8px; margin-top: 8px;">
                <span style="font-size: 24px; font-weight: 700; color: #111827;">₹48,750.00</span>
                <span class="sf-pill sf-pill-success" style="font-size: 11px; font-weight: 600; padding: 2px 7px; background: #EAF8EF; color: #15803D;">
                    <i class="bi bi-arrow-up-right" style="font-size: 10px;"></i> +2.4%
                </span>
            </div>
        </div>

        <!-- Card 3: PENDING ORDERS -->
        <div class="sf-kpi-card" style="padding: 18px 20px; background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px;">
            <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">PENDING ORDERS</div>
            <div style="font-size: 24px; font-weight: 700; color: #111827; margin-top: 8px;">8</div>
        </div>

        <!-- Card 4: COMPLETED (30D) -->
        <div class="sf-kpi-card" style="padding: 18px 20px; background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px;">
            <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.5px;">COMPLETED (30D)</div>
            <div style="font-size: 24px; font-weight: 700; color: #111827; margin-top: 8px;">124</div>
        </div>
    </div>

    <!-- Sales Table Card Container (Matching Image 5) -->
    <div class="sf-table-card" style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; overflow: hidden; margin-bottom: 24px;">
        
        <!-- Filter Toolbar -->
        <div class="sf-filter-row" style="padding: 14px 20px; border-bottom: 1px solid #E5E7EB; display: flex; align-items: center; gap: 12px; flex-wrap: wrap; background: #ffffff;">
            <!-- Search Input -->
            <div class="sf-search-wrap" style="position: relative; flex: 1; min-width: 280px;">
                <i class="bi bi-search" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #9CA3AF; font-size: 13.5px;"></i>
                <input type="text" id="salesSearchInput" placeholder="Search sale number, customer or product..." style="width: 100%; height: 38px; padding: 6px 12px 6px 36px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; outline: none; background: #ffffff;" />
            </div>

            <!-- Status Filter -->
            <select class="sf-select" id="salesStatusSelect" style="height: 38px; padding: 6px 28px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151;">
                <option value="">Status: All</option>
                <option value="Completed">Completed</option>
                <option value="Pending">Pending</option>
                <option value="Draft">Draft</option>
                <option value="Cancelled">Cancelled</option>
            </select>

            <!-- Date Range Filter -->
            <select class="sf-select" id="salesDateSelect" style="height: 38px; padding: 6px 28px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151;">
                <option value="30">📅 Last 30 Days</option>
                <option value="7">📅 Last 7 Days</option>
                <option value="90">📅 Last 90 Days</option>
                <option value="all">📅 All Time</option>
            </select>

            <!-- Payment Filter -->
            <select class="sf-select" id="salesPaymentSelect" style="height: 38px; padding: 6px 28px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151;">
                <option value="">Payment: All</option>
                <option value="Paid">Paid</option>
                <option value="Partial">Partial</option>
                <option value="Unpaid">Unpaid</option>
            </select>

            <!-- Clear Action -->
            <button type="button" onclick="clearSalesFilters()" class="sf-text-btn" style="color: #6B7280; font-size: 13px; display: inline-flex; align-items: center; gap: 4px; border: none; background: none; cursor: pointer;">
                <i class="bi bi-x-lg" style="font-size: 11px;"></i> Clear
            </button>
        </div>

        <!-- Sales Data Table -->
        <div style="overflow-x: auto;">
            <table class="sf-table" id="salesTable" style="width: 100%; border-collapse: collapse; font-size: 13px;">
                <thead>
                    <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB;">
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: left;">Sale Number</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: left;">Customer</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: left;">Sale Date</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: left;">Items</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: right;">Total (₹)</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: center;">Payment</th>
                        <th style="padding: 12px 18px; font-size: 11.5px; font-weight: 600; color: #4B5563; text-align: center;">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Row 1: SO-2026-0124 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0124") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0124
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 600; color: #111827;">Rajesh Patel</td>
                        <td style="padding: 14px 18px; color: #4B5563;">17 Aug 2026</td>
                        <td style="padding: 14px 18px; color: #4B5563;">5 items</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">18,450.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-success" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 600; background: #EAF8EF; color: #15803D;">Paid</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-neutral" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 500; background: #E5E7EB; color: #374151;">Completed</span>
                        </td>
                    </tr>

                    <!-- Row 2: SO-2026-0123 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0123") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0123
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 600; color: #111827;">Amit Patel</td>
                        <td style="padding: 14px 18px; color: #4B5563;">17 Aug 2026</td>
                        <td style="padding: 14px 18px; color: #4B5563;">3 items</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">12,200.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-warning" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 600; background: #FFEDD5; color: #C2410C;">Partial</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-warning" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 500; background: #FEF3C7; color: #B45309;">Pending</span>
                        </td>
                    </tr>

                    <!-- Row 3: SO-2026-0122 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0122") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0122
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 600; color: #111827;">Mahesh Shah</td>
                        <td style="padding: 14px 18px; color: #4B5563;">16 Aug 2026</td>
                        <td style="padding: 14px 18px; color: #4B5563;">12 items</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">45,600.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-success" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 600; background: #EAF8EF; color: #15803D;">Paid</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-neutral" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 500; background: #E5E7EB; color: #374151;">Completed</span>
                        </td>
                    </tr>

                    <!-- Row 4: SO-2026-0121 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0121") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0121
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 600; color: #111827;">Kiran Desai</td>
                        <td style="padding: 14px 18px; color: #4B5563;">16 Aug 2026</td>
                        <td style="padding: 14px 18px; color: #4B5563;">2 items</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">4,850.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-danger" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 600; background: #FEE2E2; color: #DC2626;">Unpaid</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-neutral" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 500; background: #F3F4F6; color: #4B5563;">Draft</span>
                        </td>
                    </tr>

                    <!-- Row 5: SO-2026-0120 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0120") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0120
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 600; color: #111827;">Hardik Mehta</td>
                        <td style="padding: 14px 18px; color: #4B5563;">15 Aug 2026</td>
                        <td style="padding: 14px 18px; color: #4B5563;">8 items</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">22,300.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-success" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 600; background: #EAF8EF; color: #15803D;">Paid</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-neutral" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 500; background: #E5E7EB; color: #374151;">Completed</span>
                        </td>
                    </tr>

                    <!-- Row 6: SO-2026-0119 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0119") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0119
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 600; color: #111827;">Nilesh Shah</td>
                        <td style="padding: 14px 18px; color: #4B5563;">15 Aug 2026</td>
                        <td style="padding: 14px 18px; color: #4B5563;">1 item</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">1,250.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-danger" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 600; background: #FEE2E2; color: #DC2626;">Unpaid</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-danger" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 500; background: #FEE2E2; color: #DC2626;">Cancelled</span>
                        </td>
                    </tr>

                    <!-- Row 7: SO-2026-0118 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0124") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0118
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 600; color: #111827;">Sanjay Patel</td>
                        <td style="padding: 14px 18px; color: #4B5563;">14 Aug 2026</td>
                        <td style="padding: 14px 18px; color: #4B5563;">6 items</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">31,400.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-success" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 600; background: #EAF8EF; color: #15803D;">Paid</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-neutral" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 500; background: #E5E7EB; color: #374151;">Completed</span>
                        </td>
                    </tr>

                    <!-- Row 8: SO-2026-0117 -->
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 18px;">
                            <a href="<%= ResolveUrl("~/Sales/Invoice.aspx?id=SO-2026-0124") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                SO-2026-0117
                            </a>
                        </td>
                        <td style="padding: 14px 18px; font-weight: 600; color: #111827;">Dhruv Joshi</td>
                        <td style="padding: 14px 18px; color: #4B5563;">14 Aug 2026</td>
                        <td style="padding: 14px 18px; color: #4B5563;">4 items</td>
                        <td style="padding: 14px 18px; text-align: right; font-weight: 700; color: #111827;">15,900.00</td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-warning" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 600; background: #FFEDD5; color: #C2410C;">Partial</span>
                        </td>
                        <td style="padding: 14px 18px; text-align: center;">
                            <span class="sf-pill sf-pill-warning" style="padding: 3px 12px; border-radius: 999px; font-size: 11.5px; font-weight: 500; background: #FEF3C7; color: #B45309;">Pending</span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Pagination Footer (Matching Image 5) -->
        <div class="sf-table-footer" style="padding: 14px 20px; display: flex; justify-content: space-between; align-items: center; background: #ffffff; border-top: 1px solid #E5E7EB;">
            <div style="font-size: 12.5px; color: #6B7280;">Showing 1-8 of 124 sales</div>
            <div class="sf-pagination" style="display: flex; align-items: center; gap: 4px;">
                <button type="button" class="sf-page-btn" style="border: 1px solid #D1D5DB; background: #ffffff; color: #4B5563; padding: 4px 10px; border-radius: 4px; font-size: 12px; cursor: pointer;">‹ Previous</button>
                <button type="button" class="sf-page-btn active" style="border: 1px solid #3DA86F; background: #3DA86F; color: #ffffff; font-weight: 600; padding: 4px 11px; border-radius: 4px; font-size: 12px; cursor: pointer;">1</button>
                <button type="button" class="sf-page-btn" style="border: 1px solid #D1D5DB; background: #ffffff; color: #4B5563; padding: 4px 10px; border-radius: 4px; font-size: 12px; cursor: pointer;">2</button>
                <button type="button" class="sf-page-btn" style="border: 1px solid #D1D5DB; background: #ffffff; color: #4B5563; padding: 4px 10px; border-radius: 4px; font-size: 12px; cursor: pointer;">3</button>
                <span style="padding: 0 4px; color: #9CA3AF; font-size: 12px;">...</span>
                <button type="button" class="sf-page-btn" style="border: 1px solid #D1D5DB; background: #ffffff; color: #4B5563; padding: 4px 10px; border-radius: 4px; font-size: 12px; cursor: pointer;">16</button>
                <button type="button" class="sf-page-btn" style="border: 1px solid #D1D5DB; background: #ffffff; color: #4B5563; padding: 4px 10px; border-radius: 4px; font-size: 12px; cursor: pointer;">Next ›</button>
            </div>
        </div>
    </div>

    <!-- Client-side Search / Filtering Script -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var searchInput = document.getElementById('salesSearchInput');
            var statusSelect = document.getElementById('salesStatusSelect');
            var paymentSelect = document.getElementById('salesPaymentSelect');
            var table = document.getElementById('salesTable');
            var rows = table.getElementsByTagName('tbody')[0].getElementsByTagName('tr');

            function filterRows() {
                var query = searchInput.value.toLowerCase().trim();
                var status = statusSelect.value.toLowerCase();
                var payment = paymentSelect.value.toLowerCase();

                for (var i = 0; i < rows.length; i++) {
                    var row = rows[i];
                    var text = row.innerText.toLowerCase();
                    var matchQuery = !query || text.indexOf(query) >= 0;
                    var matchStatus = !status || text.indexOf(status) >= 0;
                    var matchPayment = !payment || text.indexOf(payment) >= 0;

                    if (matchQuery && matchStatus && matchPayment) {
                        row.style.display = '';
                    } else {
                        row.style.display = 'none';
                    }
                }
            }

            if (searchInput) searchInput.addEventListener('input', filterRows);
            if (statusSelect) statusSelect.addEventListener('change', filterRows);
            if (paymentSelect) paymentSelect.addEventListener('change', filterRows);

            window.clearSalesFilters = function () {
                if (searchInput) searchInput.value = '';
                if (statusSelect) statusSelect.value = '';
                if (paymentSelect) paymentSelect.value = '';
                var dateSelect = document.getElementById('salesDateSelect');
                if (dateSelect) dateSelect.value = '30';
                filterRows();
            };
        });
    </script>
</asp:Content>
