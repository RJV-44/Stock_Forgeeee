<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintPurchaseOrder.aspx.cs" Inherits="Stock_Forgeeee.Purchases.PrintPurchaseOrder" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Purchase Order PO-2026-0048 - StockForge</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
    <link href="<%= ResolveUrl("~/Content/site.css") %>" rel="stylesheet" type="text/css" />
    <style>
        body {
            background: #EFF2F5;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
            margin: 0;
            padding: 0;
            color: #1F2937;
        }
        .doc-toolbar {
            background: #ffffff;
            border-bottom: 1px solid #E5E7EB;
            padding: 12px 32px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        .doc-sheet {
            background: #ffffff;
            max-width: 860px;
            margin: 32px auto 60px;
            padding: 44px 48px;
            border: 1px solid #E5E7EB;
            box-shadow: 0 4px 20px rgba(0,0,0,0.05);
            border-radius: 6px;
        }
        .format-pills {
            display: inline-flex;
            background: #F3F4F6;
            border-radius: 6px;
            padding: 2px;
        }
        .format-pill {
            padding: 4px 12px;
            font-size: 12px;
            font-weight: 500;
            border: none;
            background: none;
            color: #4B5563;
            cursor: pointer;
            border-radius: 4px;
        }
        .format-pill.active {
            background: #ffffff;
            color: #111827;
            box-shadow: 0 1px 2px rgba(0,0,0,0.05);
            font-weight: 600;
        }
        .po-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
            margin-bottom: 24px;
        }
        .po-table th {
            padding: 10px 14px;
            font-size: 11px;
            font-weight: 700;
            color: #4B5563;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            border-bottom: 1px solid #E5E7EB;
            background: #FAFAFA;
        }
        .po-table td {
            padding: 14px;
            border-bottom: 1px solid #F3F4F6;
            vertical-align: middle;
        }
        @media print {
            .doc-toolbar { display: none !important; }
            body { background: #ffffff !important; }
            .doc-sheet {
                border: none !important;
                box-shadow: none !important;
                margin: 0 !important;
                padding: 0 !important;
                max-width: 100% !important;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Top Toolbar (Matching Image 1 / Figma) -->
        <div class="doc-toolbar">
            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" style="color: #374151; font-size: 13.5px; font-weight: 600; text-decoration: none; display: flex; align-items: center; gap: 8px;">
                <i class="bi bi-arrow-left"></i> Purchase Order Details
            </a>

            <!-- Center Format & Orientation Selector -->
            <div style="display: flex; align-items: center; gap: 16px;">
                <div class="format-pills">
                    <button type="button" class="format-pill active">A4</button>
                    <button type="button" class="format-pill">Letter</button>
                    <button type="button" class="format-pill">Receipt</button>
                </div>
                <div style="display: flex; gap: 4px;">
                    <button type="button" class="icon-button" style="width: 32px; height: 32px; border-radius: 4px; border: 1px solid #D1D5DB; background: #ffffff; color: #111827; display: flex; align-items: center; justify-content: center; cursor: pointer;" title="Portrait">
                        <i class="bi bi-file-earmark"></i>
                    </button>
                    <button type="button" class="icon-button" style="width: 32px; height: 32px; border-radius: 4px; border: 1px solid #E5E7EB; background: #ffffff; color: #9CA3AF; display: flex; align-items: center; justify-content: center; cursor: pointer;" title="Landscape">
                        <i class="bi bi-file-earmark-landscape"></i>
                    </button>
                </div>
            </div>

            <!-- Right Actions: PDF and Print -->
            <div style="display: flex; align-items: center; gap: 10px;">
                <button type="button" class="btn-outline-action" onclick="window.print()" style="background: #ffffff; color: #374151; border: 1px solid #D1D5DB; border-radius: 6px; padding: 7px 16px; font-size: 13px; font-weight: 500; cursor: pointer; display: inline-flex; align-items: center; gap: 6px;">
                    <i class="bi bi-download"></i> PDF
                </button>
                <button type="button" class="btn-success-dark" onclick="window.print()" style="background: #005C3B; color: #ffffff; border: none; border-radius: 6px; padding: 8px 18px; font-size: 13px; font-weight: 600; cursor: pointer; display: inline-flex; align-items: center; gap: 6px;">
                    <i class="bi bi-printer"></i> Print
                </button>
            </div>
        </div>

        <!-- Centered PO Sheet Container (Matching Image 1) -->
        <div class="doc-sheet">
            <!-- Header Section -->
            <div style="display: flex; justify-content: space-between; align-items: flex-start; padding-bottom: 24px; border-bottom: 1px solid #E5E7EB; margin-bottom: 24px;">
                <!-- Left: StockForge Info -->
                <div style="display: flex; align-items: flex-start; gap: 14px;">
                    <div style="width: 44px; height: 44px; border-radius: 8px; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                        <svg width="42" height="42" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <rect width="40" height="40" rx="8" fill="#EAF8EF"/>
                            <rect x="8" y="10" width="10" height="8" rx="2" fill="#006C44"/>
                            <rect x="20" y="10" width="12" height="8" rx="2" fill="#86EFAC"/>
                            <rect x="8" y="20" width="12" height="8" rx="2" fill="#86EFAC"/>
                            <rect x="22" y="20" width="10" height="8" rx="2" fill="#006C44"/>
                            <circle cx="13" cy="14" r="1.5" fill="#FFFFFF"/>
                            <circle cx="27" cy="24" r="1.5" fill="#FFFFFF"/>
                        </svg>
                    </div>
                    <div>
                        <div style="font-size: 18px; font-weight: 700; color: #006C44; letter-spacing: -0.3px;">StockForge</div>
                        <div style="font-size: 12.5px; color: #4B5563; margin-top: 3px;">Hardware Supplies, Ahmedabad</div>
                        <div style="font-size: 12.5px; color: #4B5563;">GSTIN: 24STOCKFORGE1Z5</div>
                        <div style="font-size: 12.5px; color: #4B5563;">info@stockforge.in | +91 98765 43210</div>
                    </div>
                </div>

                <!-- Right: Title, PO Number, Date, Status -->
                <div style="text-align: right;">
                    <div style="font-size: 16px; font-weight: 700; color: #111827; letter-spacing: 0.5px;">PURCHASE ORDER</div>
                    <div style="font-size: 13px; color: #4B5563; margin-top: 4px;"><strong>PO NUMBER:</strong> PO-2026-0048</div>
                    <div style="font-size: 13px; color: #4B5563;"><strong>DATE:</strong> 16/08/2026</div>
                    <div style="margin-top: 6px; font-size: 12.5px; color: #4B5563;">
                        <strong>STATUS:</strong>
                        <span class="sf-pill sf-pill-neutral" style="font-size: 11px; font-weight: 600; padding: 3px 10px; background: #E5E7EB; color: #374151; border-radius: 4px; display: inline-block;">PENDING</span>
                    </div>
                </div>
            </div>

            <!-- 3 Columns Info Strip (Matching Image 1) -->
            <div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 24px; margin-bottom: 28px;">
                <!-- Column 1: Supplier -->
                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.5px;">SUPPLIER</div>
                    <div style="font-size: 13.5px; font-weight: 700; color: #111827;">ABC Hardware Suppliers</div>
                    <div style="font-size: 12.5px; color: #4B5563; margin-top: 2px;">15, Industrial Estate Road</div>
                    <div style="font-size: 12.5px; color: #4B5563;">Vatva, Ahmedabad - 382445</div>
                    <div style="font-size: 12.5px; color: #4B5563;">GSTIN: 24ABCDE1234F1Z5</div>
                    <div style="font-size: 12.5px; color: #4B5563;">Contact: Raj Patel</div>
                </div>

                <!-- Column 2: Deliver To -->
                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.5px;">DELIVER TO</div>
                    <div style="font-size: 13.5px; font-weight: 700; color: #111827;">StockForge Warehouse</div>
                    <div style="font-size: 12.5px; color: #4B5563; margin-top: 2px;">123 Industrial Estate</div>
                    <div style="font-size: 12.5px; color: #4B5563;">Changodar, Ahmedabad - 382213</div>
                    <div style="font-size: 12.5px; color: #4B5563;">Attn: Receiving Dept</div>
                </div>

                <!-- Column 3: Order Details -->
                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.5px;">ORDER DETAILS</div>
                    <div style="font-size: 12.5px; color: #4B5563; margin-bottom: 4px;"><strong>Expected:</strong> 25/08/2026</div>
                    <div style="font-size: 12.5px; color: #4B5563; margin-bottom: 4px;"><strong>Shipping Method:</strong> Road Transport</div>
                    <div style="font-size: 12.5px; color: #4B5563;"><strong>Payment Terms:</strong> Net 30</div>
                </div>
            </div>

            <!-- Items Table (Matching Image 1) -->
            <table class="po-table">
                <thead>
                    <tr>
                        <th style="width: 5%;">#</th>
                        <th style="width: 32%;">PRODUCT</th>
                        <th style="width: 18%;">SKU</th>
                        <th style="width: 8%; text-align: center;">QTY</th>
                        <th style="width: 12%; text-align: right;">UNIT COST</th>
                        <th style="width: 12%; text-align: right;">TAX (18%)</th>
                        <th style="width: 13%; text-align: right;">TOTAL</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="color: #6B7280;">1</td>
                        <td style="font-weight: 600; color: #111827;">Bosch 10mm Drill</td>
                        <td style="color: #6B7280;">DRL-BOS-10MM</td>
                        <td style="text-align: center; font-weight: 600; color: #111827;">20</td>
                        <td style="text-align: right;">₹1,499.00</td>
                        <td style="text-align: right;">₹5,396.40</td>
                        <td style="text-align: right; font-weight: 700; color: #111827;">₹35,376.40</td>
                    </tr>
                    <tr>
                        <td style="color: #6B7280;">2</td>
                        <td style="font-weight: 600; color: #111827;">Stanley Claw Hammer 16oz</td>
                        <td style="color: #6B7280;">HMR-STN-16OZ</td>
                        <td style="text-align: center; font-weight: 600; color: #111827;">50</td>
                        <td style="text-align: right;">₹450.00</td>
                        <td style="text-align: right;">₹4,050.00</td>
                        <td style="text-align: right; font-weight: 700; color: #111827;">₹26,550.00</td>
                    </tr>
                    <tr>
                        <td style="color: #6B7280;">3</td>
                        <td style="font-weight: 600; color: #111827;">Safety Goggles (Clear)</td>
                        <td style="color: #6B7280;">PPE-GOG-CLR</td>
                        <td style="text-align: center; font-weight: 600; color: #111827;">100</td>
                        <td style="text-align: right;">₹85.00</td>
                        <td style="text-align: right;">₹1,530.00</td>
                        <td style="text-align: right; font-weight: 700; color: #111827;">₹10,030.00</td>
                    </tr>
                </tbody>
            </table>

            <!-- Financial Summary (Matching Image 1) -->
            <div style="display: flex; justify-content: flex-end; margin-bottom: 32px;">
                <div style="width: 320px;">
                    <div style="display: flex; justify-content: space-between; padding: 5px 0; font-size: 13.5px; color: #4B5563;">
                        <span>Subtotal</span>
                        <strong style="color: #111827;">₹60,980.00</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; padding: 5px 0; font-size: 13.5px; color: #DC2626;">
                        <span>Discount (5%)</span>
                        <strong>- ₹3,049.00</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; padding: 5px 0; font-size: 13.5px; color: #4B5563;">
                        <span>Tax (IGST 18%)</span>
                        <strong style="color: #111827;">₹10,976.40</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; align-items: center; padding: 12px 16px; margin-top: 8px; background: #EAF8EF; border-radius: 6px; color: #15803D;">
                        <span style="font-size: 13.5px; font-weight: 700; text-transform: uppercase;">GRAND TOTAL</span>
                        <span style="font-size: 19px; font-weight: 800;">₹68,907.40</span>
                    </div>
                </div>
            </div>

            <!-- Terms & Signatures (Matching Image 1) -->
            <div style="border-top: 1px solid #E5E7EB; padding-top: 28px; margin-top: 24px; display: grid; grid-template-columns: 1.2fr 1fr; gap: 48px; align-items: flex-end;">
                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 8px; letter-spacing: 0.5px;">TERMS & NOTES</div>
                    <div style="font-size: 12.5px; color: #4B5563; line-height: 1.7;">
                        Please deliver between 9 AM and 5 PM on weekdays.<br />
                        All items must include warranty cards where applicable.<br />
                        Invoices must reference PO-2026-0048.
                    </div>
                </div>

                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 28px; text-align: center;">
                    <div>
                        <div style="border-top: 1px solid #D1D5DB; width: 100%; margin: 0 auto 8px;"></div>
                        <div style="font-size: 11px; color: #6B7280; margin-bottom: 4px;">Prepared By</div>
                        <div style="font-size: 13.5px; font-weight: 600; color: #111827;">A. Sharma</div>
                    </div>
                    <div>
                        <div style="border-top: 1px solid #D1D5DB; width: 100%; margin: 0 auto 8px;"></div>
                        <div style="font-size: 11px; color: #6B7280; margin-bottom: 4px;">Approved By</div>
                        <div style="font-size: 13.5px; font-weight: 600; color: #111827;">M. Patel</div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
