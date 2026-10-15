<%@ Page Title="Stock Overview" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockOverview.aspx.cs" Inherits="Stock_Forgeeee.Inventory.StockOverview" %>
<%@ Register Src="~/Controls/Pagination.ascx" TagPrefix="uc" TagName="Pagination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; margin-bottom: 12px;">
        <span style="color: #6B7280;">Inventory</span>
        <i class="bi bi-chevron-right" style="font-size: 10px; color: #9CA3AF;"></i>
        <span style="color: #111827; font-weight: 600;">Stock Overview</span>
    </div>

    <!-- Page Header -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827; margin: 0 0 4px 0;">Inventory Overview</h1>
            <div class="sf-page-subtitle" style="font-size: 13.5px; color: #6B7280;">Track available stock, reorder pressure, and warehouse movement in one place.</div>
        </div>
        <div class="sf-header-actions" style="display: flex; align-items: center; gap: 10px;">
            <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 16px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; font-size: 13px; font-weight: 600; color: #FFFFFF; text-decoration: none;">
                <i class="bi bi-plus-circle"></i> Adjust Stock
            </a>
            <a href="<%= ResolveUrl("~/Inventory/StockMovementHistory.aspx") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 14px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; text-decoration: none;">
                <i class="bi bi-arrow-left-right"></i> Movement History
            </a>
        </div>
    </div>

    <!-- 4 Top Metric KPI Cards -->
    <div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px; margin-bottom: 24px;">
        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.3px;">Total Items</div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 8px; font-variant-numeric: tabular-nums;">486</div>
            <div style="font-size: 12px; color: #15803D; margin-top: 4px;">+4.6% this month</div>
        </div>

        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.3px;">Low Stock</div>
            <div style="font-size: 22px; font-weight: 700; color: #DC2626; margin-top: 8px; font-variant-numeric: tabular-nums;">8</div>
            <div style="font-size: 12px; color: #DC2626; margin-top: 4px;">3 below minimum threshold</div>
        </div>

        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.3px;">Inventory Value</div>
            <div style="font-size: 22px; font-weight: 700; color: #111827; margin-top: 8px; font-variant-numeric: tabular-nums;">₹18,40,000.00</div>
            <div style="font-size: 12px; color: #15803D; margin-top: 4px;">+7.2% valuation</div>
        </div>

        <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; padding: 18px 20px;">
            <div style="font-size: 11px; font-weight: 700; color: #6B7280; text-transform: uppercase; letter-spacing: 0.3px;">Stock Accuracy</div>
            <div style="font-size: 22px; font-weight: 700; color: #15803D; margin-top: 8px; font-variant-numeric: tabular-nums;">96.4%</div>
            <div style="font-size: 12px; color: #15803D; margin-top: 4px;">Audit verified</div>
        </div>
    </div>

    <!-- Inventory Table Card Container -->
    <div style="background: #FFFFFF; border: 1px solid #E5E7EB; border-radius: 8px; overflow: hidden; margin-bottom: 24px;">
        <!-- Filter Toolbar -->
        <div style="padding: 14px 20px; border-bottom: 1px solid #E5E7EB; display: flex; align-items: center; gap: 12px; flex-wrap: wrap; background: #FFFFFF;">
            <div style="position: relative; flex: 1; min-width: 280px;">
                <i class="bi bi-search" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #9CA3AF; font-size: 13.5px;"></i>
                <asp:TextBox ID="txtSearch" runat="server" placeholder="Search product, SKU, or category..." style="width: 100%; height: 38px; padding: 6px 12px 6px 36px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #111827; outline: none; background: #FFFFFF; box-sizing: border-box;"></asp:TextBox>
            </div>

            <asp:DropDownList ID="ddlCategory" runat="server" style="height: 38px; padding: 6px 28px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; background: #FFFFFF;">
                <asp:ListItem Value="">All categories</asp:ListItem>
                <asp:ListItem Value="Power Tools">Power Tools</asp:ListItem>
                <asp:ListItem Value="Hand Tools">Hand Tools</asp:ListItem>
                <asp:ListItem Value="Fasteners">Fasteners</asp:ListItem>
                <asp:ListItem Value="Electrical">Electrical</asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList ID="ddlStockStatus" runat="server" style="height: 38px; padding: 6px 28px 6px 12px; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; color: #374151; background: #FFFFFF;">
                <asp:ListItem Value="">All stock</asp:ListItem>
                <asp:ListItem Value="Healthy">Healthy</asp:ListItem>
                <asp:ListItem Value="Low">Low stock</asp:ListItem>
                <asp:ListItem Value="Out">Out of stock</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnFilter" runat="server" Text="Apply" style="padding: 7px 16px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; font-size: 13px; font-weight: 600; color: #FFFFFF; cursor: pointer;" />
        </div>

        <!-- Inventory Table -->
        <div style="overflow-x: auto;">
            <table style="width: 100%; border-collapse: collapse; text-align: left; font-size: 13px;">
                <thead>
                    <tr style="background: #FAFAFA; border-bottom: 1px solid #E5E7EB; color: #6B7280; font-size: 11px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.3px;">
                        <th style="padding: 12px 20px;">Product</th>
                        <th style="padding: 12px 16px;">Category</th>
                        <th style="padding: 12px 16px;">SKU</th>
                        <th style="padding: 12px 16px; text-align: center;">On Hand</th>
                        <th style="padding: 12px 16px; text-align: center;">Reorder Level</th>
                        <th style="padding: 12px 16px; text-align: right;">Unit Price</th>
                        <th style="padding: 12px 16px; text-align: center;">Status</th>
                        <th style="padding: 12px 20px; text-align: right;">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px;">
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 36px; height: 36px; border-radius: 6px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #6B7280;">
                                    <i class="bi bi-tools"></i>
                                </div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Bosch GSB 500W Impact Drill</div>
                                    <div style="font-size: 11.5px; color: #6B7280;">Fast-moving item</div>
                                </div>
                            </div>
                        </td>
                        <td style="padding: 14px 16px; color: #4B5563;">Power Tools</td>
                        <td style="padding: 14px 16px; font-family: monospace; color: #4B5563;">HW-BSH-500</td>
                        <td style="padding: 14px 16px; text-align: center; font-weight: 700; color: #DC2626; font-variant-numeric: tabular-nums;">3</td>
                        <td style="padding: 14px 16px; text-align: center; color: #6B7280; font-variant-numeric: tabular-nums;">12</td>
                        <td style="padding: 14px 16px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹4,150.00</td>
                        <td style="padding: 14px 16px; text-align: center;">
                            <span style="display: inline-block; padding: 2px 8px; background: #FEE2E2; border-radius: 4px; font-size: 11px; font-weight: 600; color: #DC2626;">Low Stock</span>
                        </td>
                        <td style="padding: 14px 20px; text-align: right;">
                            <div style="display: inline-flex; align-items: center; gap: 8px;">
                                <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=101") %>" style="color: #6B7280; font-size: 14px;"><i class="bi bi-eye"></i></a>
                                <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="color: #006C44; font-size: 14px;"><i class="bi bi-arrow-repeat"></i></a>
                            </div>
                        </td>
                    </tr>
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px;">
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 36px; height: 36px; border-radius: 6px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #6B7280;">
                                    <i class="bi bi-wrench"></i>
                                </div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Stanley Heavy Duty Hammer</div>
                                    <div style="font-size: 11.5px; color: #6B7280;">Manual tool</div>
                                </div>
                            </div>
                        </td>
                        <td style="padding: 14px 16px; color: #4B5563;">Hand Tools</td>
                        <td style="padding: 14px 16px; font-family: monospace; color: #4B5563;">HW-STN-021</td>
                        <td style="padding: 14px 16px; text-align: center; font-weight: 700; color: #B45309; font-variant-numeric: tabular-nums;">5</td>
                        <td style="padding: 14px 16px; text-align: center; color: #6B7280; font-variant-numeric: tabular-nums;">10</td>
                        <td style="padding: 14px 16px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹680.00</td>
                        <td style="padding: 14px 16px; text-align: center;">
                            <span style="display: inline-block; padding: 2px 8px; background: #FEF3C7; border-radius: 4px; font-size: 11px; font-weight: 600; color: #B45309;">Low</span>
                        </td>
                        <td style="padding: 14px 20px; text-align: right;">
                            <div style="display: inline-flex; align-items: center; gap: 8px;">
                                <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=102") %>" style="color: #6B7280; font-size: 14px;"><i class="bi bi-eye"></i></a>
                                <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="color: #006C44; font-size: 14px;"><i class="bi bi-arrow-repeat"></i></a>
                            </div>
                        </td>
                    </tr>
                    <tr style="border-bottom: 1px solid #F3F4F6;">
                        <td style="padding: 14px 20px;">
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 36px; height: 36px; border-radius: 6px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #6B7280;">
                                    <i class="bi bi-box-seam"></i>
                                </div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Stainless Steel Hinges 4-inch</div>
                                    <div style="font-size: 11.5px; color: #6B7280;">Packaged hardware</div>
                                </div>
                            </div>
                        </td>
                        <td style="padding: 14px 16px; color: #4B5563;">Fasteners</td>
                        <td style="padding: 14px 16px; font-family: monospace; color: #4B5563;">HW-HNG-401</td>
                        <td style="padding: 14px 16px; text-align: center; font-weight: 700; color: #15803D; font-variant-numeric: tabular-nums;">120</td>
                        <td style="padding: 14px 16px; text-align: center; color: #6B7280; font-variant-numeric: tabular-nums;">35</td>
                        <td style="padding: 14px 16px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹1,200.00</td>
                        <td style="padding: 14px 16px; text-align: center;">
                            <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D;">Healthy</span>
                        </td>
                        <td style="padding: 14px 20px; text-align: right;">
                            <div style="display: inline-flex; align-items: center; gap: 8px;">
                                <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=103") %>" style="color: #6B7280; font-size: 14px;"><i class="bi bi-eye"></i></a>
                                <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="color: #006C44; font-size: 14px;"><i class="bi bi-arrow-repeat"></i></a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 14px 20px;">
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 36px; height: 36px; border-radius: 6px; background: #F3F4F6; display: flex; align-items: center; justify-content: center; color: #6B7280;">
                                    <i class="bi bi-plug"></i>
                                </div>
                                <div>
                                    <div style="font-weight: 600; color: #111827;">Finolex Copper Wire 1.5 sq mm</div>
                                    <div style="font-size: 11.5px; color: #6B7280;">Electrical supply</div>
                                </div>
                            </div>
                        </td>
                        <td style="padding: 14px 16px; color: #4B5563;">Electrical</td>
                        <td style="padding: 14px 16px; font-family: monospace; color: #4B5563;">HW-FNX-150</td>
                        <td style="padding: 14px 16px; text-align: center; font-weight: 700; color: #15803D; font-variant-numeric: tabular-nums;">45</td>
                        <td style="padding: 14px 16px; text-align: center; color: #6B7280; font-variant-numeric: tabular-nums;">20</td>
                        <td style="padding: 14px 16px; text-align: right; font-weight: 600; color: #111827; font-variant-numeric: tabular-nums;">₹1,850.00</td>
                        <td style="padding: 14px 16px; text-align: center;">
                            <span style="display: inline-block; padding: 2px 8px; background: #EAF8EF; border-radius: 4px; font-size: 11px; font-weight: 600; color: #15803D;">Healthy</span>
                        </td>
                        <td style="padding: 14px 20px; text-align: right;">
                            <div style="display: inline-flex; align-items: center; gap: 8px;">
                                <a href="<%= ResolveUrl("~/Products/ProductDetails.aspx?id=104") %>" style="color: #6B7280; font-size: 14px;"><i class="bi bi-eye"></i></a>
                                <a href="<%= ResolveUrl("~/Inventory/StockAdjustment.aspx") %>" style="color: #006C44; font-size: 14px;"><i class="bi bi-arrow-repeat"></i></a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div style="padding: 12px 20px; border-top: 1px solid #E5E7EB;">
            <uc:Pagination runat="server" ID="PaginationControl" />
        </div>
    </div>
</asp:Content>
