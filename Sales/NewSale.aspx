<%@ Page Title="New Sale" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewSale.aspx.cs" Inherits="Stock_Forgeeee.Sales.NewSale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; color: #6B7280; margin-bottom: 8px;">
        <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" style="color: #6B7280; text-decoration: none;">Sales</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active" style="color: #111827; font-weight: 500;">New Sale</span>
    </div>

    <!-- Page Header (Matching Figma Screenshot 3) -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <div style="display: flex; align-items: center; gap: 10px;">
                <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827; margin: 0;">
                    New Sale
                </h1>
                <span style="display: inline-block; padding: 2px 10px; background: #F3F4F6; border: 1px solid #E5E7EB; border-radius: 9999px; font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; letter-spacing: 0.3px;">
                    DRAFT
                </span>
            </div>
            <div class="sf-page-subtitle" style="font-size: 13px; color: #6B7280; margin-top: 4px;">Create a customer sale and record the products being sold.</div>
        </div>
        <div class="sf-header-actions" style="display: flex; align-items: center; gap: 10px;">
            <a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>" style="display: inline-flex; align-items: center; padding: 7px 16px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">
                Cancel
            </a>
            <asp:Button ID="btnCreateSale" runat="server" Text="💾 Save Sale" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 18px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; font-size: 13px; font-weight: 600; color: #FFFFFF; cursor: pointer;" OnClick="btnCreateSale_Click" />
        </div>
    </div>

    <!-- Alert Feedback -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 12px 16px; border-radius: 6px; margin-bottom: 20px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
        <i class="bi bi-exclamation-triangle-fill"></i>
        <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
    </asp:Panel>

    <!-- Top Fields Card (4 Columns) -->
    <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 20px 24px; margin-bottom: 24px;">
        <div style="display: grid; grid-template-columns: 1.5fr 1fr 1fr 1fr; gap: 20px; align-items: start;">
            <!-- Customer -->
            <div>
                <label style="display: block; font-size: 10.5px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">CUSTOMER</label>
                <div style="display: flex; gap: 8px; margin-bottom: 10px;">
                    <asp:DropDownList ID="ddlCustomer" runat="server" style="flex: 1; height: 38px; padding: 6px 30px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #ffffff url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'16\' viewBox=\'0 0 24 24\' width=\'16\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>') no-repeat right 8px center; appearance: none; -webkit-appearance: none; outline: none; cursor: pointer;">
                        <asp:ListItem Value="Rajesh Patel" Selected="True">Rajesh Patel</asp:ListItem>
                        <asp:ListItem Value="Apex Builders">Apex Builders</asp:ListItem>
                        <asp:ListItem Value="Sharma Constructions">Sharma Constructions</asp:ListItem>
                        <asp:ListItem Value="Modern Electricals">Modern Electricals</asp:ListItem>
                    </asp:DropDownList>
                    <button type="button" style="width: 38px; height: 38px; border: 1px solid #D1D5DB; border-radius: 6px; background: #ffffff; display: flex; align-items: center; justify-content: center; color: #006C44; font-size: 16px; cursor: pointer;" title="Add New Customer">
                        <i class="bi bi-plus-lg"></i>
                    </button>
                </div>
                <!-- Customer Details Badge Box -->
                <div style="background: #F9FAFB; border: 1px solid #E5E7EB; border-radius: 6px; padding: 10px 14px; display: flex; align-items: center; justify-content: space-between; font-size: 12px; color: #4B5563;">
                    <div style="display: flex; align-items: center; gap: 6px; font-weight: 600; color: #111827;">
                        <i class="bi bi-person text-muted"></i> Rajesh Patel
                    </div>
                    <div style="display: flex; align-items: center; gap: 6px;">
                        <i class="bi bi-telephone text-muted"></i> +91 98765 43210
                    </div>
                </div>
            </div>

            <!-- Sale Date -->
            <div>
                <label style="display: block; font-size: 10.5px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">SALE DATE</label>
                <div style="position: relative;">
                    <asp:TextBox ID="txtSalesDate" runat="server" Text="10/27/2023" style="width: 100%; height: 38px; padding: 6px 36px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; outline: none; box-sizing: border-box;"></asp:TextBox>
                    <i class="bi bi-calendar3" style="position: absolute; right: 12px; top: 50%; transform: translateY(-50%); color: #6B7280; font-size: 14px; pointer-events: none;"></i>
                </div>
            </div>

            <!-- Payment Status -->
            <div>
                <label style="display: block; font-size: 10.5px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">PAYMENT STATUS</label>
                <select style="width: 100%; height: 38px; padding: 6px 30px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #ffffff url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'16\' viewBox=\'0 0 24 24\' width=\'16\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>') no-repeat right 8px center; appearance: none; -webkit-appearance: none; outline: none; cursor: pointer;">
                    <option selected>Paid</option>
                    <option>Partially Paid</option>
                    <option>Pending</option>
                </select>
            </div>

            <!-- Payment Method -->
            <div>
                <label style="display: block; font-size: 10.5px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 6px; letter-spacing: 0.3px;">PAYMENT METHOD</label>
                <asp:DropDownList ID="ddlPaymentMethod" runat="server" style="width: 100%; height: 38px; padding: 6px 30px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #ffffff url('data:image/svg+xml;utf8,<svg fill=\'%236B7280\' height=\'16\' viewBox=\'0 0 24 24\' width=\'16\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M7 10l5 5 5-5z\'/></svg>') no-repeat right 8px center; appearance: none; -webkit-appearance: none; outline: none; cursor: pointer;">
                    <asp:ListItem Value="UPI" Selected="True">UPI</asp:ListItem>
                    <asp:ListItem Value="Cash">Cash</asp:ListItem>
                    <asp:ListItem Value="Card">Card</asp:ListItem>
                    <asp:ListItem Value="Bank Transfer">Bank Transfer</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
    </div>

    <!-- Main Content Grid -->
    <div style="display: grid; grid-template-columns: 1.4fr 1fr; gap: 24px; align-items: start;">
        <!-- Left: Summary & Notes -->
        <div style="display: flex; flex-direction: column; gap: 20px;">
            <!-- Sale Summary Card -->
            <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 22px;">
                <div style="display: flex; align-items: center; gap: 8px; font-size: 14.5px; font-weight: 700; color: #111827; margin-bottom: 18px;">
                    <i class="bi bi-receipt" style="color: #4B5563;"></i> Sale Summary
                </div>

                <div style="display: flex; justify-content: space-between; padding-bottom: 10px; font-size: 13px; color: #4B5563;">
                    <span>Subtotal (2 items)</span>
                    <span style="font-variant-numeric: tabular-nums; font-weight: 600; color: #111827;">₹1,83,990.00</span>
                </div>

                <div style="display: flex; justify-content: space-between; padding-bottom: 10px; font-size: 13px; color: #DC2626;">
                    <span>Discount <i class="bi bi-pencil" style="font-size: 11px; margin-left: 4px; cursor: pointer;"></i></span>
                    <span style="font-variant-numeric: tabular-nums; font-weight: 600;">- ₹3,990.00</span>
                </div>

                <div style="display: flex; justify-content: space-between; padding-bottom: 14px; font-size: 13px; color: #4B5563; border-bottom: 1px solid #E5E7EB;">
                    <span>Tax (GST 18%) <i class="bi bi-pencil" style="font-size: 11px; margin-left: 4px; cursor: pointer;"></i></span>
                    <span style="font-variant-numeric: tabular-nums; font-weight: 600; color: #111827;">₹32,400.00</span>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: flex-end; padding-top: 16px;">
                    <div>
                        <div style="font-size: 15px; font-weight: 700; color: #111827;">Grand Total</div>
                        <div style="font-size: 11px; color: #6B7280; margin-top: 2px;">Includes Taxes</div>
                    </div>
                    <div style="font-size: 24px; font-weight: 800; color: #006C44; font-variant-numeric: tabular-nums;">
                        ₹2,12,400.00
                    </div>
                </div>
            </div>

            <!-- Notes Card -->
            <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 22px;">
                <div style="display: flex; align-items: center; gap: 8px; font-size: 14.5px; font-weight: 700; color: #111827; margin-bottom: 14px;">
                    <i class="bi bi-list-ul" style="color: #4B5563;"></i> Notes
                </div>
                <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="4" style="width: 100%; border: 1px solid #E5E7EB; border-radius: 6px; padding: 12px; font-size: 13px; color: #374151; box-sizing: border-box; outline: none; background: #F9FAFB;" placeholder="Add internal notes, shipping instructions, or customer references here..."></asp:TextBox>
            </div>
        </div>

        <!-- Right: Add Product Container -->
        <div style="display: flex; flex-direction: column; gap: 16px;">
            <button type="button" style="width: 100%; height: 44px; background: #006C44; border: 1px solid #006C44; border-radius: 8px; color: #ffffff; font-size: 14px; font-weight: 600; display: flex; align-items: center; justify-content: center; gap: 8px; cursor: pointer;">
                <i class="bi bi-plus-lg"></i> Add Product
            </button>

            <!-- Product search / barcode container matching Figma -->
            <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 24px; min-height: 280px; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 54px; height: 54px; border-radius: 8px; border: 2px dashed #D1D5DB; display: flex; align-items: center; justify-content: center; color: #9CA3AF; font-size: 24px; margin-bottom: 12px;">
                    <i class="bi bi-upc-scan"></i>
                </div>
                <div style="font-size: 13.5px; font-weight: 600; color: #111827;">Scan Barcode or Search SKU</div>
                <div style="font-size: 12px; color: #6B7280; margin-top: 4px; max-width: 240px;">Select items from your inventory to add them to this sale invoice.</div>
            </div>
        </div>
    </div>

    <!-- Hidden elements for codebehind compatibility -->
    <div style="display: none;">
        <asp:TextBox ID="txtInvoiceNo" runat="server" Text="INV-9825"></asp:TextBox>
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
    </div>
</asp:Content>
