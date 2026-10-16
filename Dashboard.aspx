<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Stock_Forgeeee.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Header Section (Matching Figma) -->
    <div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <h1 style="font-size: 24px; font-weight: 700; color: #111827; margin: 0 0 4px 0; letter-spacing: -0.3px;">Good morning, Admin</h1>
            <div style="font-size: 13px; color: #6B7280;">Here's what's happening with your inventory today.</div>
        </div>
        <div style="display: flex; align-items: center; gap: 12px;">
            <a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>" style="display: inline-flex; align-items: center; gap: 6px; background: #ffffff; color: #374151; border: 1px solid #D1D5DB; border-radius: 6px; padding: 8px 16px; font-size: 13px; font-weight: 500; text-decoration: none; transition: all 0.15s;">
                <i class="bi bi-file-earmark-text" style="font-size: 14px;"></i> New Purchase Order
            </a>
            <a href="<%= ResolveUrl("~/Products/AddProduct.aspx") %>" style="display: inline-flex; align-items: center; gap: 6px; background: #006C44; color: #ffffff; border: none; border-radius: 6px; padding: 9px 18px; font-size: 13px; font-weight: 600; text-decoration: none; transition: background 0.15s;">
                <i class="bi bi-plus-lg"></i> Add Product
            </a>
        </div>
    </div>

    <!-- 4 Top Metric KPI Cards (Matching Figma) -->
    <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 24px;">
        <!-- Total Products -->
        <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 20px; box-shadow: 0 1px 3px rgba(0,0,0,0.02); display: flex; flex-direction: column; justify-content: space-between;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 12.5px; font-weight: 500; color: #6B7280;">Total Products</div>
                <div style="width: 32px; height: 32px; border-radius: 6px; background: #ECFDF5; display: flex; align-items: center; justify-content: center; color: #10B981;">
                    <i class="bi bi-archive" style="font-size: 15px;"></i>
                </div>
            </div>
            <div style="margin-top: 10px;">
                <div style="font-size: 26px; font-weight: 700; color: #111827; line-height: 1.1;">1,245</div>
                <div style="font-size: 11.5px; color: #16A34A; margin-top: 4px; display: flex; align-items: center; gap: 4px;">
                    <i class="bi bi-arrow-up-right"></i> 12 new this week
                </div>
            </div>
        </div>

        <!-- Total Stock -->
        <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 20px; box-shadow: 0 1px 3px rgba(0,0,0,0.02); display: flex; flex-direction: column; justify-content: space-between;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 12.5px; font-weight: 500; color: #6B7280;">Total Stock</div>
                <div style="width: 32px; height: 32px; border-radius: 6px; background: #ECFDF5; display: flex; align-items: center; justify-content: center; color: #10B981;">
                    <i class="bi bi-layers" style="font-size: 15px;"></i>
                </div>
            </div>
            <div style="margin-top: 10px;">
                <div style="font-size: 26px; font-weight: 700; color: #111827; line-height: 1.1;">8,540</div>
                <div style="font-size: 11.5px; color: #6B7280; margin-top: 4px;">Units across all locations</div>
            </div>
        </div>

        <!-- Low Stock -->
        <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 20px; box-shadow: 0 1px 3px rgba(0,0,0,0.02); display: flex; flex-direction: column; justify-content: space-between;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 12.5px; font-weight: 500; color: #6B7280;">Low Stock</div>
                <div style="width: 32px; height: 32px; border-radius: 6px; background: #FEF2F2; display: flex; align-items: center; justify-content: center; color: #EF4444;">
                    <i class="bi bi-exclamation-triangle" style="font-size: 15px;"></i>
                </div>
            </div>
            <div style="margin-top: 10px;">
                <div style="font-size: 26px; font-weight: 700; color: #EF4444; line-height: 1.1;">12</div>
                <div style="font-size: 11.5px; color: #6B7280; margin-top: 4px;">Items below minimum threshold</div>
            </div>
        </div>

        <!-- Out of Stock -->
        <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 20px; box-shadow: 0 1px 3px rgba(0,0,0,0.02); display: flex; flex-direction: column; justify-content: space-between;">
            <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div style="font-size: 12.5px; font-weight: 500; color: #6B7280;">Out of Stock</div>
                <div style="width: 32px; height: 32px; border-radius: 6px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #4B5563;">
                    <i class="bi bi-slash-circle" style="font-size: 15px;"></i>
                </div>
            </div>
            <div style="margin-top: 10px;">
                <div style="font-size: 26px; font-weight: 700; color: #111827; line-height: 1.1;">3</div>
                <div style="font-size: 11.5px; color: #DC2626; margin-top: 4px; display: flex; align-items: center; gap: 4px;">
                    <i class="bi bi-arrow-right"></i> Requires immediate action
                </div>
            </div>
        </div>
    </div>

    <!-- Middle Charts Row (Stock Status Donut & Purchase Trend Chart) -->
    <div style="display: grid; grid-template-columns: 340px 1fr; gap: 24px; margin-bottom: 24px;">
        
        <!-- Stock Status Donut Chart Card -->
        <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 22px; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
            <div style="font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 16px;">Stock Status</div>
            
            <div style="display: flex; flex-direction: column; align-items: center; justify-content: center; padding: 12px 0;">
                <!-- Circular Donut SVG -->
                <div style="position: relative; width: 170px; height: 170px;">
                    <svg viewBox="0 0 36 36" style="width: 100%; height: 100%; transform: rotate(-90deg);">
                        <!-- Background Circle -->
                        <path d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" fill="none" stroke="#E5E7EB" stroke-width="3.5" />
                        <!-- Green Arc (95% Healthy) -->
                        <path d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" fill="none" stroke="#10B981" stroke-dasharray="95, 100" stroke-width="3.5" stroke-linecap="round" />
                    </svg>
                    <!-- Center Metric Text -->
                    <div style="position: absolute; inset: 0; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center;">
                        <span style="font-size: 24px; font-weight: 800; color: #111827; line-height: 1;">95%</span>
                        <span style="font-size: 11.5px; color: #6B7280; margin-top: 4px;">Healthy</span>
                    </div>
                </div>

                <!-- Legend -->
                <div style="display: flex; justify-content: center; gap: 16px; margin-top: 24px; font-size: 12px;">
                    <div style="display: flex; align-items: center; gap: 6px; color: #4B5563;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #10B981;"></span> In Stock
                    </div>
                    <div style="display: flex; align-items: center; gap: 6px; color: #4B5563;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #EF4444;"></span> Low Stock
                    </div>
                    <div style="display: flex; align-items: center; gap: 6px; color: #4B5563;">
                        <span style="width: 8px; height: 8px; border-radius: 50%; background: #111827;"></span> Out
                    </div>
                </div>
            </div>
        </div>

        <!-- Purchase Trend Area Chart Card -->
        <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 22px; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Purchase Trend</div>
                <!-- Segmented Tabs -->
                <div style="display: flex; background: #F3F4F6; border-radius: 6px; padding: 2px;">
                    <button type="button" style="border: none; background: transparent; padding: 4px 10px; font-size: 11.5px; font-weight: 500; color: #6B7280; cursor: pointer; border-radius: 4px;">7D</button>
                    <button type="button" style="border: none; background: #ffffff; padding: 4px 10px; font-size: 11.5px; font-weight: 600; color: #111827; cursor: pointer; border-radius: 4px; box-shadow: 0 1px 2px rgba(0,0,0,0.05);">30D</button>
                    <button type="button" style="border: none; background: transparent; padding: 4px 10px; font-size: 11.5px; font-weight: 500; color: #6B7280; cursor: pointer; border-radius: 4px;">12M</button>
                </div>
            </div>

            <!-- Wave Area Chart -->
            <div style="position: relative; height: 180px; width: 100%;">
                <svg viewBox="0 0 600 180" style="width: 100%; height: 100%; overflow: visible;" preserveAspectRatio="none">
                    <defs>
                        <linearGradient id="areaGrad" x1="0" y1="0" x2="0" y2="1">
                            <stop offset="0%" stop-color="#10B981" stop-opacity="0.25"/>
                            <stop offset="100%" stop-color="#10B981" stop-opacity="0.0"/>
                        </linearGradient>
                    </defs>
                    <!-- Y Axis Grid Lines -->
                    <line x1="30" y1="20" x2="600" y2="20" stroke="#F3F4F6" stroke-width="1" />
                    <line x1="30" y1="55" x2="600" y2="55" stroke="#F3F4F6" stroke-width="1" />
                    <line x1="30" y1="90" x2="600" y2="90" stroke="#F3F4F6" stroke-width="1" />
                    <line x1="30" y1="125" x2="600" y2="125" stroke="#F3F4F6" stroke-width="1" />
                    <line x1="30" y1="160" x2="600" y2="160" stroke="#F3F4F6" stroke-width="1" />
                    
                    <!-- Y Axis Labels -->
                    <text x="15" y="24" fill="#9CA3AF" font-size="10" text-anchor="end">5k</text>
                    <text x="15" y="59" fill="#9CA3AF" font-size="10" text-anchor="end">4k</text>
                    <text x="15" y="94" fill="#9CA3AF" font-size="10" text-anchor="end">3k</text>
                    <text x="15" y="129" fill="#9CA3AF" font-size="10" text-anchor="end">2k</text>
                    <text x="15" y="164" fill="#9CA3AF" font-size="10" text-anchor="end">1k</text>

                    <!-- Filled Area -->
                    <path d="M 30,130 C 150,130 220,120 300,70 C 370,25 450,45 600,60 L 600,160 L 30,160 Z" fill="url(#areaGrad)" />
                    <!-- Green Line -->
                    <path d="M 30,130 C 150,130 220,120 300,70 C 370,25 450,45 600,60" fill="none" stroke="#2E9E66" stroke-width="3.5" stroke-linecap="round" />
                </svg>
            </div>

            <!-- X Axis Dates -->
            <div style="display: flex; justify-content: space-between; padding-left: 30px; margin-top: 8px; font-size: 11px; color: #9CA3AF;">
                <span>Oct 1</span>
                <span>Oct 8</span>
                <span>Oct 15</span>
                <span>Oct 22</span>
                <span>Oct 30</span>
            </div>
        </div>

    </div>

    <!-- Bottom Row (Low Stock Products & Recent Activity) -->
    <div style="display: grid; grid-template-columns: 1fr 340px; gap: 24px; align-items: start;">
        
        <!-- Low Stock Products Table Card -->
        <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
            <div style="padding: 16px 20px; border-bottom: 1px solid #E5E7EB; display: flex; justify-content: space-between; align-items: center;">
                <div style="font-size: 14px; font-weight: 700; color: #111827;">Low Stock Products</div>
                <a href="<%= ResolveUrl("~/Inventory/StockOverview.aspx") %>" style="font-size: 12.5px; color: #006C44; font-weight: 600; text-decoration: none; display: inline-flex; align-items: center; gap: 4px;">View All <i class="bi bi-arrow-right"></i></a>
            </div>

            <div style="overflow-x: auto;">
                <table style="width: 100%; border-collapse: collapse; text-align: left; font-size: 13px;">
                    <thead>
                        <tr style="border-bottom: 1px solid #E5E7EB; background: #FFFFFF;">
                            <th style="padding: 12px 18px; font-size: 10.5px; font-weight: 600; color: #4B5563; text-transform: uppercase; letter-spacing: 0.5px;">PRODUCT</th>
                            <th style="padding: 12px 18px; font-size: 10.5px; font-weight: 600; color: #4B5563; text-transform: uppercase; letter-spacing: 0.5px;">SKU</th>
                            <th style="padding: 12px 18px; font-size: 10.5px; font-weight: 600; color: #4B5563; text-transform: uppercase; letter-spacing: 0.5px;">CURRENT</th>
                            <th style="padding: 12px 18px; font-size: 10.5px; font-weight: 600; color: #4B5563; text-transform: uppercase; letter-spacing: 0.5px;">MIN</th>
                            <th style="padding: 12px 18px; font-size: 10.5px; font-weight: 600; color: #4B5563; text-transform: uppercase; letter-spacing: 0.5px;">STATUS</th>
                            <th style="padding: 12px 18px; font-size: 10.5px; font-weight: 600; color: #4B5563; text-transform: uppercase; letter-spacing: 0.5px;">ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- 1. Wireless Drill Pro -->
                        <tr style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 12px 18px; vertical-align: middle;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 4px; background: #F8FAFC; border: 1px solid #E2E8F0; display: flex; align-items: center; justify-content: center; color: #4B5563;">
                                        <i class="bi bi-tools" style="font-size: 15px;"></i>
                                    </div>
                                    <span style="font-weight: 600; color: #111827;">Wireless Drill Pro</span>
                                </div>
                            </td>
                            <td style="padding: 12px 18px; color: #6B7280; font-family: monospace; font-size: 12px;">DRL-W-101</td>
                            <td style="padding: 12px 18px; font-weight: 600; color: #111827;">12</td>
                            <td style="padding: 12px 18px; color: #6B7280;">20</td>
                            <td style="padding: 12px 18px;">
                                <span style="background: #FEE2E2; color: #B91C1C; font-size: 11px; font-weight: 600; padding: 3px 8px; border-radius: 999px;">Low Stock</span>
                            </td>
                            <td style="padding: 12px 18px;">
                                <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="color: #6B7280; text-decoration: none;"><i class="bi bi-three-dots"></i></a>
                            </td>
                        </tr>

                        <!-- 2. Hammer, Claw, 16oz -->
                        <tr style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 12px 18px; vertical-align: middle;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 4px; background: #F8FAFC; border: 1px solid #E2E8F0; display: flex; align-items: center; justify-content: center; color: #4B5563;">
                                        <i class="bi bi-hammer" style="font-size: 15px;"></i>
                                    </div>
                                    <span style="font-weight: 600; color: #111827;">Hammer, Claw, 16oz</span>
                                </div>
                            </td>
                            <td style="padding: 12px 18px; color: #6B7280; font-family: monospace; font-size: 12px;">HMR-C-016</td>
                            <td style="padding: 12px 18px; font-weight: 600; color: #111827;">8</td>
                            <td style="padding: 12px 18px; color: #6B7280;">15</td>
                            <td style="padding: 12px 18px;">
                                <span style="background: #FEE2E2; color: #B91C1C; font-size: 11px; font-weight: 600; padding: 3px 8px; border-radius: 999px;">Low Stock</span>
                            </td>
                            <td style="padding: 12px 18px;">
                                <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="color: #6B7280; text-decoration: none;"><i class="bi bi-three-dots"></i></a>
                            </td>
                        </tr>

                        <!-- 3. Screwdriver Set (5-pc) -->
                        <tr style="border-bottom: 1px solid #F3F4F6;">
                            <td style="padding: 12px 18px; vertical-align: middle;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 4px; background: #F8FAFC; border: 1px solid #E2E8F0; display: flex; align-items: center; justify-content: center; color: #4B5563;">
                                        <i class="bi bi-wrench" style="font-size: 15px;"></i>
                                    </div>
                                    <span style="font-weight: 600; color: #111827;">Screwdriver Set (5-pc)</span>
                                </div>
                            </td>
                            <td style="padding: 12px 18px; color: #6B7280; font-family: monospace; font-size: 12px;">SD-SET-005</td>
                            <td style="padding: 12px 18px; font-weight: 700; color: #DC2626;">0</td>
                            <td style="padding: 12px 18px; color: #6B7280;">10</td>
                            <td style="padding: 12px 18px;">
                                <span style="background: #E5E7EB; color: #374151; font-size: 11px; font-weight: 600; padding: 3px 8px; border-radius: 999px;">Out of Stock</span>
                            </td>
                            <td style="padding: 12px 18px;">
                                <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="color: #6B7280; text-decoration: none;"><i class="bi bi-three-dots"></i></a>
                            </td>
                        </tr>

                        <!-- 4. Pliers, Needle Nose -->
                        <tr>
                            <td style="padding: 12px 18px; vertical-align: middle;">
                                <div style="display: flex; align-items: center; gap: 12px;">
                                    <div style="width: 34px; height: 34px; border-radius: 4px; background: #F8FAFC; border: 1px solid #E2E8F0; display: flex; align-items: center; justify-content: center; color: #4B5563;">
                                        <i class="bi bi-scissors" style="font-size: 15px;"></i>
                                    </div>
                                    <span style="font-weight: 600; color: #111827;">Pliers, Needle Nose</span>
                                </div>
                            </td>
                            <td style="padding: 12px 18px; color: #6B7280; font-family: monospace; font-size: 12px;">PLR-NN-080</td>
                            <td style="padding: 12px 18px; font-weight: 600; color: #111827;">5</td>
                            <td style="padding: 12px 18px; color: #6B7280;">12</td>
                            <td style="padding: 12px 18px;">
                                <span style="background: #FEE2E2; color: #B91C1C; font-size: 11px; font-weight: 600; padding: 3px 8px; border-radius: 999px;">Low Stock</span>
                            </td>
                            <td style="padding: 12px 18px;">
                                <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="color: #6B7280; text-decoration: none;"><i class="bi bi-three-dots"></i></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Recent Activity Timeline Card -->
        <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 20px; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
            <div style="font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 18px;">Recent Activity</div>

            <div style="display: flex; flex-direction: column; gap: 16px; margin-bottom: 20px;">
                <!-- Activity 1 -->
                <div style="display: flex; gap: 12px;">
                    <div style="color: #10B981; font-size: 16px; margin-top: 1px;"><i class="bi bi-plus-circle-fill"></i></div>
                    <div>
                        <div style="font-size: 13px; font-weight: 600; color: #111827;">Wireless Drill Pro added</div>
                        <div style="font-size: 11.5px; color: #6B7280;">10 minutes ago by System</div>
                    </div>
                </div>

                <!-- Activity 2 -->
                <div style="display: flex; gap: 12px;">
                    <div style="color: #4B5563; font-size: 16px; margin-top: 1px;"><i class="bi bi-pencil-fill"></i></div>
                    <div>
                        <div style="font-size: 13px; font-weight: 600; color: #111827;">Stock adjusted for Hammer, Claw, 16oz</div>
                        <div style="font-size: 11.5px; color: #6B7280;">1 hour ago by Jane Doe</div>
                    </div>
                </div>

                <!-- Activity 3 -->
                <div style="display: flex; gap: 12px;">
                    <div style="color: #3B82F6; font-size: 16px; margin-top: 1px;"><i class="bi bi-box-seam-fill"></i></div>
                    <div>
                        <div style="font-size: 13px; font-weight: 600; color: #111827;">Purchase received</div>
                        <div style="font-size: 11.5px; color: #6B7280;">PO-2023-089 from Hardware Corp (50 units)</div>
                        <div style="font-size: 11px; color: #9CA3AF;">3 hours ago by Receiving Dept</div>
                    </div>
                </div>

                <!-- Activity 4 -->
                <div style="display: flex; gap: 12px;">
                    <div style="color: #10B981; font-size: 16px; margin-top: 1px;"><i class="bi bi-check-circle-fill"></i></div>
                    <div>
                        <div style="font-size: 13px; font-weight: 600; color: #111827;">Sale completed</div>
                        <div style="font-size: 11.5px; color: #6B7280;">Order #8293 shipped to BuildIt Co.</div>
                        <div style="font-size: 11px; color: #9CA3AF;">Yesterday at 4:30 PM</div>
                    </div>
                </div>

                <!-- Activity 5 -->
                <div style="display: flex; gap: 12px;">
                    <div style="color: #EF4444; font-size: 16px; margin-top: 1px;"><i class="bi bi-exclamation-triangle-fill"></i></div>
                    <div>
                        <div style="font-size: 13px; font-weight: 600; color: #DC2626;">Stock Alert Triggered</div>
                        <div style="font-size: 11.5px; color: #6B7280;">Screwdriver Set (5-pc) reached 0 units.</div>
                        <div style="font-size: 11px; color: #9CA3AF;">Yesterday at 10:15 AM</div>
                    </div>
                </div>
            </div>

            <button type="button" style="width: 100%; padding: 8px; border: 1px solid #D1D5DB; border-radius: 6px; background: #ffffff; color: #374151; font-size: 12.5px; font-weight: 500; cursor: pointer; transition: all 0.15s;">
                View All Activity
            </button>
        </div>

    </div>
</asp:Content>
