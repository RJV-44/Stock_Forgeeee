<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Stock_Forgeeee.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-shell">
        <!-- Header -->
        <div class="page-header">
            <div>
                <span class="eyebrow">Our Story & Mission</span>
                <h1 class="page-title">About StockForge Hardware System</h1>
                <p class="page-subtitle">Empowering hardware store owners with intelligent stock tracking, supplier management, and point-of-sale tools.</p>
            </div>
            <div class="header-actions">
                <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="btn-secondary">
                    <i class="bi bi-globe"></i>
                    <span>Landing Page</span>
                </a>
            </div>
        </div>

        <!-- Mission Hero Card -->
        <div class="panel" style="padding: 36px; background: linear-gradient(135deg, rgba(76, 175, 125, 0.08) 0%, rgba(59, 130, 246, 0.08) 100%); border-color: rgba(76, 175, 125, 0.2);">
            <div style="max-width: 800px;">
                <span class="eyebrow" style="color: #4CAF7D;">THE HARDWARE INVENTORY PLATFORM</span>
                <h2 style="font-size: 26px; font-weight: 800; margin: 8px 0 16px; color: var(--text-primary);">
                    Forging Efficiency for Every Tool, Fastener & Building Material
                </h2>
                <p style="font-size: 15px; color: var(--text-secondary); line-height: 1.7; margin-bottom: 24px;">
                    StockForge was built to eliminate inventory chaos in physical hardware supply stores. Hardware stores carry thousands of unique SKUs—from micro screws and PVC fittings to high-value power drills and heavy building materials. Our platform provides real-time stock control, preventing costly stockouts and overstocking.
                </p>
                <div style="display: flex; gap: 24px; flex-wrap: wrap;">
                    <div>
                        <div style="font-size: 28px; font-weight: 800; color: #4CAF7D;">10,000+</div>
                        <div style="font-size: 12px; color: var(--text-secondary); text-transform: uppercase; font-weight: 600;">SKUs Tracked</div>
                    </div>
                    <div>
                        <div style="font-size: 28px; font-weight: 800; color: #3B82F6;">99.9%</div>
                        <div style="font-size: 12px; color: var(--text-secondary); text-transform: uppercase; font-weight: 600;">Stock Accuracy</div>
                    </div>
                    <div>
                        <div style="font-size: 28px; font-weight: 800; color: #A855F7;">500+</div>
                        <div style="font-size: 12px; color: var(--text-secondary); text-transform: uppercase; font-weight: 600;">Hardware Stores</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Core Values Grid -->
        <div class="panel-header" style="margin-top: 32px; border: none; padding: 0 0 16px;">
            <div>
                <span class="panel-label">Core Principles</span>
                <h3 style="margin: 0; font-size: 20px; font-weight: 700;">Why Hardware Retailers Choose StockForge</h3>
            </div>
        </div>

        <div class="inventory-metric-grid" style="grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));">
            <div class="inventory-metric-card" style="padding: 24px;">
                <div style="font-size: 24px; color: #4CAF7D; margin-bottom: 12px;"><i class="bi bi-speedometer2"></i></div>
                <h4 style="font-size: 16px; font-weight: 700; margin: 0 0 8px;">Lightning Fast POS</h4>
                <p style="font-size: 13px; color: var(--text-secondary); line-height: 1.6; margin: 0;">
                    Speed up counter sales during peak morning contractor hours with barcode scanning and rapid checkout.
                </p>
            </div>

            <div class="inventory-metric-card" style="padding: 24px;">
                <div style="font-size: 24px; color: #3B82F6; margin-bottom: 12px;"><i class="bi bi-graph-up"></i></div>
                <h4 style="font-size: 16px; font-weight: 700; margin: 0 0 8px;">Margin Intelligence</h4>
                <p style="font-size: 13px; color: var(--text-secondary); line-height: 1.6; margin: 0;">
                    Monitor profit margins per product line and adjust selling prices dynamically as supplier costs fluctuate.
                </p>
            </div>

            <div class="inventory-metric-card" style="padding: 24px;">
                <div style="font-size: 24px; color: #F59E0B; margin-bottom: 12px;"><i class="bi bi-shield-lock-fill"></i></div>
                <h4 style="font-size: 16px; font-weight: 700; margin: 0 0 8px;">Store Security</h4>
                <p style="font-size: 13px; color: var(--text-secondary); line-height: 1.6; margin: 0;">
                    Enforce strict role-based access for cashiers, managers, and store owners to protect financial data.
                </p>
            </div>
        </div>
    </div>
</asp:Content>
