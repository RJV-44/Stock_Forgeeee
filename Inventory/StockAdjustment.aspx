<%@ Page Title="Stock Adjustment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockAdjustment.aspx.cs" Inherits="Stock_Forgeeee.Inventory.StockAdjustment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 1200px; margin: 0 auto;">
        
        <!-- Page Header (Matching Figma Screenshot 4) -->
        <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 22px;">
            <div>
                <h1 style="font-size: 24px; font-weight: 700; color: #111827; margin: 0 0 4px 0; letter-spacing: -0.02em;">Stock Adjustment</h1>
                <div style="font-size: 13.5px; color: #6B7280;">Update inventory quantities and keep every stock change recorded.</div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Inventory/StockOverview.aspx") %>" style="display: inline-flex; align-items: center; justify-content: center; padding: 7px 18px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none; transition: background 0.15s ease;" onmouseover="this.style.background='#F9FAFB'" onmouseout="this.style.background='#FFFFFF'">
                    Cancel
                </a>
            </div>
        </div>

        <!-- Alert Panel -->
        <asp:Panel ID="pnlAlert" runat="server" Visible="false" style="background: #FEE2E2; border: 1px solid #FCA5A5; color: #991B1B; padding: 12px 16px; border-radius: 6px; margin-bottom: 20px; font-size: 13px; display: flex; align-items: center; gap: 8px;">
            <i class="bi bi-exclamation-triangle-fill"></i>
            <asp:Label ID="lblAlertMessage" runat="server"></asp:Label>
        </asp:Panel>

        <!-- 2 Column Layout (Matching Figma Screenshot 4) -->
        <div style="display: grid; grid-template-columns: 1fr 340px; gap: 24px; align-items: start;">
            
            <!-- Left Column: Form Card -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 24px; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
                
                <!-- Section 1: Product Selection -->
                <div style="margin-bottom: 24px;">
                    <div style="font-size: 13.5px; font-weight: 700; color: #111827; margin-bottom: 12px;">
                        1. Product Selection
                    </div>
                    
                    <div style="position: relative; margin-bottom: 14px;">
                        <i class="bi bi-search" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #9CA3AF; font-size: 13px;"></i>
                        <asp:TextBox ID="txtProductSearch" runat="server" Text="Bosch 10mm Drill" style="width: 100%; height: 38px; padding: 6px 12px 6px 36px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                    </div>

                    <!-- Selected Product Card -->
                    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 14px 16px; display: flex; align-items: center; justify-content: space-between;">
                        <div style="display: flex; align-items: center; gap: 14px;">
                            <div style="width: 44px; height: 44px; border-radius: 6px; background: #F3F4F6; border: 1px solid #E5E7EB; display: flex; align-items: center; justify-content: center; color: #006C44; font-size: 22px; flex-shrink: 0;">
                                <i class="bi bi-tools"></i>
                            </div>
                            <div>
                                <div style="font-size: 14px; font-weight: 700; color: #111827;">Bosch 10mm Drill</div>
                                <div style="font-size: 11.5px; color: #6B7280; margin-top: 1px;">SKU: DRL-BOS-10MM</div>
                                <div style="font-size: 12px; color: #374151; margin-top: 4px;">
                                    <span>Current Stock: <strong id="baseStock">24</strong> Pieces</span>
                                    <span style="color: #9CA3AF; margin: 0 8px;">|</span>
                                    <span>Min Stock: 10</span>
                                </div>
                            </div>
                        </div>
                        <div>
                            <span style="display: inline-flex; align-items: center; gap: 4px; padding: 3px 10px; background: #EAF8EF; border-radius: 9999px; font-size: 11px; font-weight: 600; color: #15803D;">
                                <span style="width: 5px; height: 5px; border-radius: 50%; background: #15803D;"></span>
                                In Stock
                            </span>
                        </div>
                    </div>
                </div>

                <!-- Section 2: Adjustment -->
                <div style="margin-bottom: 24px;">
                    <div style="font-size: 13.5px; font-weight: 700; color: #111827; margin-bottom: 12px;">
                        2. Adjustment
                    </div>

                    <div style="display: grid; grid-template-columns: 1.2fr 1fr 1fr; gap: 14px;">
                        <div>
                            <label style="display: block; font-size: 12px; color: #4B5563; margin-bottom: 6px;">Type</label>
                            <div style="position: relative;">
                                <asp:DropDownList ID="ddlAdjustmentType" runat="server" onchange="calculateNewStock()" style="width: 100%; height: 38px; padding: 6px 30px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer; box-sizing: border-box;">
                                    <asp:ListItem Value="Increase" Selected="True">Increase Stock</asp:ListItem>
                                    <asp:ListItem Value="Decrease">Decrease Stock</asp:ListItem>
                                </asp:DropDownList>
                                <i class="bi bi-chevron-down" style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
                            </div>
                        </div>

                        <div>
                            <label style="display: block; font-size: 12px; color: #4B5563; margin-bottom: 6px;">Quantity</label>
                            <asp:TextBox ID="txtQuantity" runat="server" Text="10" onkeyup="calculateNewStock()" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                        </div>

                        <div>
                            <label style="display: block; font-size: 12px; color: #4B5563; margin-bottom: 6px;">New Stock</label>
                            <asp:TextBox ID="txtNewStock" runat="server" Text="34 Pieces" ReadOnly="true" style="width: 100%; height: 38px; padding: 6px 12px; border: 1px solid #E5E7EB; border-radius: 6px; font-size: 13px; color: #111827; background: #F9FAFB; outline: none; box-sizing: border-box; cursor: not-allowed;"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <!-- Section 3: Reason & Notes -->
                <div>
                    <div style="font-size: 13.5px; font-weight: 700; color: #111827; margin-bottom: 12px;">
                        3. Reason & Notes
                    </div>

                    <div style="margin-bottom: 16px;">
                        <label style="display: block; font-size: 12px; color: #4B5563; margin-bottom: 6px;">Reason</label>
                        <div style="position: relative;">
                            <asp:DropDownList ID="ddlReason" runat="server" onchange="updateSummaryReason()" style="width: 100%; height: 38px; padding: 6px 30px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer; box-sizing: border-box;">
                                <asp:ListItem Value="Purchase Received" Selected="True">Purchase Received</asp:ListItem>
                                <asp:ListItem Value="Inventory Count Sync">Inventory Count Sync</asp:ListItem>
                                <asp:ListItem Value="Customer Return">Customer Return</asp:ListItem>
                                <asp:ListItem Value="Damaged Item">Damaged Item</asp:ListItem>
                                <asp:ListItem Value="Other">Other Adjustment</asp:ListItem>
                            </asp:DropDownList>
                            <i class="bi bi-chevron-down" style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%); font-size: 11px; color: #6B7280; pointer-events: none;"></i>
                        </div>
                    </div>

                    <div>
                        <label style="display: block; font-size: 12px; color: #4B5563; margin-bottom: 6px;">Notes (Optional)</label>
                        <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="5" placeholder="Add any relevant details..." style="width: 100%; padding: 10px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box; font-family: inherit; resize: vertical;" onfocus="this.style.borderColor='#006C44'" onblur="this.style.borderColor='#D1D5DB'"></asp:TextBox>
                    </div>
                </div>
            </div>

            <!-- Right Column: Adjustment Summary Card (Matching Figma Screenshot 4) -->
            <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 20px; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
                <div style="display: flex; align-items: center; gap: 8px; font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 16px;">
                    <i class="bi bi-file-earmark-text" style="color: #006C44; font-size: 16px;"></i>
                    <span>Adjustment Summary</span>
                </div>

                <div style="margin-bottom: 14px;">
                    <div style="font-size: 11px; color: #6B7280; text-transform: uppercase;">Product</div>
                    <div style="font-size: 13.5px; font-weight: 700; color: #111827; margin-top: 2px;">Bosch 10mm Drill</div>
                    <div style="font-size: 11px; color: #6B7280;">DRL-BOS-10MM</div>
                </div>

                <div style="border-top: 1px solid #E5E7EB; margin: 12px 0;"></div>

                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 10px; font-size: 13px;">
                    <span style="color: #6B7280;">Current Stock</span>
                    <strong style="color: #111827;">24</strong>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px; font-size: 13px;">
                    <span style="color: #6B7280;">Adjustment</span>
                    <span id="summaryAdj" style="font-weight: 700; color: #15803D;">+ 10</span>
                </div>

                <div style="border-top: 1px solid #E5E7EB; margin: 12px 0;"></div>

                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 18px; font-size: 14px;">
                    <span style="font-weight: 700; color: #111827;">New Stock</span>
                    <strong id="summaryNewStock" style="font-size: 16px; font-weight: 700; color: #111827;">34</strong>
                </div>

                <!-- Reason Container Box with subtle dashed border -->
                <div style="background: #F9FAFB; border: 1px dashed #D1D5DB; border-radius: 6px; padding: 12px; margin-bottom: 20px;">
                    <div style="font-size: 11px; color: #6B7280;">Reason:</div>
                    <div id="summaryReasonText" style="font-size: 13px; font-weight: 600; color: #111827; margin-top: 2px;">Purchase Received</div>
                </div>

                <!-- Submit Button -->
                <asp:Button ID="btnSaveAdjustment" runat="server" Text="Confirm Adjustment" OnClick="btnSaveAdjustment_Click" style="width: 100%; padding: 10px; background: #006C44; color: #FFFFFF; font-size: 13.5px; font-weight: 600; border-radius: 6px; border: none; cursor: pointer; transition: background 0.15s ease;" onmouseover="this.style.background='#0B5C3B'" onmouseout="this.style.background='#006C44'" />
            </div>
        </div>
    </div>

    <!-- Client-side calculation -->
    <script>
        function calculateNewStock() {
            var type = document.getElementById('<%= ddlAdjustmentType.ClientID %>').value;
            var qtyInput = document.getElementById('<%= txtQuantity.ClientID %>');
            var qty = parseInt(qtyInput ? qtyInput.value : '0', 10) || 0;
            var base = 24;
            var newStock = type === 'Increase' ? (base + qty) : (base - qty);
            if (newStock < 0) newStock = 0;

            var newStockTxt = document.getElementById('<%= txtNewStock.ClientID %>');
            if (newStockTxt) {
                newStockTxt.value = newStock + ' Pieces';
            }

            var sumAdj = document.getElementById('summaryAdj');
            if (sumAdj) {
                if (type === 'Increase') {
                    sumAdj.innerText = '+ ' + qty;
                    sumAdj.style.color = '#15803D';
                } else {
                    sumAdj.innerText = '- ' + qty;
                    sumAdj.style.color = '#DC2626';
                }
            }

            var sumNew = document.getElementById('summaryNewStock');
            if (sumNew) {
                sumNew.innerText = newStock;
            }
        }

        function updateSummaryReason() {
            var r = document.getElementById('<%= ddlReason.ClientID %>').value;
            var txt = document.getElementById('summaryReasonText');
            if (txt) {
                txt.innerText = r;
            }
        }
    </script>
</asp:Content>
