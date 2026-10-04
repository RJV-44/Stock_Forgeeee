<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="Stock_Forgeeee.Error._404" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>404 Page Not Found - StockForge</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <style>
        body {
            background-color: #0F172A;
            color: #F8FAFC;
            font-family: 'Inter', sans-serif;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            text-align: center;
        }
        .error-card {
            max-width: 520px;
            padding: 40px 24px;
        }
        .error-code {
            font-size: 110px;
            font-weight: 900;
            line-height: 1;
            margin: 0;
            background: linear-gradient(135deg, #4CAF7D 0%, #60A5FA 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .error-title {
            font-size: 26px;
            font-weight: 700;
            margin: 16px 0 12px;
            color: #FFFFFF;
        }
        .error-desc {
            font-size: 15px;
            color: #94A3B8;
            margin-bottom: 32px;
            line-height: 1.6;
        }
        .btn-home {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: #4CAF7D;
            color: #FFF;
            padding: 12px 26px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            font-size: 15px;
            box-shadow: 0 4px 14px rgba(76, 175, 125, 0.4);
            transition: transform 0.2s;
        }
        .btn-home:hover {
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="error-card">
            <div style="font-size: 48px; color: #4CAF7D; margin-bottom: 8px;">
                <i class="bi bi-search text-primary"></i>
            </div>
            <h1 class="error-code">404</h1>
            <h2 class="error-title">Hardware Item or Page Not Found</h2>
            <p class="error-desc">
                The hardware page or inventory SKU you requested does not exist or has been moved to a new section.
            </p>
            <div style="display: flex; gap: 12px; justify-content: center;">
                <a href="<%= ResolveUrl("~/Dashboard.aspx") %>" class="btn-home">
                    <i class="bi bi-grid-1x2-fill"></i> Go to Dashboard
                </a>
                <a href="<%= ResolveUrl("~/Landing.aspx") %>" class="btn-home" style="background: rgba(255,255,255,0.1); border: 1px solid rgba(255,255,255,0.2);">
                    <i class="bi bi-house"></i> Landing Page
                </a>
            </div>
        </div>
    </form>
</body>
</html>
