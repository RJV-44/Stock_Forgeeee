<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="500.aspx.cs" Inherits="Stock_Forgeeee.Error._500" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>500 Internal Server Error - StockForge</title>
    
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
            color: #EF4444;
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
            <div style="font-size: 48px; color: #EF4444; margin-bottom: 8px;">
                <i class="bi bi-exclamation-triangle-fill"></i>
            </div>
            <h1 class="error-code">500</h1>
            <h2 class="error-title">System Technical Glitch</h2>
            <p class="error-desc">
                An unexpected server error occurred while processing your inventory request. Our technical team has been notified.
            </p>
            <div style="display: flex; gap: 12px; justify-content: center;">
                <a href="<%= ResolveUrl("~/Dashboard.aspx") %>" class="btn-home">
                    <i class="bi bi-arrow-clockwise"></i> Return to Dashboard
                </a>
            </div>
        </div>
    </form>
</body>
</html>
