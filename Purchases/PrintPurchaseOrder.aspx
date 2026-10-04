<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintPurchaseOrder.aspx.cs" Inherits="Stock_Forgeeee.Purchases.PrintPurchaseOrder" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Purchase Order PO-2026-0048 - StockForge</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
    <link href="<%= ResolveUrl("~/Content/site.css") %>" rel="stylesheet" type="text/css" />
    <style>
        body {
            background: #EFF2F5;
            font-family: 'Inter', sans-serif;
            margin: 0;
            padding: 0;
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
            padding: 48px;
            border: 1px solid #E5E7EB;
            box-shadow: 0 4px 20px rgba(0,0,0,0.06);
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
        <!-- Top Toolbar (Matching StockForge Responsive Purchase Order System.png) -->
        <div class="doc-toolbar">
            <a href="<%= ResolveUrl("~/Purchases/PurchaseOrderDetails.aspx?id=PO-2026-0048") %>" style="color: #374151; font-size: 13.5px; font-weight: 500; text-decoration: none; display: flex; align-items: center; gap: 8px;">
                <i class="bi bi-arrow-left"></i> Purchase Order Details
            </a>

            <div style="display: flex; align-items: center; gap: 16px;">
                <div class="format-pills">
                    <button type="button" class="format-pill active">A4</button>
                    <button type="button" class="format-pill">Letter</button>
                    <button type="button" class="format-pill">Receipt</button>
                </div>
                <div style="display: flex; gap: 4px;">
                    <button type="button" class="icon-button" style="width: 32px; height: 32px; border-radius: 4px;" title="Portrait"><i class="bi bi-file-earmark"></i></button>
                    <button type="button" class="icon-button" style="width: 32px; height: 32px; border-radius: 4px;" title="Landscape"><i class="bi bi-file-earmark-landscape"></i></button>
                </div>
            </div>

            <div style="display: flex; align-items: center; gap: 10px;">
                <button type="button" class="btn-outline-action" onclick="window.print()">
                    <i class="bi bi-download"></i> PDF
                </button>
                <button type="button" class="btn-success-dark" onclick="window.print()">
                    <i class="bi bi-printer"></i> Print
                </button>
            </div>
        </div>

        <!-- A4 Centered Sheet -->
        <div class="doc-sheet">
            <!-- Header Section -->
            <div style="display: flex; justify-content: space-between; align-items: flex-start; padding-bottom: 24px; border-bottom: 1px solid #E5E7EB; margin-bottom: 24px;">
                <div style="display: flex; align-items: flex-start; gap: 14px;">
                    <div style="width: 44px; height: 44px; background: #006C44; color: #fff; border-radius: 8px; display: flex; align-items: center; justify-content: center; font-size: 24px;">
                        <i class="bi bi-box-seam"></i>
                    </div>
                    <div>
                        <div style="font-size: 18px; font-weight: 700; color: #111827;">StockForge</div>
                        <div style="font-size: 12.5px; color: #4B5563; margin-top: 2px;">Hardware Supplies, Ahmedabad</div>
                        <div style="font-size: 12.5px; color: #4B5563;">GSTIN: 24STOCKFORGE1Z5</div>
                        <div style="font-size: 12.5px; color: #4B5563;">info@stockforge.in | +91 98765 43210</div>
                    </div>
                </div>

                <div style="text-align: right;">
                    <div style="font-size: 16px; font-weight: 700; color: #111827; letter-spacing: 0.5px;">PURCHASE ORDER</div>
                    <div style="font-size: 13px; color: #4B5563; margin-top: 4px;"><strong>PO NUMBER:</strong> PO-2026-0048</div>
                    <div style="font-size: 13px; color: #4B5563;"><strong>DATE:</strong> 16/08/2026</div>
                    <div style="margin-top: 4px;"><span class="sf-pill sf-pill-neutral" style="font-size: 11px;">PENDING</span></div>
                </div>
            </div>

            <!-- 3 Columns Info Strip -->
            <div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 24px; margin-bottom: 28px;">
                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 6px;">Supplier</div>
                    <div style="font-size: 13.5px; font-weight: 700; color: #111827;">ABC Hardware Suppliers</div>
                    <div style="font-size: 12.5px; color: #4B5563; margin-top: 2px;">15, Industrial Estate Road</div>
                    <div style="font-size: 12.5px; color: #4B5563;">Vatva, Ahmedabad - 382445</div>
                    <div style="font-size: 12.5px; color: #4B5563;">GSTIN: 24ABCDE1234F1Z5</div>
                    <div style="font-size: 12.5px; color: #4B5563;">Contact: Raj Patel</div>
                </div>

                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 6px;">Deliver To</div>
                    <div style="font-size: 13.5px; font-weight: 700; color: #111827;">StockForge Warehouse</div>
                    <div style="font-size: 12.5px; color: #4B5563; margin-top: 2px;">123 Industrial Estate</div>
                    <div style="font-size: 12.5px; color: #4B5563;">Changodar, Ahmedabad - 382213</div>
                    <div style="font-size: 12.5px; color: #4B5563;">Attn: Receiving Dept</div>
                </div>

                <div>
                    <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 6px;">Order Details</div>
                    <div style="font-size: 12.5px; color: #4B5563; margin-bottom: 4px;"><strong>Expected:</strong> 25/08/2026</div>
                    <div style="font-size: 12.5px; color: #4B5563; margin-bottom: 4px;"><strong>Shipping Method:</strong> Road Transport</div>
                    <div style="font-size: 12.5px; color: #4B5563;"><strong>Payment Terms:</strong> Net 30</div>
                </div>
            </div>

            <!-- Items Table -->
            <table class="sf-table" style="margin-bottom: 24px;">
                <thead>
                    <tr>
                        <th style="width: 5%;">#</th>
                        <th style="width: 32%;">Product</th>
                        <th style="width: 18%;">SKU</th>
                        <th style="width: 8%; text-align: center;">Qty</th>
                        <th style="width: 12%; text-align: right;">Unit Cost</th>
                        <th style="width: 12%; text-align: right;">Tax (18%)</th>
                        <th style="width: 13%; text-align: right;">Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td style="font-weight: 600; color: #111827;">Bosch 10mm Drill</td>
                        <td style="color: #6B7280;">DRL-BOS-10MM</td>
                        <td style="text-align: center; font-weight: 600;">20</td>
                        <td style="text-align: right;">₹1,499.00</td>
                        <td style="text-align: right;">₹5,396.40</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹35,376.40</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td style="font-weight: 600; color: #111827;">Stanley Claw Hammer 16oz</td>
                        <td style="color: #6B7280;">HMR-STN-16OZ</td>
                        <td style="text-align: center; font-weight: 600;">50</td>
                        <td style="text-align: right;">₹450.00</td>
                        <td style="text-align: right;">₹4,050.00</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹26,550.00</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td style="font-weight: 600; color: #111827;">Safety Goggles (Clear)</td>
                        <td style="color: #6B7280;">PPE-GOG-CLR</td>
                        <td style="text-align: center; font-weight: 600;">100</td>
                        <td style="text-align: right;">₹85.00</td>
                        <td style="text-align: right;">₹1,530.00</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">₹10,030.00</td>
                    </tr>
                </tbody>
            </table>

            <!-- Financial Summary -->
            <div style="display: flex; justify-content: flex-end; margin-bottom: 32px;">
                <div style="width: 320px;">
                    <div style="display: flex; justify-content: space-between; padding: 6px 0; font-size: 13.5px; color: #4B5563;">
                        <span>Subtotal</span>
                        <strong>₹60,980.00</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; padding: 6px 0; font-size: 13.5px; color: #DC2626;">
                        <span>Discount (5%)</span>
                        <strong>- ₹3,049.00</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; padding: 6px 0; font-size: 13.5px; color: #4B5563;">
                        <span>Tax (IGST 18%)</span>
                        <strong>₹10,976.40</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; align-items: center; padding: 12px 16px; margin-top: 8px; background: #EAF8EF; border-radius: 6px; color: #15803D;">
                        <span style="font-size: 13.5px; font-weight: 700; text-transform: uppercase;">Grand Total</span>
                        <span style="font-size: 18px; font-weight: 800;">₹68,907.40</span>
                    </div>
                </div>
            </div>

            <!-- Terms & Signatures -->
            <div style="border-top: 1px solid #E5E7EB; padding-top: 24px; margin-top: 24px;">
                <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 6px;">Terms &amp; Notes</div>
                <div style="font-size: 12.5px; color: #4B5563; line-height: 1.6; margin-bottom: 36px;">
                    - Please deliver between 9 AM and 5 PM on weekdays.<br />
                    - All items must include warranty cards where applicable.<br />
                    - Invoices must reference PO-2026-0048.
                </div>

                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 40px; text-align: center;">
                    <div>
                        <div style="border-top: 1px solid #D1D5DB; width: 180px; margin: 0 auto 8px;"></div>
                        <div style="font-size: 11px; color: #6B7280;">Prepared By</div>
                        <div style="font-size: 13.5px; font-weight: 600; color: #111827;">A. Sharma</div>
                    </div>
                    <div>
                        <div style="border-top: 1px solid #D1D5DB; width: 180px; margin: 0 auto 8px;"></div>
                        <div style="font-size: 11px; color: #6B7280;">Approved By</div>
                        <div style="font-size: 13.5px; font-weight: 600; color: #111827;">M. Patel</div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
