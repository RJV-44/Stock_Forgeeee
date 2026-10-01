<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="Stock_Forgeeee.Landing" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>StockForge - Next-Gen Hardware Management & ERP System</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <!-- Custom Landing CSS -->
    <link href="<%= ResolveUrl("~/Content/landing.css") %>" rel="stylesheet" type="text/css" />
</head>
<body class="landing-body">
    <form id="form1" runat="server">
        <!-- Public Navigation Bar -->
        <header class="landing-header">
            <div class="landing-nav-container">
                <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="landing-brand">
                    <div class="landing-brand-icon">
                        <i class="bi bi-box-seam-fill"></i>
                    </div>
                    <div>
                        <span class="landing-brand-title">StockForge</span>
                    </div>
                    <span class="landing-brand-tag">v2.4 Pro</span>
                </a>

                <ul class="landing-nav-links">
                    <li><a href="#features">Features</a></li>
                    <li><a href="#workflow">How It Works</a></li>
                    <li><a href="#pricing">Pricing</a></li>
                    <li><a href="#faq">FAQ</a></li>
                    <li><a href="<%= ResolveUrl("~/Help.aspx") %>">Help & Docs</a></li>
                </ul>

                <div class="landing-nav-actions">
                    <a href="<%= ResolveUrl("~/Account/Login.aspx") %>" class="btn-landing-outline">Sign In</a>
                    <a href="<%= ResolveUrl("~/Account/Register.aspx") %>" class="btn-landing-primary">
                        <span>Get Started Free</span>
                        <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>
        </header>

        <!-- Hero Section -->
        <section class="hero-section">
            <div class="hero-container">
                <div class="hero-text-col">
                    <div class="hero-badge">
                        <i class="bi bi-stars"></i>
                        <span>Smart Hardware & Tool Inventory ERP</span>
                    </div>
                    <h1 class="hero-title">
                        Manage Hardware Stock, <span>Sales & Suppliers</span> with Speed
                    </h1>
                    <p class="hero-subtitle">
                        StockForge is the end-to-end hardware management platform built for retail stores, electrical outlets, tool suppliers, and wholesale hardware distributors.
                    </p>
                    <div class="hero-actions">
                        <a href="<%= ResolveUrl("~/Dashboard.aspx") %>" class="btn-landing-primary" style="padding: 14px 28px; font-size: 16px;">
                            <i class="bi bi-speedometer2"></i>
                            <span>Launch Live Dashboard</span>
                        </a>
                        <a href="<%= ResolveUrl("~/Account/Register.aspx") %>" class="btn-landing-outline" style="padding: 14px 24px; font-size: 16px;">
                            <span>Register Hardware Store</span>
                        </a>
                    </div>
                    <div class="hero-stats-row">
                        <div class="hero-stat-item">
                            <h4>50K+</h4>
                            <p>Hardware SKUs Managed</p>
                        </div>
                        <div class="hero-stat-item">
                            <h4>$45M+</h4>
                            <p>Transactions Processed</p>
                        </div>
                        <div class="hero-stat-item">
                            <h4>99.9%</h4>
                            <p>Inventory Accuracy</p>
                        </div>
                    </div>
                </div>

                <!-- Hero Interactive Visual Showcase -->
                <div class="hero-showcase">
                    <div class="hero-card-preview">
                        <div class="showcase-header">
                            <div class="showcase-dots">
                                <span class="dot dot-red"></span>
                                <span class="dot dot-yellow"></span>
                                <span class="dot dot-green"></span>
                            </div>
                            <span style="font-size: 12px; color: #94A3B8; font-weight: 600;">StockForge Real-Time Analytics</span>
                        </div>
                        
                        <div class="showcase-grid">
                            <div class="showcase-widget">
                                <label>Total Power Tools</label>
                                <div class="value" style="color: #4CAF7D;">1,420 Units</div>
                            </div>
                            <div class="showcase-widget">
                                <label>Low Stock Warning</label>
                                <div class="value" style="color: #F59E0B;">3 Items Alert</div>
                            </div>
                            <div class="showcase-widget">
                                <label>Today's Sales Revenue</label>
                                <div class="value" style="color: #60A5FA;">$12,850.00</div>
                            </div>
                            <div class="showcase-widget">
                                <label>Active Suppliers</label>
                                <div class="value">48 Partners</div>
                            </div>
                        </div>

                        <div style="background: rgba(15, 23, 42, 0.7); border: 1px solid rgba(255, 255, 255, 0.08); border-radius: 12px; padding: 16px;">
                            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 10px;">
                                <span style="font-size: 13px; font-weight: 600; color: #FFF;">Recent Stock Movement</span>
                                <span style="font-size: 11px; color: #4CAF7D; font-weight: 700;">+24% vs Last Week</span>
                            </div>
                            <div style="height: 6px; background: rgba(255, 255, 255, 0.1); border-radius: 999px; overflow: hidden;">
                                <div style="width: 78%; height: 100%; background: linear-gradient(90deg, #4CAF7D 0%, #60A5FA 100%);"></div>
                            </div>
                        </div>
                    </div>

                    <div class="floating-badge">
                        <i class="bi bi-shield-check"></i>
                        <div>
                            <strong style="display: block; font-size: 13px; color: #FFF;">Automated Reorder Alerts</strong>
                            <small style="color: #94A3B8; font-size: 11px;">Zero stockouts guaranteed</small>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Core Features Section -->
        <section class="features-section" id="features">
            <div class="section-header">
                <span class="section-tag">Powerful Hardware Tools</span>
                <h2 class="section-title">Everything Needed to Run a Modern Hardware Business</h2>
                <p class="section-subtitle">Designed specifically for hardware items, building supplies, power tools, plumbing fixtures, and electrical components.</p>
            </div>

            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon-box">
                        <i class="bi bi-boxes"></i>
                    </div>
                    <h3>Real-Time Stock Overview</h3>
                    <p>Track stock levels across multiple warehouses and stores. Get instant alerts for low stock items and reorder thresholds.</p>
                </div>

                <div class="feature-card">
                    <div class="feature-icon-box">
                        <i class="bi bi-receipt-cutoff"></i>
                    </div>
                    <h3>Point of Sale & Billing</h3>
                    <p>Process customer sales orders rapidly with barcode scanning, automated discounts, tax calculations, and instant invoices.</p>
                </div>

                <div class="feature-card">
                    <div class="feature-icon-box">
                        <i class="bi bi-truck"></i>
                    </div>
                    <h3>Supplier Management</h3>
                    <p>Maintain vendor catalogs, generate Purchase Orders (PO), track pending shipments, and evaluate supplier fulfillment rates.</p>
                </div>

                <div class="feature-card">
                    <div class="feature-icon-box">
                        <i class="bi bi-bar-chart-steps"></i>
                    </div>
                    <h3>Valuation & Profit Reports</h3>
                    <p>Comprehensive financial reporting, FIFO stock valuation, revenue trends, and high-margin product performance metrics.</p>
                </div>

                <div class="feature-card">
                    <div class="feature-icon-box">
                        <i class="bi bi-person-gear"></i>
                    </div>
                    <h3>Multi-User Role Control</h3>
                    <p>Granular permissions for Cashiers, Store Managers, Inventory Clerks, and System Admins to keep your data secure.</p>
                </div>

                <div class="feature-card">
                    <div class="feature-icon-box">
                        <i class="bi bi-bell-fill"></i>
                    </div>
                    <h3>Instant Smart Notifications</h3>
                    <p>Never miss critical events with real-time notifications for purchase orders, customer payments, and stock adjustments.</p>
                </div>
            </div>
        </section>

        <!-- Workflow Section -->
        <section class="workflow-section" id="workflow">
            <div class="section-header">
                <span class="section-tag">Simple 3-Step Setup</span>
                <h2 class="section-title">How StockForge Powers Your Store</h2>
                <p class="section-subtitle">Get your inventory imported and start managing your store in less than 15 minutes.</p>
            </div>

            <div class="workflow-grid">
                <div class="step-card">
                    <div class="step-num">01</div>
                    <h4>Catalog & Stock Setup</h4>
                    <p>Add your hardware inventory, assign SKU numbers, categories, unit prices, and initial stock quantities.</p>
                </div>

                <div class="step-card">
                    <div class="step-num">02</div>
                    <h4>Manage Sales & Purchases</h4>
                    <p>Create purchase orders for suppliers and process point-of-sale receipts for retail and contractor clients.</p>
                </div>

                <div class="step-card">
                    <div class="step-num">03</div>
                    <h4>Track & Scale Business</h4>
                    <p>Analyze sales metrics, view stock valuation reports, automate reordering, and maximize store profitability.</p>
                </div>
            </div>
        </section>

        <!-- Pricing Section -->
        <section class="pricing-section" id="pricing">
            <div class="section-header">
                <span class="section-tag">Flexible Pricing Plans</span>
                <h2 class="section-title">Transparent Plans for Every Hardware Outlet</h2>
                <p class="section-subtitle">Choose the right tier for your hardware store size with no hidden setup fees.</p>
            </div>

            <div class="pricing-grid">
                <!-- Starter Plan -->
                <div class="pricing-card">
                    <h3>Starter Outlet</h3>
                    <p style="font-size: 13px; color: #94A3B8;">Perfect for single hardware shop or tool retail booth.</p>
                    <div class="price">$29<span>/month</span></div>
                    <ul class="pricing-features">
                        <li><i class="bi bi-check-circle-fill"></i> Up to 1,000 SKUs</li>
                        <li><i class="bi bi-check-circle-fill"></i> 2 Staff User Accounts</li>
                        <li><i class="bi bi-check-circle-fill"></i> Sales & Stock Tracking</li>
                        <li><i class="bi bi-check-circle-fill"></i> Standard POS Invoicing</li>
                        <li><i class="bi bi-check-circle-fill"></i> Email Support</li>
                    </ul>
                    <a href="<%= ResolveUrl("~/Account/Register.aspx") %>" class="btn-landing-outline" style="text-align: center;">Choose Starter</a>
                </div>

                <!-- Featured Plan -->
                <div class="pricing-card featured">
                    <div class="popular-badge">Most Popular</div>
                    <h3>Pro Retailer</h3>
                    <p style="font-size: 13px; color: #94A3B8;">Ideal for growing hardware stores & building suppliers.</p>
                    <div class="price" style="color: #4CAF7D;">$79<span>/month</span></div>
                    <ul class="pricing-features">
                        <li><i class="bi bi-check-circle-fill"></i> Unlimited SKUs & Products</li>
                        <li><i class="bi bi-check-circle-fill"></i> Up to 10 User Roles</li>
                        <li><i class="bi bi-check-circle-fill"></i> Advanced Supplier Management</li>
                        <li><i class="bi bi-check-circle-fill"></i> Automated Reorder Alerts</li>
                        <li><i class="bi bi-check-circle-fill"></i> Stock Valuation Reports</li>
                        <li><i class="bi bi-check-circle-fill"></i> Priority Support 24/7</li>
                    </ul>
                    <a href="<%= ResolveUrl("~/Account/Register.aspx") %>" class="btn-landing-primary" style="text-align: center; justify-content: center;">Start 14-Day Free Trial</a>
                </div>

                <!-- Enterprise Plan -->
                <div class="pricing-card">
                    <h3>Chain & Wholesale</h3>
                    <p style="font-size: 13px; color: #94A3B8;">For multi-location outlets and hardware distributors.</p>
                    <div class="price">$199<span>/month</span></div>
                    <ul class="pricing-features">
                        <li><i class="bi bi-check-circle-fill"></i> Multi-Warehouse Support</li>
                        <li><i class="bi bi-check-circle-fill"></i> Unlimited Staff Users</li>
                        <li><i class="bi bi-check-circle-fill"></i> Custom API Integrations</li>
                        <li><i class="bi bi-check-circle-fill"></i> Custom Reports & Audits</li>
                        <li><i class="bi bi-check-circle-fill"></i> Dedicated Account Manager</li>
                    </ul>
                    <a href="<%= ResolveUrl("~/Help.aspx") %>" class="btn-landing-outline" style="text-align: center;">Contact Enterprise</a>
                </div>
            </div>
        </section>

        <!-- FAQ Section -->
        <section class="faq-section" id="faq">
            <div class="section-header">
                <span class="section-tag">Got Questions?</span>
                <h2 class="section-title">Frequently Asked Questions</h2>
                <p class="section-subtitle">Common queries about StockForge Hardware Management System.</p>
            </div>

            <div class="faq-container">
                <div class="faq-item">
                    <h3 class="faq-question">Can I manage hardware barcode scanners with StockForge?</h3>
                    <p class="faq-answer">Yes! StockForge supports standard USB and Bluetooth barcode scanners for quick stock lookup, product management, and POS billing.</p>
                </div>
                <div class="faq-item">
                    <h3 class="faq-question">Is my inventory data secure?</h3>
                    <p class="faq-answer">All data is protected using role-based access control, encrypted backups, and enterprise-grade ASP.NET Web Forms database security standards.</p>
                </div>
                <div class="faq-item">
                    <h3 class="faq-question">Can I export reports for accounting purposes?</h3>
                    <p class="faq-answer">Yes, StockForge allows exporting sales reports, inventory valuations, and purchase orders directly to CSV and Excel format.</p>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="landing-footer">
            <div class="footer-container">
                <div class="footer-brand">
                    <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="landing-brand">
                        <div class="landing-brand-icon">
                            <i class="bi bi-box-seam-fill"></i>
                        </div>
                        <span class="landing-brand-title">StockForge</span>
                    </a>
                    <p>The leading hardware inventory management software empowering store owners, tool suppliers, and contractors worldwide.</p>
                </div>

                <div class="footer-col">
                    <h5>Quick Navigation</h5>
                    <ul>
                        <li><a href="<%= ResolveUrl("~/Dashboard.aspx") %>">Dashboard Overview</a></li>
                        <li><a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>">Hardware Catalog</a></li>
                        <li><a href="<%= ResolveUrl("~/Sales/SalesList.aspx") %>">Sales Orders</a></li>
                        <li><a href="<%= ResolveUrl("~/Purchases/MyPurchase.aspx") %>">Purchases</a></li>
                        <li><a href="<%= ResolveUrl("~/Suppliers/SupplierList.aspx") %>">Suppliers Directory</a></li>
                    </ul>
                </div>

                <div class="footer-col">
                    <h5>Account & Portals</h5>
                    <ul>
                        <li><a href="<%= ResolveUrl("~/Account/Login.aspx") %>">Staff Sign In</a></li>
                        <li><a href="<%= ResolveUrl("~/Account/Register.aspx") %>">Register New Store</a></li>
                        <li><a href="<%= ResolveUrl("~/Account/MyProfile.aspx") %>">My Account Profile</a></li>
                        <li><a href="<%= ResolveUrl("~/Account/ForgotPassword.aspx") %>">Reset Password</a></li>
                    </ul>
                </div>

                <div class="footer-col">
                    <h5>System & Legal</h5>
                    <ul>
                        <li><a href="<%= ResolveUrl("~/Help.aspx") %>">Help & Support</a></li>
                        <li><a href="<%= ResolveUrl("~/Terms.aspx") %>">Terms of Service</a></li>
                        <li><a href="<%= ResolveUrl("~/Privacy.aspx") %>">Privacy Policy</a></li>
                        <li><a href="<%= ResolveUrl("~/Error/404.aspx") %>">404 Error Preview</a></li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <span>&copy; <%= DateTime.Now.Year %> StockForge Hardware Management System. All rights reserved.</span>
                <div style="display: flex; gap: 20px;">
                    <a href="<%= ResolveUrl("~/Terms.aspx") %>" style="color: #64748B;">Terms</a>
                    <a href="<%= ResolveUrl("~/Privacy.aspx") %>" style="color: #64748B;">Privacy</a>
                    <a href="<%= ResolveUrl("~/Help.aspx") %>" style="color: #64748B;">Help</a>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
