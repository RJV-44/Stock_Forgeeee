<%@ Page Title="Stock Movement History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockMovementHistory.aspx.cs" Inherits="Stock_Forgeeee.Inventory.StockMovementHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 1360px; margin: 0 auto;">
        
        <!-- Page Header (Matching Figma Screenshot 5) -->
        <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 20px;">
            <div>
                <h1 style="font-size: 24px; font-weight: 700; color: #111827; margin: 0 0 4px 0; letter-spacing: -0.02em;">Stock Movement History</h1>
                <div style="font-size: 13.5px; color: #6B7280;">Track every inventory change and see who performed it.</div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="display: inline-flex; align-items: center; gap: 7px; padding: 8px 18px; background: #006C44; color: #FFFFFF; font-size: 13px; font-weight: 600; border-radius: 6px; text-decoration: none; border: none; box-shadow: 0 1px 2px rgba(0,0,0,0.05); transition: background 0.15s ease;" onmouseover="this.style.background='#0B5C3B'" onmouseout="this.style.background='#006C44'">
                    <i class="bi bi-sliders" style="font-size: 13px;"></i>
                    <span>Adjust Stock</span>
                </a>
            </div>
        </div>

        <!-- Metrics & Filter Bar Container (Matching Figma Screenshot 5) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 14px 20px; margin-bottom: 16px; display: flex; align-items: center; justify-content: space-between; gap: 20px; flex-wrap: wrap;">
            
            <!-- Left Metrics: TOTAL MOVEMENTS | STOCK IN | STOCK OUT -->
            <div style="display: flex; align-items: center; gap: 24px;">
                <div>
                    <div style="font-size: 10.5px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.4px;">TOTAL MOVEMENTS</div>
                    <div style="font-size: 18px; font-weight: 700; color: #111827; margin-top: 2px;">1,284</div>
                </div>
                <div style="width: 1px; height: 32px; background: #E5E7EB;"></div>
                <div>
                    <div style="font-size: 10.5px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.4px;">STOCK IN</div>
                    <div style="font-size: 18px; font-weight: 700; color: #15803D; margin-top: 2px;">+3,420</div>
                </div>
                <div style="width: 1px; height: 32px; background: #E5E7EB;"></div>
                <div>
                    <div style="font-size: 10.5px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.4px;">STOCK OUT</div>
                    <div style="font-size: 18px; font-weight: 700; color: #DC2626; margin-top: 2px;">-2,180</div>
                </div>
            </div>

            <!-- Right Filters -->
            <div style="display: flex; align-items: center; gap: 10px; flex-wrap: wrap;">
                <!-- Search Box -->
                <div style="position: relative; width: 220px;">
                    <i class="bi bi-search" style="position: absolute; left: 10px; top: 50%; transform: translateY(-50%); color: #9CA3AF; font-size: 12.5px;"></i>
                    <input type="text" id="movSearchInput" onkeyup="filterMovementsTable()" placeholder="Search product, SKU or ref..." style="width: 100%; height: 36px; padding: 4px 10px 4px 30px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #111827; background: #FFFFFF; outline: none; box-sizing: border-box;" />
                </div>

                <!-- Date Range Dropdown -->
                <div style="position: relative;">
                    <select id="movDateFilter" style="height: 36px; padding: 4px 28px 4px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #374151; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                        <option value="7">Last 7 Days</option>
                        <option value="30">Last 30 Days</option>
                        <option value="90">This Quarter</option>
                        <option value="all">All Time</option>
                    </select>
                    <i class="bi bi-chevron-down" style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%); font-size: 10px; color: #6B7280; pointer-events: none;"></i>
                </div>

                <!-- Movement Type Dropdown -->
                <div style="position: relative;">
                    <select id="movTypeFilter" onchange="filterMovementsTable()" style="height: 36px; padding: 4px 28px 4px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #374151; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                        <option value="">All Types</option>
                        <option value="PURCHASE RECV">PURCHASE RECV</option>
                        <option value="SALE">SALE</option>
                        <option value="ADJUSTMENT">ADJUSTMENT</option>
                        <option value="RETURN">RETURN</option>
                        <option value="DAMAGED">DAMAGED</option>
                        <option value="OPENING STOCK">OPENING STOCK</option>
                    </select>
                    <i class="bi bi-chevron-down" style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%); font-size: 10px; color: #6B7280; pointer-events: none;"></i>
                </div>

                <!-- User Dropdown -->
                <div style="position: relative;">
                    <select id="movUserFilter" onchange="filterMovementsTable()" style="height: 36px; padding: 4px 28px 4px 10px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 12.5px; color: #374151; background: #FFFFFF; outline: none; appearance: none; -webkit-appearance: none; cursor: pointer;">
                        <option value="">All Users</option>
                        <option value="Admin">Admin</option>
                        <option value="J. Smith">J. Smith</option>
                        <option value="M. Davis">M. Davis</option>
                        <option value="T. Lee">T. Lee</option>
                    </select>
                    <i class="bi bi-chevron-down" style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%); font-size: 10px; color: #6B7280; pointer-events: none;"></i>
                </div>

                <!-- Clear Link -->
                <button type="button" onclick="clearMovementsFilter()" style="border: none; background: transparent; color: #006C44; font-size: 12.5px; font-weight: 500; cursor: pointer; padding: 4px 6px;">
                    Clear
                </button>
            </div>
        </div>

        <!-- Movements Table (Matching Figma Screenshot 5) -->
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; overflow: hidden; margin-bottom: 20px;">
            <div style="overflow-x: auto;">
                <table id="movementsMainTable" style="width: 100%; border-collapse: collapse; font-size: 12.5px; text-align: left;">
                    <thead>
                        <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB;">
                            <th style="padding: 12px 18px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px;">DATE & TIME</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px;">PRODUCT</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px;">MOVEMENT</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px;">REASON</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px;">USER</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px; text-align: right;">QTY</th>
                            <th style="padding: 12px 16px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px; text-align: right;">PREV</th>
                            <th style="padding: 12px 18px; font-size: 11px; font-weight: 700; color: #374151; text-transform: uppercase; letter-spacing: 0.4px; text-align: right;">NEW</th>
                        </tr>
                    </thead>
                    <tbody id="movementsTableBody">
                        <!-- Row 1: Titanium Hex Bolt M8 -->
                        <tr class="mov-row" data-name="Titanium Hex Bolt M8" data-type="PURCHASE RECV" data-user="Admin" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 14px 18px; color: #111827;">
                                <div style="font-weight: 500;">16 Aug 2026</div>
                                <div style="font-size: 11px; color: #6B7280;">10:42 AM</div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 30px; height: 30px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #4B5563; font-size: 14px; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-nut"></i>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827;">Titanium Hex Bolt M8</div>
                                        <div style="font-size: 11px; color: #6B7280;">SKU: THB-M8-001</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <span style="display: inline-block; padding: 2px 8px; background: #E5E7EB; border-radius: 4px; font-size: 10.5px; font-weight: 600; color: #374151;">PURCHASE RECV</span>
                            </td>
                            <td style="padding: 14px 16px; color: #4B5563;">Restock batch</td>
                            <td style="padding: 14px 16px; color: #111827; font-weight: 500;">Admin</td>
                            <td style="padding: 14px 16px; text-align: right; font-weight: 700; color: #15803D;">+200</td>
                            <td style="padding: 14px 16px; text-align: right; color: #6B7280;">450</td>
                            <td style="padding: 14px 18px; text-align: right; font-weight: 600; color: #111827;">650</td>
                        </tr>

                        <!-- Row 2: Makita 18V Drill -->
                        <tr class="mov-row" data-name="Makita 18V Drill" data-type="SALE" data-user="J. Smith" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 14px 18px; color: #111827;">
                                <div style="font-weight: 500;">16 Aug 2026</div>
                                <div style="font-size: 11px; color: #6B7280;">09:15 AM</div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 30px; height: 30px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #4B5563; font-size: 14px; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-tools"></i>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827;">Makita 18V Drill</div>
                                        <div style="font-size: 11px; color: #6B7280;">SKU: MAK-18V-D</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <span style="display: inline-block; padding: 2px 8px; background: #F3F4F6; border-radius: 4px; font-size: 10.5px; font-weight: 600; color: #374151;">SALE</span>
                            </td>
                            <td style="padding: 14px 16px; color: #4B5563;">Order fulfilled</td>
                            <td style="padding: 14px 16px; color: #111827; font-weight: 500;">J. Smith</td>
                            <td style="padding: 14px 16px; text-align: right; font-weight: 700; color: #DC2626;">-5</td>
                            <td style="padding: 14px 16px; text-align: right; color: #6B7280;">42</td>
                            <td style="padding: 14px 18px; text-align: right; font-weight: 600; color: #111827;">37</td>
                        </tr>

                        <!-- Row 3: Steel Roller Bearing -->
                        <tr class="mov-row" data-name="Steel Roller Bearing" data-type="ADJUSTMENT" data-user="M. Davis" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 14px 18px; color: #111827;">
                                <div style="font-weight: 500;">15 Aug 2026</div>
                                <div style="font-size: 11px; color: #6B7280;">16:30 PM</div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 30px; height: 30px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #4B5563; font-size: 14px; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-disc"></i>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827;">Steel Roller Bearing</div>
                                        <div style="font-size: 11px; color: #6B7280;">SKU: SRB-608ZZ</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <span style="display: inline-block; padding: 2px 8px; background: #E5E7EB; border-radius: 4px; font-size: 10.5px; font-weight: 600; color: #374151;">ADJUSTMENT</span>
                            </td>
                            <td style="padding: 14px 16px; color: #4B5563;">Inventory count sync</td>
                            <td style="padding: 14px 16px; color: #111827; font-weight: 500;">M. Davis</td>
                            <td style="padding: 14px 16px; text-align: right; font-weight: 700; color: #DC2626;">-2</td>
                            <td style="padding: 14px 16px; text-align: right; color: #6B7280;">1,200</td>
                            <td style="padding: 14px 18px; text-align: right; font-weight: 600; color: #111827;">1,198</td>
                        </tr>

                        <!-- Row 4: Copper Wire 12AWG -->
                        <tr class="mov-row" data-name="Copper Wire 12AWG" data-type="RETURN" data-user="Admin" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 14px 18px; color: #111827;">
                                <div style="font-weight: 500;">15 Aug 2026</div>
                                <div style="font-size: 11px; color: #6B7280;">14:10 PM</div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 30px; height: 30px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #4B5563; font-size: 14px; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-lightning"></i>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827;">Copper Wire 12AWG (Spool)</div>
                                        <div style="font-size: 11px; color: #6B7280;">SKU: CW-12A-100</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <span style="display: inline-block; padding: 2px 8px; background: #F3F4F6; border-radius: 4px; font-size: 10.5px; font-weight: 600; color: #374151;">RETURN</span>
                            </td>
                            <td style="padding: 14px 16px; color: #4B5563;">Customer return - unopened</td>
                            <td style="padding: 14px 16px; color: #111827; font-weight: 500;">Admin</td>
                            <td style="padding: 14px 16px; text-align: right; font-weight: 700; color: #15803D;">+3</td>
                            <td style="padding: 14px 16px; text-align: right; color: #6B7280;">15</td>
                            <td style="padding: 14px 18px; text-align: right; font-weight: 600; color: #111827;">18</td>
                        </tr>

                        <!-- Row 5: Bosch Hammer Drill Set -->
                        <tr class="mov-row" data-name="Bosch Hammer Drill Set" data-type="DAMAGED" data-user="T. Lee" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 14px 18px; color: #111827;">
                                <div style="font-weight: 500;">14 Aug 2026</div>
                                <div style="font-size: 11px; color: #6B7280;">11:05 AM</div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 30px; height: 30px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #4B5563; font-size: 14px; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-hammer"></i>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827;">Bosch Hammer Drill Set</div>
                                        <div style="font-size: 11px; color: #6B7280;">SKU: BOS-HD-SET</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <span style="display: inline-block; padding: 2px 8px; background: #FEE2E2; border-radius: 4px; font-size: 10.5px; font-weight: 600; color: #DC2626;">DAMAGED</span>
                            </td>
                            <td style="padding: 14px 16px; color: #4B5563;">Dropped in warehouse</td>
                            <td style="padding: 14px 16px; color: #111827; font-weight: 500;">T. Lee</td>
                            <td style="padding: 14px 16px; text-align: right; font-weight: 700; color: #DC2626;">-1</td>
                            <td style="padding: 14px 16px; text-align: right; color: #6B7280;">8</td>
                            <td style="padding: 14px 18px; text-align: right; font-weight: 600; color: #111827;">7</td>
                        </tr>

                        <!-- Row 6: Standard Packaging Box -->
                        <tr class="mov-row" data-name="Standard Packaging Box" data-type="PURCHASE RECV" data-user="Admin" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 14px 18px; color: #111827;">
                                <div style="font-weight: 500;">14 Aug 2026</div>
                                <div style="font-size: 11px; color: #6B7280;">08:30 AM</div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 30px; height: 30px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #4B5563; font-size: 14px; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-box"></i>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827;">Standard Packaging Box</div>
                                        <div style="font-size: 11px; color: #6B7280;">SKU: PKG-BOX-PLT</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <span style="display: inline-block; padding: 2px 8px; background: #E5E7EB; border-radius: 4px; font-size: 10.5px; font-weight: 600; color: #374151;">PURCHASE RECV</span>
                            </td>
                            <td style="padding: 14px 16px; color: #4B5563;">Monthly supply drop</td>
                            <td style="padding: 14px 16px; color: #111827; font-weight: 500;">Admin</td>
                            <td style="padding: 14px 16px; text-align: right; font-weight: 700; color: #15803D;">+5</td>
                            <td style="padding: 14px 16px; text-align: right; color: #6B7280;">2</td>
                            <td style="padding: 14px 18px; text-align: right; font-weight: 600; color: #111827;">7</td>
                        </tr>

                        <!-- Row 7: PVC Pipe 2" x 10' -->
                        <tr class="mov-row" data-name="PVC Pipe 2\" x 10'" data-type="SALE" data-user="J. Smith" style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 14px 18px; color: #111827;">
                                <div style="font-weight: 500;">13 Aug 2026</div>
                                <div style="font-size: 11px; color: #6B7280;">15:45 PM</div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 30px; height: 30px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #4B5563; font-size: 14px; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-dash-circle"></i>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827;">PVC Pipe 2" x 10'</div>
                                        <div style="font-size: 11px; color: #6B7280;">SKU: PVC-2-10</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <span style="display: inline-block; padding: 2px 8px; background: #F3F4F6; border-radius: 4px; font-size: 10.5px; font-weight: 600; color: #374151;">SALE</span>
                            </td>
                            <td style="padding: 14px 16px; color: #4B5563;">Wholesale order</td>
                            <td style="padding: 14px 16px; color: #111827; font-weight: 500;">J. Smith</td>
                            <td style="padding: 14px 16px; text-align: right; font-weight: 700; color: #DC2626;">-50</td>
                            <td style="padding: 14px 16px; text-align: right; color: #6B7280;">120</td>
                            <td style="padding: 14px 18px; text-align: right; font-weight: 600; color: #111827;">70</td>
                        </tr>

                        <!-- Row 8: Safety Goggles (Anti-Fog) -->
                        <tr class="mov-row" data-name="Safety Goggles" data-type="OPENING STOCK" data-user="Admin">
                            <td style="padding: 14px 18px; color: #111827;">
                                <div style="font-weight: 500;">13 Aug 2026</div>
                                <div style="font-size: 11px; color: #6B7280;">10:20 AM</div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 30px; height: 30px; border-radius: 4px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #4B5563; font-size: 14px; flex-shrink: 0; border: 1px solid #E5E7EB;">
                                        <i class="bi bi-eyeglasses"></i>
                                    </div>
                                    <div>
                                        <div style="font-weight: 600; color: #111827;">Safety Goggles (Anti-Fog)</div>
                                        <div style="font-size: 11px; color: #6B7280;">SKU: SAF-GOG-AF</div>
                                    </div>
                                </div>
                            </td>
                            <td style="padding: 14px 16px;">
                                <span style="display: inline-block; padding: 2px 8px; background: #E5E7EB; border-radius: 4px; font-size: 10.5px; font-weight: 600; color: #374151;">OPENING STOCK</span>
                            </td>
                            <td style="padding: 14px 16px; color: #4B5563;">Initial system load</td>
                            <td style="padding: 14px 16px; color: #111827; font-weight: 500;">Admin</td>
                            <td style="padding: 14px 16px; text-align: right; font-weight: 700; color: #15803D;">+100</td>
                            <td style="padding: 14px 16px; text-align: right; color: #6B7280;">0</td>
                            <td style="padding: 14px 18px; text-align: right; font-weight: 600; color: #111827;">100</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Pagination Footer (Matching Figma Screenshot 5) -->
        <div style="display: flex; justify-content: space-between; align-items: center; padding: 6px 4px; font-size: 13px; color: #6B7280;">
            <div id="movPaginationInfo">
                Showing 1-8 of 1,284 movements
            </div>
            <div style="display: flex; align-items: center; gap: 4px;">
                <a href="javascript:void(0)" style="padding: 6px 12px; color: #6B7280; text-decoration: none; font-size: 13px;">‹ Previous</a>
                <span style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; background: #006C44; color: #FFFFFF; font-weight: 600; border-radius: 4px; font-size: 13px;">1</span>
                <a href="javascript:void(0)" style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; color: #374151; text-decoration: none; font-size: 13px; border-radius: 4px;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">2</a>
                <a href="javascript:void(0)" style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; color: #374151; text-decoration: none; font-size: 13px; border-radius: 4px;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">3</a>
                <span style="color: #9CA3AF; padding: 0 4px;">...</span>
                <a href="javascript:void(0)" style="width: 32px; height: 32px; display: inline-flex; align-items: center; justify-content: center; color: #374151; text-decoration: none; font-size: 13px; border-radius: 4px;" onmouseover="this.style.background='#F3F4F6'" onmouseout="this.style.background='transparent'">161</a>
                <a href="javascript:void(0)" style="padding: 6px 12px; color: #374151; text-decoration: none; font-size: 13px; font-weight: 500;" onmouseover="this.style.color='#006C44'" onmouseout="this.style.color='#374151'">Next ›</a>
            </div>
        </div>
    </div>

    <!-- Client-side filter logic -->
    <script>
        function filterMovementsTable() {
            var q = (document.getElementById('movSearchInput').value || '').toLowerCase().trim();
            var type = (document.getElementById('movTypeFilter').value || '').trim();
            var user = (document.getElementById('movUserFilter').value || '').trim();
            var rows = document.querySelectorAll('#movementsTableBody tr.mov-row');
            var visibleCount = 0;

            rows.forEach(function (row) {
                var name = (row.getAttribute('data-name') || '').toLowerCase();
                var rType = row.getAttribute('data-type') || '';
                var rUser = row.getAttribute('data-user') || '';
                var text = row.innerText.toLowerCase();

                var matchesQ = !q || name.indexOf(q) >= 0 || text.indexOf(q) >= 0;
                var matchesType = !type || rType === type;
                var matchesUser = !user || rUser === user;

                if (matchesQ && matchesType && matchesUser) {
                    row.style.display = '';
                    visibleCount++;
                } else {
                    row.style.display = 'none';
                }
            });

            var info = document.getElementById('movPaginationInfo');
            if (info) {
                info.innerText = 'Showing 1-' + visibleCount + ' of 1,284 movements';
            }
        }

        function clearMovementsFilter() {
            document.getElementById('movSearchInput').value = '';
            document.getElementById('movTypeFilter').value = '';
            document.getElementById('movUserFilter').value = '';
            filterMovementsTable();
        }
    </script>
</asp:Content>
