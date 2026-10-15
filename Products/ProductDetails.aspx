<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Stock_Forgeeee.Products.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb -->
    <div class="sf-breadcrumb" style="display: flex; align-items: center; gap: 6px; font-size: 12px; color: #6B7280; margin-bottom: 8px;">
        <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>" style="color: #6B7280; text-decoration: none;">Products</a>
        <i class="bi bi-chevron-right" style="font-size: 10px;"></i>
        <span class="active" style="color: #111827; font-weight: 500;">Product Details</span>
    </div>

    <!-- Page Header (Matching Figma Screenshot 4) -->
    <div class="sf-page-header" style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px;">
        <div>
            <h1 class="sf-page-title" style="font-size: 24px; font-weight: 700; color: #111827; margin: 0;">Product Details</h1>
        </div>
        <div class="sf-header-actions" style="display: flex; align-items: center; gap: 10px;">
            <button type="button" class="btn-outline-action" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 14px; background: #FFFFFF; border: 1px solid #D1D5DB; border-radius: 6px; font-size: 13px; font-weight: 500; color: #374151; cursor: pointer;">
                More <i class="bi bi-chevron-down" style="font-size: 10px; color: #6B7280;"></i>
            </button>
            <a href="<%= ResolveUrl("~/Products/EditProduct.aspx?id=101") %>" style="display: inline-flex; align-items: center; gap: 6px; padding: 7px 16px; background: #006C44; border: 1px solid #006C44; border-radius: 6px; font-size: 13px; font-weight: 600; color: #FFFFFF; text-decoration: none;">
                <i class="bi bi-pencil" style="font-size: 12px;"></i> Edit Product
            </a>
        </div>
    </div>

    <!-- Main Content 2-Column Section -->
    <div style="display: grid; grid-template-columns: 2fr 1fr; gap: 24px; margin-bottom: 24px; align-items: start;">
        <!-- Left Column: Product Info Card -->
        <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 24px;">
            <div style="display: flex; gap: 24px; padding-bottom: 24px; border-bottom: 1px solid #F3F4F6;">
                <!-- Product Image Container -->
                <div style="width: 150px; height: 150px; border-radius: 8px; background: #F8FAFC; border: 1px solid #E2E8F0; display: flex; align-items: center; justify-content: center; flex-shrink: 0; overflow: hidden; padding: 12px;">
                    <div style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; color: #4B5563; font-size: 54px;">
                        <i class="bi bi-tools"></i>
                    </div>
                </div>

                <!-- Product Identity -->
                <div style="flex: 1;">
                    <div style="display: flex; align-items: center; gap: 10px; margin-bottom: 6px;">
                        <h2 style="font-size: 22px; font-weight: 700; color: #111827; margin: 0;">Wireless Drill Pro</h2>
                        <span style="display: inline-block; padding: 2px 10px; background: #EAF8EF; border-radius: 9999px; font-size: 11px; font-weight: 600; color: #15803D;">
                            In Stock
                        </span>
                    </div>
                    <div style="margin-bottom: 20px;">
                        <span style="display: inline-block; padding: 2px 8px; background: #F3F4F6; border-radius: 4px; font-size: 12px; font-weight: 500; color: #4B5563; font-family: monospace;">
                            DRL-W-101
                        </span>
                    </div>
                </div>
            </div>

            <!-- Metadata 2x2 Grid -->
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; padding-top: 20px;">
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Category</div>
                    <div style="font-size: 14px; font-weight: 600; color: #111827;">Power Tools</div>
                </div>
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Brand</div>
                    <div style="font-size: 14px; font-weight: 600; color: #111827;">Hardware Corp</div>
                </div>
                <div>
                    <div style="font-size: 11px; font-weight: 600; color: #6B7280; text-transform: uppercase; margin-bottom: 4px;">Supplier</div>
                    <div style="font-size: 14px; font-weight: 600; color: #111827; display: flex; align-items: center; gap: 6px;">
                        <i class="bi bi-shop" style="color: #006C44; font-size: 13px;"></i> Hardware Corp
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Column: Pricing & Inventory Status -->
        <div style="display: flex; flex-direction: column; gap: 20px;">
            <!-- Pricing Card -->
            <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 20px;">
                <div style="display: flex; align-items: center; gap: 8px; font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 16px;">
                    <i class="bi bi-credit-card-2-front" style="color: #006C44;"></i> Pricing
                </div>
                <div style="display: flex; justify-content: space-between; padding-bottom: 12px; font-size: 13px; color: #4B5563;">
                    <span>Purchase Price</span>
                    <strong style="color: #111827; font-size: 14px;">$85.00</strong>
                </div>
                <div style="display: flex; justify-content: space-between; font-size: 13px; color: #4B5563;">
                    <span>Selling Price</span>
                    <strong style="color: #111827; font-size: 14px;">$120.00</strong>
                </div>
            </div>

            <!-- Inventory Status Card -->
            <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 20px;">
                <div style="display: flex; align-items: center; gap: 8px; font-size: 14px; font-weight: 700; color: #111827; margin-bottom: 16px;">
                    <i class="bi bi-bar-chart-line" style="color: #006C44;"></i> Inventory Status
                </div>

                <div style="display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 12px;">
                    <div>
                        <div style="font-size: 26px; font-weight: 800; color: #111827; line-height: 1;">12</div>
                        <div style="font-size: 12px; color: #6B7280; margin-top: 4px;">Units Available</div>
                    </div>
                    <div style="font-size: 12px; color: #6B7280; text-align: right;">
                        <div>Min: 20</div>
                        <div>Max: 50</div>
                    </div>
                </div>

                <!-- Custom Dual-Tone Gauge / Progress Bar -->
                <div style="position: relative; height: 8px; background: #E5E7EB; border-radius: 4px; overflow: hidden; margin-bottom: 8px;">
                    <div style="width: 24%; height: 100%; background: #F87171; border-radius: 4px 0 0 4px;"></div>
                </div>

                <div style="font-size: 11px; font-weight: 600; color: #DC2626;">
                    Below Minimum Stock Level
                </div>
            </div>
        </div>
    </div>

    <!-- Description Card -->
    <div style="background: #ffffff; border: 1px solid #E5E7EB; border-radius: 10px; padding: 22px;">
        <div style="font-size: 14.5px; font-weight: 700; color: #111827; margin-bottom: 12px;">
            Description
        </div>
        <p style="font-size: 13.5px; color: #4B5563; line-height: 1.6; margin: 0;">
            High-performance wireless drill with 18V battery. Includes 2 batteries and a charger. Professional grade for heavy-duty hardware tasks.
        </p>
    </div>
</asp:Content>
