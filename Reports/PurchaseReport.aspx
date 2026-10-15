<%@ Page Title="Purchase Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseReport.aspx.cs" Inherits="Stock_Forgeeee.Reports.PurchaseReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; margin-bottom: 12px;">
        <a href="<%= ResolveUrl("~/Reports/ReportsDashboard.aspx") %>" style="color: #6B7280; text-decoration: none;">Reports</a>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <span style="color: #111827; font-weight: 600;">Purchase Report</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827; margin: 0 0 4px 0;">Purchase Report</h1>
            <div class="sf-page-subtitle" style="font-size: 13.5px; color: #6B7280;">Analyze purchasing activity, supplier spending and purchase orders.</div>
        </div>
        <div class="sf-header-actions">
            <button type="button" class="btn-outline-action" style="display: inline-flex; align-items: center; gap: 8px; padding: 7px 14px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; cursor: pointer;">
                <i class="bi bi-download" style="font-size: 13px; color: #6B7280;"></i> Export <i class="bi bi-chevron-down" style="font-size: 10px; color: #6B7280; margin-left: 4px;"></i>
            </button>
        </div>
    </div>

    <!-- Filter Bar (Matching Figma Screenshot 3) -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 12px 18px; margin-bottom: 20px;">
        <div style="display: flex; align-items: center; gap: 12px; flex-wrap: wrap;">
            <div style="position: relative; display: inline-flex; align-items: center;">
                <i class="bi bi-calendar3" style="position: absolute; left: 12px; font-size: 12px; color: #6B7280; pointer-events: none;"></i>
                <select style="appearance: none; -webkit-appearance: none; padding: 7px 30px 7px 32px; background: #FFFFFF url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'16\' viewBox=\'0 0 24 24\' width=\'16\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>') no-repeat right 8px center; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; cursor: pointer;">
                    <option selected>This Month</option>
                    <option>Last Month</option>
                    <option>This Quarter</option>
                </select>
            </div>

            <div style="position: relative; display: inline-flex; align-items: center;">
                <i class="bi bi-shop" style="position: absolute; left: 12px; font-size: 12px; color: #6B7280; pointer-events: none;"></i>
                <select style="appearance: none; -webkit-appearance: none; padding: 7px 30px 7px 32px; background: #FFFFFF url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'16\' viewBox=\'0 0 24 24\' width=\'16\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>') no-repeat right 8px center; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; cursor: pointer;">
                    <option selected>Supplier (All)</option>
                    <option>ABC Hardware Suppliers</option>
                    <option>Patel Industrial Supply</option>
                    <option>Global Tools Inc.</option>
                </select>
            </div>

            <div style="position: relative; display: inline-flex; align-items: center;">
                <i class="bi bi-tools" style="position: absolute; left: 12px; font-size: 12px; color: #6B7280; pointer-events: none;"></i>
                <select style="appearance: none; -webkit-appearance: none; padding: 7px 30px 7px 32px; background: #FFFFFF url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'16\' viewBox=\'0 0 24 24\' width=\'16\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>') no-repeat right 8px center; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; cursor: pointer;">
                    <option selected>Product (All)</option>
                    <option>Power Tools</option>
                    <option>Fasteners</option>
                </select>
            </div>

            <div style="position: relative; display: inline-flex; align-items: center;">
                <i class="bi bi-flag" style="position: absolute; left: 12px; font-size: 12px; color: #6B7280; pointer-events: none;"></i>
                <select style="appearance: none; -webkit-appearance: none; padding: 7px 30px 7px 32px; background: #FFFFFF url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'16\' viewBox=\'0 0 24 24\' width=\'16\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>') no-repeat right 8px center; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; cursor: pointer;">
                    <option selected>Status (All)</option>
                    <option>Received</option>
                    <option>Pending</option>
                </select>
            </div>

            <div style="margin-left: auto; display: flex; align-items: center; gap: 14px;">
                <button type="button" style="background: transparent; border: none; font-size: 13px; color: #6B7280; cursor: pointer; padding: 6px 8px;">Clear</button>
                <button type="button" style="padding: 8px 18px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; font-size: 13px; font-weight: 600; color: #FFFFFF; cursor: pointer;">Apply Filters</button>
            </div>
        </div>
    </div>

    <!-- 4 Metric Cards -->
    <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 24px;">
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="text-transform: uppercase; font-size: 11px; font-weight: 700; color: #6B7280; letter-spacing: 0.3px;">Total Purchases</div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 8px; font-variant-numeric: tabular-nums;">₹8,45,750.00</div>
        </div>

        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="text-transform: uppercase; font-size: 11px; font-weight: 700; color: #6B7280; letter-spacing: 0.3px;">Purchase Orders</div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 8px; font-variant-numeric: tabular-nums;">48</div>
        </div>

        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="text-transform: uppercase; font-size: 11px; font-weight: 700; color: #6B7280; letter-spacing: 0.3px;">Average Order</div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 8px; font-variant-numeric: tabular-nums;">₹17,619.79</div>
        </div>

        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="text-transform: uppercase; font-size: 11px; font-weight: 700; color: #6B7280; letter-spacing: 0.3px;">Pending Orders</div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 8px; font-variant-numeric: tabular-nums;">8</div>
        </div>
    </div>

    <!-- Middle 2 Cards: Trend & Breakdown -->
    <div style="display: grid; grid-template-columns: 1.6fr 1fr; gap: 20px; margin-bottom: 24px;">
        <!-- Purchase Trend Card -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Purchase Trend</div>
                <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.3px;">THIS MONTH</div>
            </div>

            <div style="height: 120px; display: flex; align-items: flex-end; justify-content: space-between; gap: 10px; padding: 10px 10px 0 10px;">
                <div style="flex: 1; height: 35px; background: #CBDED5; border-radius: 2px;"></div>
                <div style="flex: 1; height: 60px; background: #CBDED5; border-radius: 2px;"></div>
                <div style="flex: 1; height: 110px; background: #006C44; border-radius: 2px;"></div>
                <div style="flex: 1; height: 45px; background: #CBDED5; border-radius: 2px;"></div>
                <div style="flex: 1; height: 68px; background: #CBDED5; border-radius: 2px;"></div>
                <div style="flex: 1; height: 82px; background: #CBDED5; border-radius: 2px;"></div>
                <div style="flex: 1; height: 26px; background: #CBDED5; border-radius: 2px;"></div>
            </div>
        </div>

        <!-- Breakdown Card -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px;">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 18px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Breakdown</div>
                <select style="appearance: none; -webkit-appearance: none; padding: 3px 20px 3px 8px; background: #FFFFFF url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'14\' viewBox=\'0 0 24 24\' width=\'14\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>') no-repeat right 4px center; border: 1px solid #D1D5DB; border-radius: 4px; font-size: 11.5px; color: #4B5563; cursor: pointer;">
                    <option selected>Supplier</option>
                    <option>Category</option>
                </select>
            </div>

            <div style="display: flex; flex-direction: column; gap: 18px;">
                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 13px; margin-bottom: 6px;">
                        <span style="color: #111827; font-weight: 500;">ABC Hardware Suppliers</span>
                        <strong style="font-variant-numeric: tabular-nums; color: #111827;">₹2,45,850.00</strong>
                    </div>
                    <div style="height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                        <div style="width: 72%; height: 100%; background: #006C44;"></div>
                    </div>
                </div>

                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 13px; margin-bottom: 6px;">
                        <span style="color: #111827; font-weight: 500;">Patel Industrial Supply</span>
                        <strong style="font-variant-numeric: tabular-nums; color: #111827;">₹1,85,400.00</strong>
                    </div>
                    <div style="height: 6px; background: #E5E7EB; border-radius: 3px; overflow: hidden;">
                        <div style="width: 55%; height: 100%; background: #CBDED5;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Purchase Orders Table Card -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; margin-bottom: 24px; overflow: hidden;">
        <div style="padding: 16px 20px; border-bottom: 1px solid #E5E7EB;">
            <div style="font-size: 15px; font-weight: 700; color: #111827;">Purchase Orders</div>
        </div>

        <div style="overflow-x: auto;">
            <table style="width: 100%; border-collapse: collapse; text-align: left; font-size: 13px;">
                <thead>
                    <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB; color: #6B7280; font-size: 11px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.3px;">
                        <th style="padding: 12px 20px; width: 18%;">PO NUMBER</th>
                        <th style="padding: 12px 20px; width: 26%;">SUPPLIER</th>
                        <th style="padding: 12px 20px; width: 18%;">DATE</th>
                        <th style="padding: 12px 20px; width: 10%; text-align: center;">ITEMS</th>
                        <th style="padding: 12px 20px; width: 16%; text-align: right;">TOTAL</th>
                        <th style="padding: 12px 20px; width: 10%;">STATUS</th>
                        <th style="padding: 12px 16px; width: 4%; text-align: center;"></th>
                    </tr>
                </thead>
                <tbody style="divide-y: 1px solid #E5E7EB;">
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px;">
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-9012") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                PO-9012
                            </a>
                        </td>
                        <td style="padding: 14px 20px; color: #111827;">ABC Hardware Suppliers</td>
                        <td style="padding: 14px 20px; color: #4B5563;">24 Oct, 2023</td>
                        <td style="padding: 14px 20px; text-align: center; font-weight: 500; color: #111827;">12</td>
                        <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹1,12,500.00</td>
                        <td style="padding: 14px 20px;">
                            <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 700; color: #15803D;">
                                RECEIVED
                            </span>
                        </td>
                        <td style="padding: 14px 16px; text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots-vertical" style="cursor: pointer;"></i></td>
                    </tr>
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px;">
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-9013") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                PO-9013
                            </a>
                        </td>
                        <td style="padding: 14px 20px; color: #111827;">Patel Industrial Supply</td>
                        <td style="padding: 14px 20px; color: #4B5563;">23 Oct, 2023</td>
                        <td style="padding: 14px 20px; text-align: center; font-weight: 500; color: #111827;">4</td>
                        <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹45,200.00</td>
                        <td style="padding: 14px 20px;">
                            <span style="display: inline-block; padding: 2px 8px; background: #F3F4F6; border-radius: 4px; font-size: 11px; font-weight: 700; color: #4B5563;">
                                PENDING
                            </span>
                        </td>
                        <td style="padding: 14px 16px; text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots-vertical" style="cursor: pointer;"></i></td>
                    </tr>
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px;">
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-9014") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                PO-9014
                            </a>
                        </td>
                        <td style="padding: 14px 20px; color: #111827;">Global Tools Inc.</td>
                        <td style="padding: 14px 20px; color: #4B5563;">21 Oct, 2023</td>
                        <td style="padding: 14px 20px; text-align: center; font-weight: 500; color: #111827;">28</td>
                        <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹3,45,000.00</td>
                        <td style="padding: 14px 20px;">
                            <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 700; color: #15803D;">
                                RECEIVED
                            </span>
                        </td>
                        <td style="padding: 14px 16px; text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots-vertical" style="cursor: pointer;"></i></td>
                    </tr>
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px;">
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-9015") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                PO-9015
                            </a>
                        </td>
                        <td style="padding: 14px 20px; color: #111827;">ABC Hardware Suppliers</td>
                        <td style="padding: 14px 20px; color: #4B5563;">20 Oct, 2023</td>
                        <td style="padding: 14px 20px; text-align: center; font-weight: 500; color: #111827;">1</td>
                        <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹12,850.00</td>
                        <td style="padding: 14px 20px;">
                            <span style="display: inline-block; padding: 2px 8px; background: #F3F4F6; border-radius: 4px; font-size: 11px; font-weight: 700; color: #4B5563;">
                                PENDING
                            </span>
                        </td>
                        <td style="padding: 14px 16px; text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots-vertical" style="cursor: pointer;"></i></td>
                    </tr>
                    <tr>
                        <td style="padding: 14px 20px;">
                            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-9016") %>" style="color: #006C44; font-weight: 600; text-decoration: none;">
                                PO-9016
                            </a>
                        </td>
                        <td style="padding: 14px 20px; color: #111827;">Mega Fasteners</td>
                        <td style="padding: 14px 20px; color: #4B5563;">18 Oct, 2023</td>
                        <td style="padding: 14px 20px; text-align: center; font-weight: 500; color: #111827;">8</td>
                        <td style="padding: 14px 20px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹84,300.00</td>
                        <td style="padding: 14px 20px;">
                            <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 700; color: #15803D;">
                                RECEIVED
                            </span>
                        </td>
                        <td style="padding: 14px 16px; text-align: center; color: #9CA3AF;"><i class="bi bi-three-dots-vertical" style="cursor: pointer;"></i></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Table Footer -->
        <div style="padding: 14px 20px; border-top: 1px solid #E5E7EB; display: flex; justify-content: space-between; align-items: center; font-size: 13px; color: #6B7280;">
            <div>Showing 1-5 of 48</div>
            <div style="display: flex; gap: 6px;">
                <button type="button" style="width: 32px; height: 32px; border: 1px solid #D1D5DB; border-radius: 6px; background: #FFFFFF; display: inline-flex; align-items: center; justify-content: center; color: #4B5563; cursor: pointer;"><i class="bi bi-chevron-left" style="font-size: 11px;"></i></button>
                <button type="button" style="width: 32px; height: 32px; border: 1px solid #D1D5DB; border-radius: 6px; background: #FFFFFF; display: inline-flex; align-items: center; justify-content: center; color: #4B5563; cursor: pointer;"><i class="bi bi-chevron-right" style="font-size: 11px;"></i></button>
            </div>
        </div>
    </div>
</asp:Content>
