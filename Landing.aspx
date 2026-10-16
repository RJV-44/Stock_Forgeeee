<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="Stock_Forgeeee.Landing" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>StockForge - Manage Your Inventory. Simply.</title>
    
    <!-- Google Fonts (Inter) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <!-- External Stylesheet with Cache-Buster -->
    <link href="<%= ResolveUrl("~/Content/landing.css?v=3.0") %>" rel="stylesheet" type="text/css" />

    <!-- Embedded High-Fidelity Styles (Guarantees zero-FOUC and immune to browser caching) -->
    <style>
        :root {
            --brand-primary: #3DA86F;
            --brand-dark: #006C44;
            --brand-light: #EAF8EF;
            --brand-hover: #33925F;
            --text-primary: #111827;
            --text-secondary: #4B5563;
            --text-muted: #6B7280;
            --border-color: #E5E7EB;
            --border-subtle: #F3F4F6;
            --bg-light: #FFFFFF;
            --bg-page: #FFFFFF;
            --bg-hero: #FFFFFF;
            --bg-card: #FFFFFF;
            --bg-banner: #ECEFF1;
            --font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body.landing-body {
            background-color: #FFFFFF;
            color: #111827;
            font-family: var(--font-family);
            -webkit-font-smoothing: antialiased;
            line-height: 1.5;
            overflow-x: hidden;
        }

        /* Universal Link Reset - Eliminates default blue/purple underlines across all browsers */
        a, a:link, a:visited {
            text-decoration: none !important;
            color: inherit;
        }

        /* Header / Navbar */
        .landing-header {
            width: 100%;
            background: #FFFFFF;
            border-bottom: 1px solid var(--border-color);
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.03);
        }

        .landing-nav-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 16px 24px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .landing-brand {
            display: flex;
            align-items: center;
            gap: 10px;
            text-decoration: none !important;
            color: #111827 !important;
        }

        .landing-brand-icon {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .landing-brand-title {
            font-size: 20px;
            font-weight: 700;
            letter-spacing: -0.3px;
            color: #111827;
        }

        .landing-nav-links {
            display: flex;
            align-items: center;
            gap: 36px;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .landing-nav-links a,
        .landing-nav-links a:visited {
            text-decoration: none !important;
            font-size: 14px;
            font-weight: 500;
            color: #4B5563 !important;
            transition: color 0.15s ease;
            padding: 6px 0;
        }

        .landing-nav-links a:hover,
        .landing-nav-links a.active,
        .landing-nav-links a.active:visited {
            color: var(--brand-primary) !important;
            font-weight: 600;
            border-bottom: 2px solid var(--brand-primary);
        }

        .landing-nav-actions {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .btn-nav-login,
        .btn-nav-login:visited {
            text-decoration: none !important;
            font-size: 14px;
            font-weight: 500;
            color: #374151 !important;
            transition: color 0.15s ease;
        }

        .btn-nav-login:hover {
            color: var(--brand-primary) !important;
        }

        .btn-nav-primary,
        .btn-nav-primary:link,
        .btn-nav-primary:visited {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background: var(--brand-primary) !important;
            color: #FFFFFF !important;
            text-decoration: none !important;
            font-size: 14px;
            font-weight: 600;
            padding: 9px 18px;
            border-radius: 6px;
            transition: background-color 0.15s ease, transform 0.1s ease;
            border: none;
            box-shadow: 0 2px 6px rgba(61, 168, 111, 0.25);
        }

        .btn-nav-primary:hover {
            background: var(--brand-hover) !important;
            color: #FFFFFF !important;
            transform: translateY(-1px);
        }

        /* Hero Section */
        .hero-section {
            padding: 64px 24px 80px;
            background: #FFFFFF;
        }

        .hero-container {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1.05fr 1.35fr;
            gap: 50px;
            align-items: center;
        }

        .hero-tag {
            display: inline-block;
            padding: 4px 12px;
            background: var(--brand-light);
            color: #15803D;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.6px;
            text-transform: uppercase;
            border-radius: 9999px;
            margin-bottom: 20px;
        }

        .hero-title {
            font-size: 48px;
            font-weight: 800;
            line-height: 1.15;
            letter-spacing: -1.2px;
            color: #111827;
            margin-bottom: 18px;
        }

        .hero-title .text-green {
            color: var(--brand-primary);
        }

        .hero-description {
            font-size: 14.5px;
            line-height: 1.7;
            color: var(--text-secondary);
            margin-bottom: 28px;
            max-width: 480px;
        }

        .hero-btn-row {
            display: flex;
            align-items: center;
            gap: 14px;
            margin-bottom: 24px;
        }

        .btn-hero-main,
        .btn-hero-main:link,
        .btn-hero-main:visited {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: var(--brand-primary) !important;
            color: #FFFFFF !important;
            font-size: 14px;
            font-weight: 600;
            padding: 11px 22px;
            border-radius: 6px;
            text-decoration: none !important;
            box-shadow: 0 4px 12px rgba(61, 168, 111, 0.25);
            transition: background 0.15s ease, transform 0.1s ease;
        }

        .btn-hero-main:hover {
            background: var(--brand-hover) !important;
            transform: translateY(-1px);
        }

        .btn-hero-secondary,
        .btn-hero-secondary:link,
        .btn-hero-secondary:visited {
            display: inline-flex;
            align-items: center;
            background: #FFFFFF !important;
            color: #374151 !important;
            font-size: 14px;
            font-weight: 600;
            padding: 11px 22px;
            border-radius: 6px;
            text-decoration: none !important;
            border: 1px solid #D1D5DB;
            transition: all 0.15s ease;
        }

        .btn-hero-secondary:hover {
            background: #F9FAFB !important;
            border-color: #9CA3AF;
        }

        .hero-trust-row {
            display: flex;
            align-items: center;
            gap: 24px;
        }

        .trust-item {
            display: flex;
            align-items: center;
            gap: 7px;
            font-size: 13px;
            color: #4B5563;
            font-weight: 500;
        }

        /* Mockup Window */
        .mockup-window {
            background: #FFFFFF;
            border: 1px solid #DCE3E8;
            border-radius: 14px;
            box-shadow: 0 16px 36px -12px rgba(15, 23, 42, 0.08), 0 2px 6px rgba(15, 23, 42, 0.04);
            overflow: hidden;
            font-size: 11px;
        }

        .mockup-titlebar {
            background: #F8FAFC;
            padding: 10px 16px;
            display: flex;
            align-items: center;
            gap: 12px;
            border-bottom: 1px solid #E5E7EB;
        }

        .mockup-dots {
            display: flex;
            gap: 6px;
        }

        .mockup-dot {
            width: 9px;
            height: 9px;
            border-radius: 50%;
        }

        .dot-red { background: #EF4444; }
        .dot-yellow { background: #F59E0B; }
        .dot-green { background: #10B981; }

        .mockup-titlebar-text {
            font-size: 11px;
            color: #6B7280;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .mockup-body {
            display: grid;
            grid-template-columns: 80px 1fr;
            min-height: 380px;
            background: #FDFDFE;
        }

        .mockup-sidebar {
            background: #FFFFFF;
            border-right: 1px solid #E5E7EB;
            padding: 14px 8px;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        .mockup-side-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 8px 4px;
            border-radius: 6px;
            color: #6B7280;
            font-size: 9px;
            font-weight: 500;
            text-align: center;
            gap: 4px;
            text-decoration: none;
        }

        .mockup-side-item i {
            font-size: 14px;
        }

        .mockup-side-item.active {
            background: var(--brand-light);
            color: #15803D;
            font-weight: 700;
        }

        .mockup-main {
            padding: 16px 18px;
            display: flex;
            flex-direction: column;
            gap: 14px;
            background: #F9FAFB;
        }

        .mockup-top-heading {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .mockup-top-heading h4 {
            font-size: 13px;
            font-weight: 700;
            color: #111827;
            margin: 0;
        }

        .mockup-stat-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 10px;
        }

        .mockup-stat-card {
            background: #FFFFFF;
            border: 1px solid #E5E7EB;
            border-radius: 8px;
            padding: 10px 12px;
        }

        .mockup-stat-label {
            font-size: 10px;
            color: #6B7280;
            margin-bottom: 2px;
        }

        .mockup-stat-val {
            font-size: 18px;
            font-weight: 800;
            color: #111827;
            line-height: 1.2;
        }

        .mockup-stat-sub {
            font-size: 9px;
            color: #9CA3AF;
            margin-top: 2px;
        }

        .mockup-grid-split {
            display: grid;
            grid-template-columns: 1fr 1.35fr;
            gap: 10px;
            align-items: stretch;
        }

        .mockup-chart-card,
        .mockup-table-card {
            background: #FFFFFF;
            border: 1px solid #E5E7EB;
            border-radius: 8px;
            padding: 12px;
            display: flex;
            flex-direction: column;
        }

        .mockup-card-title {
            font-size: 11px;
            font-weight: 700;
            color: #111827;
            margin-bottom: 8px;
        }

        .mockup-chart-container {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
        }

        .mockup-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 9.5px;
        }

        .mockup-table th {
            text-align: left;
            color: #6B7280;
            font-weight: 600;
            padding: 4px 6px;
            border-bottom: 1px solid #E5E7EB;
            font-size: 9px;
        }

        .mockup-table td {
            padding: 5px 6px;
            color: #374151;
            border-bottom: 1px solid #F3F4F6;
            vertical-align: middle;
        }

        .mockup-badge {
            display: inline-block;
            padding: 2px 6px;
            border-radius: 4px;
            font-size: 8.5px;
            font-weight: 700;
            text-align: center;
        }

        .badge-in-stock {
            background: #EAF8EF;
            color: #15803D;
        }

        .badge-low-stock {
            background: #FEE2E2;
            color: #DC2626;
        }

        /* Features Section */
        .features-section {
            padding: 80px 24px 90px;
            background: #FFFFFF;
            scroll-margin-top: 80px;
        }

        .features-header {
            text-align: center;
            max-width: 680px;
            margin: 0 auto 48px;
        }

        .features-header h2 {
            font-size: 28px;
            font-weight: 800;
            letter-spacing: -0.6px;
            color: #111827;
            margin-bottom: 12px;
        }

        .features-header p {
            font-size: 14px;
            color: var(--text-muted);
            line-height: 1.6;
        }

        .features-grid-2x2 {
            max-width: 1080px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 24px;
        }

        .feature-box {
            background: #FFFFFF;
            border: 1px solid #E5E7EB;
            border-radius: 12px;
            padding: 28px;
            transition: transform 0.18s ease, box-shadow 0.18s ease, border-color 0.18s ease;
        }

        .feature-box:hover {
            box-shadow: 0 12px 28px -6px rgba(15, 23, 42, 0.08);
            transform: translateY(-2px);
            border-color: #D1D5DB;
        }

        .feature-icon-wrapper {
            width: 44px;
            height: 44px;
            background: #EAF8EF;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 16px;
            color: var(--brand-primary);
        }

        .feature-box h3 {
            font-size: 17px;
            font-weight: 700;
            color: #111827;
            margin-bottom: 8px;
        }

        .feature-box p {
            font-size: 13.5px;
            line-height: 1.6;
            color: #6B7280;
            margin: 0;
        }

        /* Workflow Section */
        .workflow-section {
            padding: 70px 24px 90px;
            background: #FFFFFF;
        }

        .workflow-header {
            text-align: center;
            max-width: 600px;
            margin: 0 auto 50px;
        }

        .workflow-header h2 {
            font-size: 28px;
            font-weight: 800;
            letter-spacing: -0.6px;
            color: #111827;
            margin-bottom: 10px;
        }

        .workflow-header p {
            font-size: 14px;
            color: var(--text-muted);
            margin: 0;
        }

        .workflow-steps-wrap {
            max-width: 960px;
            margin: 0 auto;
            position: relative;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
        }

        .workflow-connecting-line {
            position: absolute;
            top: 26px;
            left: 15%;
            right: 15%;
            height: 2px;
            background: #E5E7EB;
            z-index: 1;
        }

        .workflow-step {
            position: relative;
            z-index: 2;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .workflow-circle {
            width: 52px;
            height: 52px;
            border-radius: 50%;
            background: #FFFFFF;
            border: 2px solid var(--brand-primary);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 17px;
            font-weight: 700;
            color: var(--brand-primary);
            margin: 0 auto 18px;
            box-shadow: 0 4px 12px rgba(61, 168, 111, 0.15);
        }

        .workflow-step h4 {
            font-size: 16px;
            font-weight: 700;
            color: #111827;
            margin-bottom: 8px;
        }

        .workflow-step p {
            font-size: 13px;
            line-height: 1.6;
            color: #6B7280;
            max-width: 250px;
            margin: 0 auto;
        }

        /* ==========================================
           Section: About StockForge (#about)
           ========================================== */
        section {
            scroll-margin-top: 72px;
        }

        .about-section {
            padding: 80px 24px;
            background: #FFFFFF;
            border-top: 1px solid var(--border-color);
            scroll-margin-top: 72px;
        }

        .about-container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .about-header {
            text-align: center;
            max-width: 760px;
            margin: 0 auto 44px;
        }

        .about-badge {
            display: inline-block;
            padding: 4px 14px;
            background: var(--brand-light);
            color: #15803D;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.6px;
            text-transform: uppercase;
            border-radius: 9999px;
            margin-bottom: 14px;
        }

        .about-title {
            font-size: 34px;
            font-weight: 800;
            letter-spacing: -0.8px;
            color: #111827;
            margin-bottom: 14px;
            line-height: 1.2;
        }

        .about-subtitle {
            font-size: 15px;
            color: var(--text-secondary);
            line-height: 1.7;
        }

        .about-story-card {
            background: linear-gradient(135deg, #F0FDF4 0%, #F8FAFC 100%);
            border: 1px solid #DCFCE7;
            border-radius: 14px;
            padding: 36px 40px;
            margin-bottom: 36px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.03);
        }

        .about-stats-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
            margin-top: 24px;
            padding-top: 24px;
            border-top: 1px solid #E2E8F0;
        }

        .about-stat-item {
            text-align: left;
        }

        .about-stat-num {
            font-size: 32px;
            font-weight: 800;
            color: var(--brand-dark);
            line-height: 1.1;
            margin-bottom: 4px;
            letter-spacing: -0.5px;
        }

        .about-stat-label {
            font-size: 12px;
            font-weight: 600;
            color: #6B7280;
            text-transform: uppercase;
            letter-spacing: 0.4px;
        }

        .about-pillars-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 24px;
        }

        .about-pillar-card {
            background: #FFFFFF;
            border: 1px solid var(--border-color);
            border-radius: 12px;
            padding: 28px 24px;
            transition: transform 0.15s ease, box-shadow 0.15s ease, border-color 0.15s ease;
        }

        .about-pillar-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.06);
            border-color: #CBD5E1;
        }

        .about-pillar-icon {
            width: 48px;
            height: 48px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
            margin-bottom: 16px;
        }

        .about-pillar-title {
            font-size: 17px;
            font-weight: 700;
            color: #111827;
            margin-bottom: 8px;
        }

        .about-pillar-desc {
            font-size: 13.5px;
            color: #6B7280;
            line-height: 1.6;
            margin: 0;
        }

        /* CTA Banner Section */
        .cta-section {
            padding: 70px 24px;
            background: var(--bg-banner);
            border-top: 1px solid #E2E8F0;
            border-bottom: 1px solid #E2E8F0;
            text-align: center;
        }

        .cta-container {
            max-width: 680px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .cta-icon-badge {
            width: 64px;
            height: 64px;
            border-radius: 16px;
            background: #EAF8EF;
            border: 1px solid rgba(61, 168, 111, 0.25);
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 20px;
            box-shadow: 0 4px 12px rgba(61, 168, 111, 0.12);
        }

        .cta-title {
            font-size: 30px;
            font-weight: 800;
            letter-spacing: -0.6px;
            color: #111827;
            margin: 0 0 12px;
        }

        .cta-subtitle {
            font-size: 15px;
            line-height: 1.65;
            color: #4B5563;
            margin: 0 0 26px;
            max-width: 540px;
        }

        .btn-cta-primary,
        .btn-cta-primary:link,
        .btn-cta-primary:visited {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background: var(--brand-primary) !important;
            color: #FFFFFF !important;
            text-decoration: none !important;
            font-size: 15px;
            font-weight: 600;
            padding: 13px 32px;
            border-radius: 8px;
            box-shadow: 0 4px 14px rgba(61, 168, 111, 0.35);
            transition: background 0.15s ease, transform 0.1s ease;
        }

        .btn-cta-primary:hover {
            background: var(--brand-hover) !important;
            color: #FFFFFF !important;
            transform: translateY(-1px);
            box-shadow: 0 6px 18px rgba(61, 168, 111, 0.45);
        }

        /* Landing Footer */
        .landing-footer {
            background: #FFFFFF;
            border-top: 1px solid var(--border-color);
            padding: 36px 24px;
        }

        .footer-inner {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
        }

        .footer-left {
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        .footer-brand {
            display: flex;
            align-items: center;
            gap: 8px;
            text-decoration: none !important;
            font-size: 16px;
            font-weight: 700;
            color: #111827 !important;
        }

        .footer-tagline {
            font-size: 12px;
            color: #6B7280;
        }

        .footer-links {
            display: flex;
            align-items: center;
            gap: 22px;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .footer-links a,
        .footer-links a:visited {
            text-decoration: none !important;
            font-size: 13px;
            color: #4B5563 !important;
            font-weight: 500;
            transition: color 0.15s ease;
        }

        .footer-links a:hover {
            color: var(--brand-primary) !important;
        }

        .footer-copy {
            font-size: 12px;
            color: #6B7280;
        }

        /* Responsive Breakpoints */
        @media (max-width: 1024px) {
            .hero-container {
                grid-template-columns: 1fr;
            }
            .workflow-connecting-line {
                display: none;
            }
        }

        @media (max-width: 768px) {
            .landing-nav-links {
                display: none;
            }
            .hero-title {
                font-size: 34px;
            }
            .features-grid-2x2,
            .workflow-steps-wrap {
                grid-template-columns: 1fr;
                gap: 24px;
            }
            .footer-inner {
                flex-direction: column;
                align-items: flex-start;
            }
            .footer-links {
                flex-wrap: wrap;
                gap: 14px;
            }
            .mockup-body {
                grid-template-columns: 1fr;
            }
            .mockup-sidebar {
                display: none;
            }
            .mockup-grid-split {
                grid-template-columns: 1fr;
            }
            .about-section {
                padding: 56px 16px;
            }
            .about-story-card {
                padding: 24px 20px;
            }
            .about-title {
                font-size: 26px;
            }
            .about-stats-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 16px;
            }
            .about-pillars-grid {
                grid-template-columns: 1fr;
                gap: 16px;
            }
        }

        @media (max-width: 576px) {
            .hero-btn-row {
                flex-direction: column !important;
                align-items: stretch !important;
                gap: 10px !important;
            }
            .btn-hero-main,
            .btn-hero-secondary {
                width: 100% !important;
                justify-content: center !important;
                text-align: center !important;
            }
            .hero-title {
                font-size: 28px !important;
                letter-spacing: -0.6px !important;
            }
            .landing-nav-container {
                padding: 12px 16px !important;
            }
            .btn-nav-login {
                display: none !important;
            }
        }
    </style>
</head>
<body class="landing-body">
    <form id="form1" runat="server">
        <!-- ==========================================
             Header / Navbar
             ========================================== -->
        <header class="landing-header">
            <div class="landing-nav-container">
                <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="landing-brand">
                    <div class="landing-brand-icon">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <rect x="2" y="3" width="20" height="18" rx="4" fill="#3DA86F"/>
                            <rect x="6" y="7" width="12" height="3" rx="1.5" fill="white"/>
                            <rect x="9" y="13" width="6" height="2.5" rx="1" fill="white"/>
                        </svg>
                    </div>
                    <span class="landing-brand-title">StockForge</span>
                </a>

                <ul class="landing-nav-links">
                    <li><a href="#home" class="active">Home</a></li>
                    <li><a href="#features">Features</a></li>
                    <li><a href="#about">About</a></li>
                </ul>

                <div class="landing-nav-actions">
                    <a href="<%= ResolveUrl("~/Account/Login.aspx") %>" class="btn-nav-login">Login</a>
                    <a href="<%= ResolveUrl("~/Account/Register.aspx") %>" class="btn-nav-primary">Get Started</a>
                </div>
            </div>
        </header>

        <!-- ==========================================
             Hero Section
             ========================================== -->
        <section class="hero-section" id="home">
            <div class="hero-container">
                <!-- Left Column -->
                <div class="hero-left">
                    <div class="hero-tag">Hardware Inventory Management</div>
                    <h1 class="hero-title">
                        Manage Your Inventory.<br />
                        <span class="text-green">Simply.</span>
                    </h1>
                    <p class="hero-description">
                        StockForge provides a streamlined, professional-grade platform to manage hardware products, track real-time stock levels, coordinate purchases with suppliers, and monitor sales. Built for efficiency in demanding environments.
                    </p>
                    <div class="hero-btn-row">
                        <a href="<%= ResolveUrl("~/Account/Register.aspx") %>" class="btn-hero-main">
                            <span>Get Started</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                <line x1="5" y1="12" x2="19" y2="12"></line>
                                <polyline points="12 5 19 12 12 19"></polyline>
                            </svg>
                        </a>
                        <a href="#features" class="btn-hero-secondary">Explore Features</a>
                    </div>
                    <div class="hero-trust-row">
                        <div class="trust-item">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
                                <circle cx="12" cy="12" r="10" fill="#3DA86F"/>
                                <path d="M8 12l2.5 2.5L16 9" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                            <span>No credit card required</span>
                        </div>
                        <div class="trust-item">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none">
                                <circle cx="12" cy="12" r="10" fill="#3DA86F"/>
                                <path d="M8 12l2.5 2.5L16 9" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                            <span>14-day free trial</span>
                        </div>
                    </div>
                </div>

                <!-- Right Column (Desktop Mockup Preview) -->
                <div class="hero-right">
                    <div class="mockup-window">
                        <!-- Window Titlebar -->
                        <div class="mockup-titlebar">
                            <div class="mockup-dots">
                                <span class="mockup-dot dot-red"></span>
                                <span class="mockup-dot dot-yellow"></span>
                                <span class="mockup-dot dot-green"></span>
                            </div>
                            <div class="mockup-titlebar-text">
                                <svg width="14" height="14" viewBox="0 0 24 24" fill="none">
                                    <rect x="2" y="3" width="20" height="18" rx="4" fill="#3DA86F"/>
                                    <rect x="6" y="7" width="12" height="3" rx="1.5" fill="white"/>
                                </svg>
                                <span>StockForge Hardware Inventory Management System</span>
                            </div>
                        </div>

                        <!-- Mockup Inner Body -->
                        <div class="mockup-body">
                            <!-- Mockup Sidebar -->
                            <div class="mockup-sidebar">
                                <div class="mockup-side-item active">
                                    <i class="bi bi-grid-fill"></i>
                                    <span>Dashboard</span>
                                </div>
                                <div class="mockup-side-item">
                                    <i class="bi bi-box-seam"></i>
                                    <span>Inventory</span>
                                </div>
                                <div class="mockup-side-item">
                                    <i class="bi bi-cart3"></i>
                                    <span>Orders</span>
                                </div>
                                <div class="mockup-side-item">
                                    <i class="bi bi-bar-chart-line"></i>
                                    <span>Reports</span>
                                </div>
                                <div class="mockup-side-item">
                                    <i class="bi bi-gear"></i>
                                    <span>Settings</span>
                                </div>
                                <div class="mockup-side-item">
                                    <i class="bi bi-question-circle"></i>
                                    <span>Help</span>
                                </div>
                            </div>

                            <!-- Mockup Main Stage -->
                            <div class="mockup-main">
                                <div class="mockup-top-heading">
                                    <h4>Dashboard</h4>
                                </div>

                                <!-- 3 Stat Cards -->
                                <div class="mockup-stat-grid">
                                    <div class="mockup-stat-card">
                                        <div class="mockup-stat-label">Total Products</div>
                                        <div class="mockup-stat-val">1,245</div>
                                        <div class="mockup-stat-sub">Live Stock Items</div>
                                    </div>
                                    <div class="mockup-stat-card">
                                        <div class="mockup-stat-label">Low Stock Items</div>
                                        <div class="mockup-stat-val" style="color: #EF4444;">12</div>
                                        <div class="mockup-stat-sub">Under 10 Units</div>
                                    </div>
                                    <div class="mockup-stat-card">
                                        <div class="mockup-stat-label">Recent Sales</div>
                                        <div class="mockup-stat-val" style="color: #3DA86F;">$45,200</div>
                                        <div class="mockup-stat-sub">Last 30 Days</div>
                                    </div>
                                </div>

                                <!-- Chart & Table Grid -->
                                <div class="mockup-grid-split">
                                    <!-- Stock Level Trend Chart -->
                                    <div class="mockup-chart-card">
                                        <div class="mockup-card-title">Stock Levels Trend (Last 30 Days)</div>
                                        <div class="mockup-chart-container">
                                            <svg viewBox="0 0 260 110" width="100%" height="95" style="overflow: visible;">
                                                <defs>
                                                    <linearGradient id="chartGrad" x1="0" y1="0" x2="0" y2="1">
                                                        <stop offset="0%" stop-color="#3DA86F" stop-opacity="0.25"/>
                                                        <stop offset="100%" stop-color="#3DA86F" stop-opacity="0.0"/>
                                                    </linearGradient>
                                                </defs>
                                                <!-- Grid Lines -->
                                                <line x1="10" y1="20" x2="250" y2="20" stroke="#F3F4F6" stroke-width="1" />
                                                <line x1="10" y1="50" x2="250" y2="50" stroke="#F3F4F6" stroke-width="1" />
                                                <line x1="10" y1="80" x2="250" y2="80" stroke="#F3F4F6" stroke-width="1" />
                                                
                                                <!-- Area Fill -->
                                                <path d="M 10 65 Q 40 45, 80 58 T 150 40 T 210 52 T 250 35 L 250 85 L 10 85 Z" fill="url(#chartGrad)"/>
                                                
                                                <!-- Line -->
                                                <path d="M 10 65 Q 40 45, 80 58 T 150 40 T 210 52 T 250 35" fill="none" stroke="#3DA86F" stroke-width="2" stroke-linecap="round"/>
                                                
                                                <!-- Axis Dots -->
                                                <circle cx="80" cy="58" r="2.5" fill="#3DA86F" />
                                                <circle cx="150" cy="40" r="2.5" fill="#3DA86F" />
                                                <circle cx="250" cy="35" r="2.5" fill="#3DA86F" />
                                                
                                                <!-- X Axis Labels -->
                                                <text x="10" y="100" font-size="7" fill="#9CA3AF">Day 1</text>
                                                <text x="50" y="100" font-size="7" fill="#9CA3AF">Day 5</text>
                                                <text x="90" y="100" font-size="7" fill="#9CA3AF">Day 10</text>
                                                <text x="130" y="100" font-size="7" fill="#9CA3AF">Day 15</text>
                                                <text x="170" y="100" font-size="7" fill="#9CA3AF">Day 20</text>
                                                <text x="210" y="100" font-size="7" fill="#9CA3AF">Day 25</text>
                                                <text x="240" y="100" font-size="7" fill="#9CA3AF">Day 30</text>
                                            </svg>
                                        </div>
                                    </div>

                                    <!-- Inventory Overview Mini Table -->
                                    <div class="mockup-table-card">
                                        <div class="mockup-card-title">Inventory Overview</div>
                                        <table class="mockup-table">
                                            <thead>
                                                <tr>
                                                    <th>Product Name</th>
                                                    <th>SKU Number</th>
                                                    <th>Current Stock</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><strong>Wireless Drill Pro</strong></td>
                                                    <td>DRL-WP-101</td>
                                                    <td>45</td>
                                                    <td><span class="mockup-badge badge-in-stock">In Stock</span></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Hammer, Claw 16oz</strong></td>
                                                    <td>HMR-C-16</td>
                                                    <td>12</td>
                                                    <td><span class="mockup-badge badge-low-stock">Low Stock</span></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Screwdriver Set (8pc)</strong></td>
                                                    <td>SD-SET-800</td>
                                                    <td>8</td>
                                                    <td><span class="mockup-badge badge-low-stock">Low Stock</span></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Wrench, Adjustable 10in</strong></td>
                                                    <td>WRC-ADJ-10</td>
                                                    <td>30</td>
                                                    <td><span class="mockup-badge badge-in-stock">In Stock</span></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Tape Measure 25ft</strong></td>
                                                    <td>TPM-25FT-01</td>
                                                    <td>75</td>
                                                    <td><span class="mockup-badge badge-in-stock">In Stock</span></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Utility Knife</strong></td>
                                                    <td>UKN-GEN-001</td>
                                                    <td>14</td>
                                                    <td><span class="mockup-badge badge-low-stock">Low Stock</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- ==========================================
             Section 2: Everything You Need to Manage Your Stock (Features)
             ========================================== -->
        <section class="features-section" id="features">
            <div class="features-header">
                <h2>Everything You Need to Manage Your Stock</h2>
                <p>A comprehensive suite of tools designed to maintain accurate inventory records and streamline operations.</p>
            </div>

            <div class="features-grid-2x2">
                <!-- Card 1: Product Management -->
                <div class="feature-box">
                    <div class="feature-icon-wrapper">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3DA86F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="3" width="7" height="7"></rect>
                            <rect x="14" y="3" width="7" height="7"></rect>
                            <rect x="14" y="14" width="7" height="7"></rect>
                            <rect x="3" y="14" width="7" height="7"></rect>
                        </svg>
                    </div>
                    <h3>Product Management</h3>
                    <p>Centrally manage your hardware catalog. Define SKU, categories, pricing, and detailed specifications for every item in your warehouse.</p>
                </div>

                <!-- Card 2: Inventory Tracking -->
                <div class="feature-box">
                    <div class="feature-icon-wrapper">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3DA86F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path>
                            <polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
                            <line x1="12" y1="22.08" x2="12" y2="12"></line>
                        </svg>
                    </div>
                    <h3>Inventory Tracking</h3>
                    <p>Monitor stock levels in real-time. Set low-stock alerts, track bin locations, and view complete movement history for total visibility.</p>
                </div>

                <!-- Card 3: Purchase Management -->
                <div class="feature-box">
                    <div class="feature-icon-wrapper">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3DA86F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="1" y="3" width="15" height="13"></rect>
                            <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
                            <circle cx="5.5" cy="18.5" r="2.5"></circle>
                            <circle cx="18.5" cy="18.5" r="2.5"></circle>
                        </svg>
                    </div>
                    <h3>Purchase Management</h3>
                    <p>Maintain a directory of suppliers. Generate, track, and receive purchase orders directly into inventory to keep your shelves stocked.</p>
                </div>

                <!-- Card 4: Sales Management -->
                <div class="feature-box">
                    <div class="feature-icon-wrapper">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3DA86F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M4 2v20l2-1 2 1 2-1 2 1 2-1 2 1 2-1 2 1V2l-2 1-2-1-2 1-2-1-2 1-2-1-2 1-2-1z"></path>
                            <line x1="8" y1="8" x2="16" y2="8"></line>
                            <line x1="8" y1="12" x2="16" y2="12"></line>
                            <line x1="8" y1="16" x2="12" y2="16"></line>
                        </svg>
                    </div>
                    <h3>Sales Management</h3>
                    <p>Process outbound orders efficiently. Track customer transactions and automatically deduct sold items from active inventory.</p>
                </div>
            </div>
        </section>

        <!-- ==========================================
             Section 3: Streamlined Workflow
             ========================================== -->
        <section class="workflow-section">
            <div class="workflow-header">
                <h2>Streamlined Workflow</h2>
                <p>A logical process from receiving goods to fulfillment.</p>
            </div>

            <div class="workflow-steps-wrap">
                <div class="workflow-connecting-line"></div>

                <!-- Step 1 -->
                <div class="workflow-step">
                    <div class="workflow-circle">01</div>
                    <h4>Add Products</h4>
                    <p>Establish your hardware catalog with detailed specs, SKUs, and pricing.</p>
                </div>

                <!-- Step 2 -->
                <div class="workflow-step">
                    <div class="workflow-circle">02</div>
                    <h4>Track Inventory</h4>
                    <p>Monitor stock levels in real-time. Receive alerts before critical items run out.</p>
                </div>

                <!-- Step 3 -->
                <div class="workflow-step">
                    <div class="workflow-circle">03</div>
                    <h4>Manage Business</h4>
                    <p>Handle inbound purchases and outbound sales seamlessly within one platform.</p>
                </div>
            </div>
        </section>

        <!-- ==========================================
             Section: About StockForge (Story, Mission & Principles)
             ========================================== -->
        <section class="about-section" id="about">
            <div class="about-container">
                <div class="about-header">
                    <span class="about-badge">Our Story & Mission</span>
                    <h2 class="about-title">Forging Efficiency for Every Hardware Store</h2>
                    <p class="about-subtitle">
                        Empowering physical hardware retailers, electrical suppliers, and plumbing distributors with intelligent stock tracking, supplier management, and rapid counter checkout.
                    </p>
                </div>

                <!-- Story & Metrics Highlight Card -->
                <div class="about-story-card">
                    <div style="max-width: 820px;">
                        <span style="font-size: 11px; font-weight: 700; color: #006C44; text-transform: uppercase; letter-spacing: 0.6px; display: inline-block; margin-bottom: 8px;">THE HARDWARE INVENTORY PLATFORM</span>
                        <h3 style="font-size: 22px; font-weight: 800; color: #111827; margin: 0 0 14px 0; line-height: 1.3;">
                            Built to Eliminate Inventory Chaos in Supply Stores
                        </h3>
                        <p style="font-size: 14.5px; color: #4B5563; line-height: 1.7; margin: 0 0 20px 0;">
                            StockForge was created to solve the unique challenges of physical hardware supply stores. Unlike generic retail, hardware stores manage thousands of unique SKUs—from micro screws, fasteners, and PVC fittings to high-value power drills and heavy building materials. Our platform provides real-time stock control, preventing costly stockouts and accidental overstocking.
                        </p>
                    </div>

                    <!-- 4 Live Stats -->
                    <div class="about-stats-grid">
                        <div class="about-stat-item">
                            <div class="about-stat-num">10,000+</div>
                            <div class="about-stat-label">SKUs Tracked</div>
                        </div>
                        <div class="about-stat-item">
                            <div class="about-stat-num" style="color: #2563EB;">99.9%</div>
                            <div class="about-stat-label">Stock Accuracy</div>
                        </div>
                        <div class="about-stat-item">
                            <div class="about-stat-num" style="color: #059669;">500+</div>
                            <div class="about-stat-label">Hardware Stores</div>
                        </div>
                        <div class="about-stat-item">
                            <div class="about-stat-num" style="color: #7C3AED;">< 1 sec</div>
                            <div class="about-stat-label">Barcode Lookup</div>
                        </div>
                    </div>
                </div>

                <!-- 3 Core Principles -->
                <div class="about-pillars-grid">
                    <!-- Pillar 1 -->
                    <div class="about-pillar-card">
                        <div class="about-pillar-icon" style="background: #EAF8EF; color: #006C44;">
                            <i class="bi bi-speedometer2"></i>
                        </div>
                        <h3 class="about-pillar-title">Lightning-Fast Counter POS</h3>
                        <p class="about-pillar-desc">
                            Designed for high-traffic contractor morning rush hours. Quick barcode lookup, one-click billing, and instant stock deduction keep queues moving.
                        </p>
                    </div>

                    <!-- Pillar 2 -->
                    <div class="about-pillar-card">
                        <div class="about-pillar-icon" style="background: #EFF6FF; color: #2563EB;">
                            <i class="bi bi-graph-up-arrow"></i>
                        </div>
                        <h3 class="about-pillar-title">Margin Intelligence</h3>
                        <p class="about-pillar-desc">
                            Automatically track wholesale vendor price fluctuations and calculate accurate profit margins so your business stays profitable across all categories.
                        </p>
                    </div>

                    <!-- Pillar 3 -->
                    <div class="about-pillar-card">
                        <div class="about-pillar-icon" style="background: #FEF3C7; color: #D97706;">
                            <i class="bi bi-shield-check"></i>
                        </div>
                        <h3 class="about-pillar-title">Store Security & Auditing</h3>
                        <p class="about-pillar-desc">
                            Enforce strict role-based permissions for cashiers, stock managers, and store owners with immutable audit logs for stock adjustments.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- ==========================================
             Section 4: Take Control of Your Inventory (CTA Banner)
             ========================================== -->
        <section class="cta-section">
            <div class="cta-container">
                <div class="cta-icon-badge">
                    <svg width="34" height="34" viewBox="0 0 24 24" fill="none" stroke="#006C44" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M3 9l1.5-5h15L21 9v11a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9z"/>
                        <path d="M3 9h18"/>
                        <path d="M9 21v-7h6v7"/>
                    </svg>
                </div>
                <h2 class="cta-title">Take Control of Your Inventory</h2>
                <p class="cta-subtitle">
                    Stop relying on manual spreadsheets. Upgrade to a professional hardware inventory system designed to save time and reduce errors.
                </p>
                <a href="<%= ResolveUrl("~/Account/Register.aspx") %>" class="btn-cta-primary">Get Started Now</a>
            </div>
        </section>

        <!-- ==========================================
             Footer
             ========================================== -->
        <footer class="landing-footer">
            <div class="footer-inner">
                <div class="footer-left">
                    <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="footer-brand">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                            <rect x="2" y="3" width="20" height="18" rx="4" fill="#3DA86F"/>
                            <rect x="6" y="7" width="12" height="3" rx="1.5" fill="white"/>
                            <rect x="9" y="13" width="6" height="2.5" rx="1" fill="white"/>
                        </svg>
                        <span>StockForge</span>
                    </a>
                    <span class="footer-tagline">Professional Hardware Inventory Management System.</span>
                </div>

                <div class="footer-links">
                    <a href="<%= ResolveUrl("~/Products/ProductList.aspx") %>">Products</a>
                    <a href="#features">Features</a>
                    <a href="#about">About</a>
                    <a href="<%= ResolveUrl("~/Help.aspx") %>">Contact</a>
                    <a href="<%= ResolveUrl("~/Privacy.aspx") %>">Privacy Policy</a>
                    <a href="<%= ResolveUrl("~/Terms.aspx") %>">Terms of Service</a>
                    <a href="<%= ResolveUrl("~/Help.aspx") %>">Contact Support</a>
                </div>

                <div class="footer-copy">
                    © <%= DateTime.Now.Year %> StockForge. All rights reserved.
                </div>
            </div>
        </footer>

        <!-- Smooth Scroll & Scrollspy Script -->
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                // Smooth scroll on anchor clicks
                var navAnchors = document.querySelectorAll('a[href^="#"]');
                navAnchors.forEach(function (anchor) {
                    anchor.addEventListener('click', function (e) {
                        var targetId = this.getAttribute('href');
                        if (targetId && targetId !== '#') {
                            var targetEl = document.querySelector(targetId);
                            if (targetEl) {
                                e.preventDefault();
                                targetEl.scrollIntoView({ behavior: 'smooth' });

                                // Update URL hash without jumping
                                if (history.pushState) {
                                    history.pushState(null, null, targetId);
                                }

                                // Update active link in navbar
                                document.querySelectorAll('.landing-nav-links a').forEach(function (a) {
                                    a.classList.remove('active');
                                });
                                var matchingNav = document.querySelector('.landing-nav-links a[href="' + targetId + '"]');
                                if (matchingNav) {
                                    matchingNav.classList.add('active');
                                }
                            }
                        }
                    });
                });

                // Scrollspy: Highlight current section link on scroll
                var trackedSections = ['home', 'features', 'about'];
                window.addEventListener('scroll', function () {
                    var scrollPos = window.scrollY + 120;
                    trackedSections.forEach(function (secId) {
                        var secEl = document.getElementById(secId);
                        if (secEl) {
                            var top = secEl.offsetTop;
                            var height = secEl.offsetHeight;
                            if (scrollPos >= top && scrollPos < top + height) {
                                document.querySelectorAll('.landing-nav-links a').forEach(function (a) {
                                    a.classList.remove('active');
                                });
                                var curLink = document.querySelector('.landing-nav-links a[href="#' + secId + '"]');
                                if (curLink) {
                                    curLink.classList.add('active');
                                }
                            }
                        }
                    });
                });
            });
        </script>
    </form>
</body>
</html>
