<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Stock_Forgeeee.Sales.Invoice" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Invoice SO-2026-0125 - StockForge</title>
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
        <!-- Top Toolbar (Matching StockForge Responsive Invoice System.png) -->
        <div class="doc-toolbar">
            <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" style="color: #374151; font-size: 13.5px; font-weight: 500; text-decoration: none; display: flex; align-items: center; gap: 8px;">
                <i class="bi bi-arrow-left"></i> Back to Sale
            </a>

            <div style="display: flex; align-items: center; gap: 8px; font-size: 13px; color: #4B5563;">
                <span>FORMAT:</span>
                <select class="sf-select" style="height: 34px; padding: 4px 24px 4px 10px; font-size: 12.5px;">
                    <option selected>A4 Portrait</option>
                    <option>A4 Landscape</option>
                    <option>Thermal Receipt</option>
                </select>
            </div>

            <div style="display: flex; align-items: center; gap: 10px;">
                <button type="button" class="btn-outline-action" onclick="window.print()">
                    <i class="bi bi-download"></i> Download PDF
                </button>
                <button type="button" class="btn-success-dark" onclick="window.print()">
                    <i class="bi bi-printer"></i> Print Document
                </button>
            </div>
        </div>

        <!-- Centered Invoice Sheet -->
        <div class="doc-sheet">
            <!-- Header Section -->
            <div style="display: flex; justify-content: space-between; align-items: flex-start; padding-bottom: 24px; border-bottom: 1px solid #E5E7EB; margin-bottom: 24px;">
                <div style="display: flex; align-items: flex-start; gap: 14px;">
                    <div style="width: 44px; height: 44px; background: #006C44; color: #fff; border-radius: 8px; display: flex; align-items: center; justify-content: center; font-size: 24px;">
                        <i class="bi bi-box-seam"></i>
                    </div>
                    <div>
                        <div style="font-size: 19px; font-weight: 700; color: #111827;">StockForge Hardware</div>
                        <div style="font-size: 12.5px; color: #4B5563; margin-top: 2px;">123 Industrial Estate, Phase 4</div>
                        <div style="font-size: 12.5px; color: #4B5563;">Ahmedabad, Gujarat 380015</div>
                        <div style="font-size: 12.5px; color: #4B5563;">GSTIN: 24AAACC1206D1Z0</div>
                    </div>
                </div>

                <div style="text-align: right;">
                    <div style="display: flex; align-items: center; justify-content: flex-end; gap: 8px; margin-bottom: 6px;">
                        <span style="font-size: 22px; font-weight: 800; color: #111827; letter-spacing: 0.5px;">INVOICE</span>
                        <span class="sf-pill sf-pill-success" style="font-size: 11px; font-weight: 700;">PAID</span>
                    </div>
                    <div style="font-size: 13px; color: #4B5563;"><strong>INVOICE NO:</strong> SO-2026-0125</div>
                    <div style="font-size: 13px; color: #4B5563;"><strong>DATE:</strong> 17/08/2026</div>
                    <div style="font-size: 13px; color: #4B5563;"><strong>DUE DATE:</strong> Receipt</div>
                </div>
            </div>

            <!-- Billed To Section -->
            <div style="margin-bottom: 24px;">
                <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 6px;">Billed To</div>
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Apex Construction Services</div>
                <div style="font-size: 12.5px; color: #4B5563;">45 Builder's Plaza, Ring Road</div>
                <div style="font-size: 12.5px; color: #4B5563;">Surat, Gujarat 395003</div>
                <div style="font-size: 12.5px; color: #4B5563;">Attn: Rajesh Kumar</div>
            </div>

            <!-- Line Items Table -->
            <table class="sf-table" style="margin-bottom: 24px;">
                <thead>
                    <tr>
                        <th style="width: 5%;">#</th>
                        <th style="width: 40%;">Product &amp; Description</th>
                        <th style="width: 12%;">HSN/SAC</th>
                        <th style="width: 8%; text-align: center;">Qty</th>
                        <th style="width: 12%; text-align: right;">Rate (₹)</th>
                        <th style="width: 10%; text-align: right;">Tax</th>
                        <th style="width: 13%; text-align: right;">Total (₹)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>01</td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Heavy Duty Makita Drill</div>
                            <div style="font-size: 11.5px; color: #6B7280;">SKU: MK-HD-850 | 18V Cordless, 2 Batteries included</div>
                        </td>
                        <td style="color: #6B7280;">8467</td>
                        <td style="text-align: center; font-weight: 600;">2</td>
                        <td style="text-align: right;">14,500.00</td>
                        <td style="text-align: right; color: #6B7280;">18%</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">34,220.00</td>
                    </tr>
                    <tr>
                        <td>02</td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Bosch Angle Grinder 4"</div>
                            <div style="font-size: 11.5px; color: #6B7280;">SKU: BS-AG-400</div>
                        </td>
                        <td style="color: #6B7280;">8467</td>
                        <td style="text-align: center; font-weight: 600;">5</td>
                        <td style="text-align: right;">2,200.00</td>
                        <td style="text-align: right; color: #6B7280;">18%</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">12,980.00</td>
                    </tr>
                    <tr>
                        <td>03</td>
                        <td>
                            <div style="font-weight: 600; color: #111827;">Stanley Tool Set (150 Pcs)</div>
                            <div style="font-size: 11.5px; color: #6B7280;">SKU: ST-TS-150</div>
                        </td>
                        <td style="color: #6B7280;">8206</td>
                        <td style="text-align: center; font-weight: 600;">1</td>
                        <td style="text-align: right;">8,500.00</td>
                        <td style="text-align: right; color: #6B7280;">18%</td>
                        <td style="text-align: right; font-weight: 600; color: #111827;">10,030.00</td>
                    </tr>
                </tbody>
            </table>

            <!-- Bottom Financial & Payment Summary Grid -->
            <div style="display: grid; grid-template-columns: 1.2fr 1fr; gap: 32px; margin-bottom: 32px;">
                <!-- Left: Payment Summary & Notes -->
                <div>
                    <div style="border: 1px solid #E5E7EB; border-radius: 6px; padding: 16px; margin-bottom: 16px;">
                        <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 8px;">Payment Summary</div>
                        <div style="display: flex; align-items: center; gap: 6px; color: #15803D; font-weight: 600; font-size: 13px; margin-bottom: 8px;">
                            <i class="bi bi-check-circle-fill"></i> Payment Complete
                        </div>
                        <div style="font-size: 12.5px; color: #4B5563; margin-bottom: 2px;">Method: UPI (Google Pay)</div>
                        <div style="font-size: 12.5px; color: #4B5563; margin-bottom: 2px;">Txn ID: UPI84938472910</div>
                        <div style="font-size: 12.5px; color: #4B5563;">Date: 17/08/2026 14:32 IST</div>
                    </div>

                    <div style="border: 1px solid #E5E7EB; border-radius: 6px; padding: 16px;">
                        <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; margin-bottom: 6px;">Terms &amp; Notes</div>
                        <div style="font-size: 12px; color: #6B7280; line-height: 1.5;">
                            Goods once sold cannot be returned. Warranty claims as per manufacturer terms. Thank you for your business.
                        </div>
                    </div>
                </div>

                <!-- Right: Financial Breakdown -->
                <div>
                    <div style="display: flex; justify-content: space-between; padding: 6px 0; font-size: 13.5px; color: #4B5563;">
                        <span>Subtotal</span>
                        <strong>₹ 48,500.00</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; padding: 6px 0; font-size: 13.5px; color: #DC2626;">
                        <span>Discount (5%)</span>
                        <strong>- ₹ 2,425.00</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; padding: 6px 0; font-size: 13.5px; color: #4B5563;">
                        <span>CGST (9%)</span>
                        <strong>₹ 4,146.75</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; padding: 6px 0; font-size: 13.5px; color: #4B5563;">
                        <span>SGST (9%)</span>
                        <strong>₹ 4,146.75</strong>
                    </div>
                    <div style="display: flex; justify-content: space-between; align-items: center; padding: 12px 0; border-top: 1px solid #E5E7EB; margin-top: 8px;">
                        <span style="font-size: 15px; font-weight: 700; color: #111827;">Grand Total</span>
                        <span style="font-size: 20px; font-weight: 800; color: #006C44;">₹ 54,368.50</span>
                    </div>
                    <div style="background: #EAF8EF; border-radius: 6px; padding: 10px; text-align: center; color: #15803D; font-size: 12px; font-weight: 700; letter-spacing: 0.5px; margin-top: 8px;">
                        AMOUNT RECEIVED IN FULL
                    </div>
                </div>
            </div>

            <!-- Footer Section -->
            <div style="display: flex; justify-content: space-between; align-items: center; border-top: 1px solid #E5E7EB; padding-top: 16px; font-size: 11.5px; color: #9CA3AF;">
                <div>Generated on 17/08/2026 14:35 IST</div>
                <div style="display: flex; align-items: center; gap: 4px;">
                    <i class="bi bi-box-seam"></i> Powered by StockForge
                </div>
            </div>
        </div>
    </form>
</body>
</html>
