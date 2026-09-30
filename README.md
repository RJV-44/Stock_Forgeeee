# StockForge --- ASP.NET Web Forms Implementation README

**Project:** StockForge -- Hardware Supply Business Management System\
**Design Source:** Figma --- Hardware Management System\
**Implementation:** ASP.NET Web Forms (.NET Framework) + C#\
**UI Architecture:** ASP.NET Master Page (`Site.Master`) + `.aspx`
Content Pages\
**Purpose:** This README is the developer handoff for reproducing the
StockForge Figma design as a functional .NET Web Forms website.

------------------------------------------------------------------------

## 1. Critical Implementation Rules

These rules are mandatory for the implementation.

1.  **Use ASP.NET Web Forms on .NET Framework.**
2.  Use **C# code-behind** (`.aspx.cs`).
3.  Use an ASP.NET **Master Page** (`Site.Master`) for the common
    application shell.
4.  Do **not** convert the project to ASP.NET Core MVC.
5.  Do **not** use React, Angular, Vue, Blazor, or another frontend
    framework.
6.  Use **HTML + CSS + JavaScript/jQuery + Bootstrap only where it helps
    reproduce the design**.
7.  The Figma design is the visual source of truth. Do not redesign the
    screens.
8.  Preserve the same page hierarchy, navigation pattern, spacing,
    cards, tables, forms, buttons, icons, colors, and responsive
    behavior.
9.  Use **Indian Rupee (₹ / INR)** wherever a monetary amount is
    displayed. Never use `$` or USD.
10. Use reusable CSS classes and Web Forms User Controls instead of
    duplicating the same UI on every page.
11. Do not add unnecessary animations, gradients, glassmorphism, or
    decorative effects that are not present in the design.
12. Keep the interface clean, professional, and business-oriented.

------------------------------------------------------------------------

# 2. Technology Stack

  -----------------------------------------------------------------------
  Layer                               Technology
  ----------------------------------- -----------------------------------
  Framework                           ASP.NET Web Forms

  Runtime                             .NET Framework

  Language                            C#

  Page format                         `.aspx`

  Common layout                       `Site.Master`

  Styling                             CSS3

  Responsive framework                Bootstrap 5 only where useful

  Client-side behavior                JavaScript / jQuery

  Database                            SQL Server / project-approved
                                      database

  Data access                         ADO.NET or the method required by
                                      the course/project

  Icons                               Bootstrap Icons or the icon set
                                      matching the design

  Reports                             ASP.NET-generated report pages /
                                      PDF mechanism used by project

  IDE                                 Visual Studio
  -----------------------------------------------------------------------

------------------------------------------------------------------------

# 3. Recommended Project Structure

Use a structure similar to:

``` text
StockForge/
│
├── Site.Master
├── Site.Master.cs
├── Default.aspx
├── Login.aspx
├── ForgotPassword.aspx
├── ResetPassword.aspx
│
├── Dashboard.aspx
│
├── Products/
│   ├── ProductList.aspx
│   ├── ProductDetails.aspx
│   ├── AddProduct.aspx
│   └── EditProduct.aspx
│
├── Inventory/
│   ├── StockOverview.aspx
│   ├── StockMovementHistory.aspx
│   └── StockAdjustment.aspx
│
├── Suppliers/
│   ├── SupplierList.aspx
│   ├── SupplierDetails.aspx
│   ├── AddSupplier.aspx
│   └── EditSupplier.aspx
│
├── Purchases/
│   ├── PurchaseOrderDetails.aspx
│   ├── EditPurchaseOrder.aspx
│   ├── ReceivePurchase.aspx
│   └── MyPurchase.aspx
│
├── Sales/
│   ├── SalesList.aspx
│   ├── NewSale.aspx
│   ├── SaleDetails.aspx
│   └── EditSale.aspx
│
├── Customers/
│   ├── CustomerList.aspx
│   ├── CustomerDetails.aspx
│   ├── AddCustomer.aspx
│   └── EditCustomer.aspx
│
├── Reports/
│   ├── ReportsDashboard.aspx
│   ├── SalesReport.aspx
│   ├── PurchaseReport.aspx
│   ├── InventoryReport.aspx
│   └── StockValuationReport.aspx
│
├── Users/
│   ├── UserManagement.aspx
│   ├── UserDetails.aspx
│   ├── AddUser.aspx
│   ├── EditUser.aspx
│   └── RolesPermissions.aspx
│
├── Account/
│   └── MyProfile.aspx
│
├── Settings/
│   └── Settings.aspx
│
├── Notifications/
│   └── Notifications.aspx
│
├── Content/
│   ├── site.css
│   ├── responsive.css
│   └── components.css
│
├── Scripts/
│   ├── site.js
│   └── validation.js
│
├── Images/
│   ├── logo/
│   ├── products/
│   └── avatars/
│
├── Controls/
│   ├── Sidebar.ascx
│   ├── Topbar.ascx
│   ├── StatCard.ascx
│   ├── NotificationPanel.ascx
│   └── Pagination.ascx
│
├── App_Code/
├── App_Data/
└── Web.config
```

------------------------------------------------------------------------

# 4. Master Page Requirement

The entire authenticated application should use **`Site.Master`**.

The Master Page is the Web Forms equivalent of the common application
shell. It should contain:

-   Left sidebar
-   Top/header area
-   Application logo/name
-   Notification access
-   User/profile area
-   Main content placeholder
-   Common CSS references
-   Common JavaScript references

Example:

``` aspx
<%@ Master Language="C#" AutoEventWireup="true"
    CodeBehind="Site.Master.cs"
    Inherits="StockForge.SiteMaster" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>StockForge</title>

    <link href="Content/site.css" rel="stylesheet" />
    <link href="Content/components.css" rel="stylesheet" />
    <link href="Content/responsive.css" rel="stylesheet" />
</head>

<body>
<form id="form1" runat="server">

    <div class="app-shell">

        <aside class="sidebar">
            <!-- StockForge logo -->
            <!-- Navigation -->
        </aside>

        <div class="main-area">

            <header class="topbar">
                <!-- Page title -->
                <!-- Notifications -->
                <!-- User profile -->
            </header>

            <main class="page-content">
                <asp:ContentPlaceHolder
                    ID="MainContent"
                    runat="server" />
            </main>

        </div>
    </div>

</form>

<script src="Scripts/jquery-3.x.x.min.js"></script>
<script src="Scripts/site.js"></script>
</body>
</html>
```

Every internal page should then use:

``` aspx
<%@ Page Title="Products"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="ProductList.aspx.cs"
    Inherits="StockForge.Products.ProductList" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <!-- Page-specific content -->

</asp:Content>
```

------------------------------------------------------------------------

# 5. Visual Design System

## 5.1 Overall Style

The UI should feel:

-   Clean
-   Modern
-   Professional
-   Business-focused
-   Minimal
-   Spacious
-   Easy to scan
-   Consistent across modules

Use the Figma spacing and proportions rather than inventing new layouts.

------------------------------------------------------------------------

# 6. Color System

Use CSS variables so the entire application can be changed from one
location.

``` css
:root {
    --primary: #4CAF7D;
    --primary-dark: #3D946A;
    --primary-light: #EAF7F0;

    --background: #F8FAFC;
    --surface: #FFFFFF;
    --surface-muted: #F5F7F9;

    --text-primary: #1F2937;
    --text-secondary: #6B7280;
    --text-muted: #9CA3AF;

    --border: #E5E7EB;

    --success: #22C55E;
    --warning: #F59E0B;
    --danger: #EF4444;
    --info: #3B82F6;

    --sidebar-width: 250px;
    --topbar-height: 72px;

    --radius-sm: 6px;
    --radius-md: 10px;
    --radius-lg: 14px;

    --shadow-sm: 0 1px 3px rgba(0,0,0,.05);
    --shadow-md: 0 4px 12px rgba(0,0,0,.06);
}
```

If a Figma screen uses a slightly different shade, use the Figma value
for that specific element instead of introducing a random new color.

------------------------------------------------------------------------

# 7. Typography

Use a clean UI font matching the design.

Recommended:

``` css
body {
    font-family: "Inter", "Segoe UI", Arial, sans-serif;
    font-size: 14px;
    color: var(--text-primary);
    background: var(--background);
}
```

Typography hierarchy:

``` css
.page-title {
    font-size: 24px;
    font-weight: 700;
    line-height: 1.25;
}

.section-title {
    font-size: 18px;
    font-weight: 600;
}

.card-title {
    font-size: 15px;
    font-weight: 600;
}

.body-text {
    font-size: 14px;
}

.small-text {
    font-size: 12px;
    color: var(--text-secondary);
}
```

Do not use oversized headings that are not present in the design.

------------------------------------------------------------------------

# 8. Global CSS

Create `Content/site.css`.

``` css
* {
    box-sizing: border-box;
}

html,
body {
    margin: 0;
    padding: 0;
    min-height: 100%;
}

body {
    background: var(--background);
    color: var(--text-primary);
    font-family: "Inter", "Segoe UI", Arial, sans-serif;
    font-size: 14px;
}

a {
    color: inherit;
    text-decoration: none;
}

button,
input,
select,
textarea {
    font: inherit;
}

img {
    max-width: 100%;
    display: block;
}

.app-shell {
    min-height: 100vh;
    display: flex;
}

.main-area {
    flex: 1;
    min-width: 0;
    margin-left: var(--sidebar-width);
}

.page-content {
    padding: 24px;
}

.page-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 16px;
    margin-bottom: 24px;
}

.page-title {
    margin: 0;
    font-size: 24px;
    font-weight: 700;
}

.page-subtitle {
    margin-top: 4px;
    color: var(--text-secondary);
}
```

------------------------------------------------------------------------

# 9. Sidebar

The sidebar is a reusable component and belongs in the Master Page.

``` css
.sidebar {
    position: fixed;
    left: 0;
    top: 0;
    bottom: 0;
    width: var(--sidebar-width);
    background: var(--surface);
    border-right: 1px solid var(--border);
    padding: 20px 14px;
    z-index: 1000;
    overflow-y: auto;
}

.sidebar-brand {
    display: flex;
    align-items: center;
    gap: 10px;
    padding: 8px 12px 24px;
}

.sidebar-brand-name {
    font-size: 20px;
    font-weight: 700;
}

.nav-section {
    margin: 20px 10px 8px;
    font-size: 11px;
    font-weight: 600;
    color: var(--text-muted);
    text-transform: uppercase;
}

.nav-item {
    display: flex;
    align-items: center;
    gap: 12px;
    min-height: 44px;
    padding: 10px 12px;
    border-radius: var(--radius-md);
    color: var(--text-secondary);
    transition: background-color .15s ease;
}

.nav-item:hover {
    background: var(--surface-muted);
    color: var(--text-primary);
}

.nav-item.active {
    background: var(--primary-light);
    color: var(--primary);
    font-weight: 600;
}
```

### Sidebar rules

-   Active menu item must clearly show the current page.
-   Use the same icon style throughout.
-   Keep labels consistent.
-   Do not create a different sidebar for each page.
-   Sidebar must work on smaller screens.

------------------------------------------------------------------------

# 10. Topbar

``` css
.topbar {
    height: var(--topbar-height);
    background: var(--surface);
    border-bottom: 1px solid var(--border);
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 24px;
    position: sticky;
    top: 0;
    z-index: 900;
}

.topbar-actions {
    display: flex;
    align-items: center;
    gap: 10px;
}

.icon-button {
    width: 40px;
    height: 40px;
    border: 0;
    background: transparent;
    border-radius: 50%;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
}

.icon-button:hover {
    background: var(--surface-muted);
}
```

------------------------------------------------------------------------

# 11. Cards

``` css
.card {
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: var(--radius-lg);
    box-shadow: var(--shadow-sm);
}

.card-header {
    padding: 18px 20px;
    border-bottom: 1px solid var(--border);
}

.card-body {
    padding: 20px;
}

.card-footer {
    padding: 14px 20px;
    border-top: 1px solid var(--border);
}
```

Cards should not have unnecessary gradients or heavy shadows.

------------------------------------------------------------------------

# 12. Dashboard KPI Cards

``` css
.kpi-grid {
    display: grid;
    grid-template-columns: repeat(4, minmax(0, 1fr));
    gap: 16px;
}

.kpi-card {
    padding: 20px;
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: var(--radius-lg);
}

.kpi-label {
    color: var(--text-secondary);
    font-size: 13px;
}

.kpi-value {
    margin-top: 8px;
    font-size: 26px;
    font-weight: 700;
}

.kpi-change {
    margin-top: 8px;
    font-size: 12px;
}

.kpi-change.positive {
    color: var(--success);
}

.kpi-change.negative {
    color: var(--danger);
}
```

Use ₹ for monetary KPI values:

``` text
₹1,25,000
₹48,500
```

Never:

``` text
$1,250
USD 1,250
```

------------------------------------------------------------------------

# 13. Buttons

``` css
.btn-primary {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 8px;

    min-height: 40px;
    padding: 9px 16px;

    border: 1px solid var(--primary);
    border-radius: var(--radius-md);

    background: var(--primary);
    color: #fff;

    font-weight: 600;
    cursor: pointer;
}

.btn-primary:hover {
    background: var(--primary-dark);
}

.btn-secondary {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    min-height: 40px;
    padding: 9px 16px;

    border: 1px solid var(--border);
    border-radius: var(--radius-md);

    background: #fff;
    color: var(--text-primary);
}

.btn-danger {
    background: var(--danger);
    color: #fff;
    border: 1px solid var(--danger);
}

.btn-success {
    background: var(--success);
    color: #fff;
    border: 1px solid var(--success);
}
```

Buttons should have consistent height, padding, radius, and typography.

------------------------------------------------------------------------

# 14. Forms

``` css
.form-group {
    margin-bottom: 18px;
}

.form-label {
    display: block;
    margin-bottom: 7px;
    font-weight: 600;
    color: var(--text-primary);
}

.form-control,
.form-select {
    width: 100%;
    min-height: 42px;
    padding: 9px 12px;

    border: 1px solid var(--border);
    border-radius: var(--radius-md);

    background: #fff;
    color: var(--text-primary);

    outline: none;
}

.form-control:focus,
.form-select:focus {
    border-color: var(--primary);
    box-shadow: 0 0 0 3px rgba(76,175,125,.12);
}

textarea.form-control {
    min-height: 100px;
    resize: vertical;
}
```

Required field:

``` html
<span class="required">*</span>
```

``` css
.required {
    color: var(--danger);
}
```

------------------------------------------------------------------------

# 15. Tables

Use tables for products, suppliers, customers, sales, purchases, and
users.

``` css
.data-table {
    width: 100%;
    border-collapse: collapse;
    background: #fff;
}

.data-table th {
    padding: 13px 16px;
    text-align: left;
    background: var(--surface-muted);
    color: var(--text-secondary);
    font-size: 12px;
    font-weight: 600;
    border-bottom: 1px solid var(--border);
}

.data-table td {
    padding: 14px 16px;
    border-bottom: 1px solid var(--border);
    vertical-align: middle;
}

.data-table tbody tr:hover {
    background: #FAFCFB;
}
```

Keep action buttons compact.

------------------------------------------------------------------------

# 16. Status Badges

``` css
.badge {
    display: inline-flex;
    align-items: center;
    padding: 5px 9px;
    border-radius: 999px;
    font-size: 11px;
    font-weight: 600;
}

.badge-success {
    background: #EAF8EF;
    color: #15803D;
}

.badge-warning {
    background: #FFF7E6;
    color: #B45309;
}

.badge-danger {
    background: #FEECEC;
    color: #B91C1C;
}

.badge-info {
    background: #EAF2FF;
    color: #1D4ED8;
}

.badge-neutral {
    background: #F3F4F6;
    color: #4B5563;
}
```

Examples:

-   Paid → success
-   Unpaid → warning
-   Cancelled → danger
-   Active → success
-   Inactive → neutral
-   Low Stock → warning/danger depending on the Figma state

------------------------------------------------------------------------

# 17. Search and Filters

``` css
.filter-bar {
    display: flex;
    align-items: center;
    gap: 12px;
    flex-wrap: wrap;
    margin-bottom: 18px;
}

.search-box {
    position: relative;
    flex: 1;
    min-width: 220px;
}

.search-box input {
    width: 100%;
    min-height: 42px;
    padding: 9px 12px 9px 38px;
    border: 1px solid var(--border);
    border-radius: var(--radius-md);
}
```

Filters should not move the main content unexpectedly.

------------------------------------------------------------------------

# 18. Empty States

Use an empty state when there is no data.

``` css
.empty-state {
    padding: 48px 20px;
    text-align: center;
    color: var(--text-secondary);
}

.empty-state-title {
    margin-top: 12px;
    font-size: 16px;
    font-weight: 600;
    color: var(--text-primary);
}

.empty-state-text {
    margin-top: 6px;
    font-size: 13px;
}
```

------------------------------------------------------------------------

# 19. Modals

``` css
.modal-content {
    border: 0;
    border-radius: var(--radius-lg);
    box-shadow: 0 15px 40px rgba(0,0,0,.15);
}

.modal-header {
    padding: 18px 20px;
    border-bottom: 1px solid var(--border);
}

.modal-body {
    padding: 20px;
}

.modal-footer {
    padding: 14px 20px;
    border-top: 1px solid var(--border);
}
```

Use modals only where the design uses a modal. Do not replace full pages
with modals without a design reason.

------------------------------------------------------------------------

# 20. Responsive Design

Create `Content/responsive.css`.

``` css
@media (max-width: 1200px) {
    .kpi-grid {
        grid-template-columns: repeat(2, minmax(0, 1fr));
    }
}

@media (max-width: 992px) {
    :root {
        --sidebar-width: 0px;
    }

    .sidebar {
        transform: translateX(-100%);
        transition: transform .2s ease;
    }

    .sidebar.open {
        transform: translateX(0);
        width: 250px;
    }

    .main-area {
        margin-left: 0;
    }
}

@media (max-width: 768px) {
    .page-content {
        padding: 16px;
    }

    .page-header {
        align-items: flex-start;
        flex-direction: column;
    }

    .kpi-grid {
        grid-template-columns: 1fr;
    }

    .filter-bar {
        flex-direction: column;
        align-items: stretch;
    }

    .search-box {
        width: 100%;
    }

    .table-wrapper {
        overflow-x: auto;
    }

    .data-table {
        min-width: 760px;
    }
}
```

The desktop design must remain the primary visual reference. Responsive
behavior should preserve usability without changing the visual identity.

------------------------------------------------------------------------

# 21. JavaScript

Create `Scripts/site.js`.

Use JavaScript/jQuery for:

-   Sidebar toggle
-   Dropdowns
-   Modal interaction
-   Search/filter UI
-   Password visibility
-   Client-side validation where required
-   Notification panel
-   Table interactions
-   Confirmation dialogs

Do not put large JavaScript blocks directly into every `.aspx` file.

Example:

``` javascript
$(function () {

    $(".sidebar-toggle").on("click", function () {
        $(".sidebar").toggleClass("open");
    });

    $(".password-toggle").on("click", function () {
        const input = $(this)
            .closest(".password-wrapper")
            .find("input");

        input.attr(
            "type",
            input.attr("type") === "password" ? "text" : "password"
        );
    });

});
```

------------------------------------------------------------------------

# 22. Web Forms Controls

Prefer ASP.NET controls where server-side functionality is required.

Example:

``` aspx
<asp:TextBox
    ID="txtProductName"
    runat="server"
    CssClass="form-control" />

<asp:DropDownList
    ID="ddlCategory"
    runat="server"
    CssClass="form-select" />

<asp:Button
    ID="btnSave"
    runat="server"
    Text="Save Product"
    CssClass="btn-primary"
    OnClick="btnSave_Click" />
```

Do not allow default Web Forms styling to override the Figma styling.

------------------------------------------------------------------------

# 23. GridView Styling

If `GridView` is used:

``` aspx
<asp:GridView
    ID="gvProducts"
    runat="server"
    CssClass="data-table"
    AutoGenerateColumns="False">
</asp:GridView>
```

Use CSS to make the generated table match the Figma design.

Avoid default GridView borders, blue links, or browser-style controls.

------------------------------------------------------------------------

# 24. Authentication Screens

The authentication flow includes:

1.  Landing Page
2.  Login
3.  Forgot Password
4.  Reset Password

Authentication pages should use a simpler layout than the authenticated
dashboard if the Figma design shows a separate authentication shell.

### Login requirements

-   Email/username field
-   Password field
-   Show/hide password
-   Login button
-   Forgot Password link
-   Validation message
-   Figma-matching branding

Do not show the dashboard sidebar on the login screen unless the Figma
explicitly does so.

------------------------------------------------------------------------

# 25. Dashboard

The dashboard is the primary authenticated landing page.

It should contain the elements shown in the design, such as:

-   KPI/stat cards
-   Sales overview
-   Inventory information
-   Low-stock information
-   Recent activity
-   Quick actions
-   Relevant business summaries

All dashboard values should come from the database once backend
integration is implemented.

------------------------------------------------------------------------

# 26. Product Management

Pages:

-   Product List
-   Product Details
-   Add Product
-   Edit Product

Product data should support the fields represented in the design.

Typical fields:

-   Product name
-   Category
-   SKU/product code if present
-   Unit
-   Purchase price
-   Selling price
-   Minimum stock level
-   Current stock
-   Batch number where required
-   Expiry date where required
-   Status
-   Product image where required

Money must use ₹ / INR.

------------------------------------------------------------------------

# 27. Inventory

Pages:

-   Stock Overview
-   Stock Movement History
-   Stock Adjustment
-   Inventory Report
-   Stock Valuation Report

Inventory should show:

-   Current stock
-   Low-stock state
-   Stock movement
-   Adjustment records
-   Stock valuation
-   Relevant product information

Do not create a warehouse-management UI that is not present in the
design.

------------------------------------------------------------------------

# 28. Supplier Management

Pages:

-   Supplier List with KPIs
-   Supplier Details
-   Add Supplier
-   Edit Supplier

Supplier information should include only fields required by the
design/business requirements.

Supplier-related monetary values must use INR.

------------------------------------------------------------------------

# 29. Purchase Management

Pages:

-   Purchase Order Details
-   Edit Purchase Order
-   Receive Purchase
-   My Purchase
-   Purchase Report
-   Responsive Purchase Order System

Important behaviors:

-   Purchase Order Number should be generated automatically.
-   Purchase receipt should update inventory.
-   Purchase return behavior should be supported if present in the
    project requirements.
-   Do not invent unnecessary delivery/notification screens.

------------------------------------------------------------------------

# 30. Sales Management

Pages:

-   Sales List
-   New Sale
-   Sale Details
-   Edit Sale
-   Sales Report
-   Responsive Invoice System

Important behavior:

1.  User selects customer.
2.  User selects products.
3.  Quantity is entered.
4.  Total is calculated.
5.  Sale is saved.
6.  Inventory is updated.
7.  Invoice is generated according to the project flow.

Use Indian numbering/currency presentation where applicable.

Example:

``` text
Subtotal      ₹10,000
Tax           ₹1,800
Grand Total   ₹11,800
```

------------------------------------------------------------------------

# 31. Customer Management

Pages:

-   Customer List
-   Customer Details
-   Add Customer
-   Edit Customer

Use consistent table, form, badge, and action styles.

Optional GST information should be displayed only where required by the
project/design.

------------------------------------------------------------------------

# 32. Reports

Pages:

-   Reports Dashboard
-   Sales Report
-   Purchase Report
-   Inventory Report
-   Stock Valuation Report

Reports should prioritize:

-   Clear filters
-   Date range
-   Summary information
-   Tables
-   Totals
-   Print/export action if represented in the design

Do not introduce Excel export if it is not part of the approved project
requirements.

------------------------------------------------------------------------

# 33. User Management

Pages:

-   User Management
-   User Details
-   Add User
-   Edit User
-   Roles & Permissions

Admin functionality should support:

-   Add user
-   Edit user
-   Activate/deactivate user
-   Delete user where permitted
-   Assign role
-   Manage permissions

Permissions should be enforced in C# server-side code, not only hidden
through CSS/JavaScript.

------------------------------------------------------------------------

# 34. Profile, Settings & Notifications

Pages:

-   My Profile
-   Settings
-   Notifications
-   Actions & Profile

Keep these pages visually consistent with the main application shell.

Notifications should use the same badge/icon language as the Figma
design.

------------------------------------------------------------------------

# 35. Reusable Components

Create reusable Web Forms User Controls (`.ascx`) for repeated UI.

Recommended:

``` text
Controls/
├── Sidebar.ascx
├── Topbar.ascx
├── StatCard.ascx
├── NotificationPanel.ascx
├── UserMenu.ascx
├── StatusBadge.ascx
└── Pagination.ascx
```

Example:

``` aspx
<uc1:Sidebar runat="server" ID="Sidebar1" />
```

This prevents duplicate HTML and keeps the design consistent.

------------------------------------------------------------------------

# 36. Page Naming

Use clear page names.

Recommended:

``` text
ProductList.aspx
ProductDetails.aspx
AddProduct.aspx
EditProduct.aspx

SupplierList.aspx
SupplierDetails.aspx
AddSupplier.aspx
EditSupplier.aspx

CustomerList.aspx
CustomerDetails.aspx
AddCustomer.aspx
EditCustomer.aspx
```

Do not use names such as:

``` text
page1.aspx
newpage.aspx
test2.aspx
finalpage.aspx
```

------------------------------------------------------------------------

# 37. Database/UI Separation

The UI should not contain SQL queries directly.

Bad:

``` csharp
protected void Page_Load(...)
{
    // SQL query + UI + business logic all mixed here
}
```

Prefer a structure such as:

``` text
.aspx
    ↓
.aspx.cs
    ↓
Business/Data Layer
    ↓
Database
```

The exact data-access architecture can follow the course/project
requirements, but keep the presentation layer clean.

------------------------------------------------------------------------

# 38. Validation

Use proper validation for:

-   Required fields
-   Email format
-   Numeric values
-   Positive quantity
-   Price
-   Date
-   Password rules
-   Duplicate records

Use ASP.NET validators where appropriate:

``` aspx
<asp:RequiredFieldValidator
    ID="rfvProductName"
    runat="server"
    ControlToValidate="txtProductName"
    ErrorMessage="Product name is required."
    CssClass="validation-error" />
```

CSS:

``` css
.validation-error {
    display: block;
    margin-top: 5px;
    color: var(--danger);
    font-size: 12px;
}
```

Client-side validation improves UX, but important validation must also
be performed server-side.

------------------------------------------------------------------------

# 39. Accessibility

Follow these rules:

-   Use real labels for form controls.
-   Maintain visible focus states.
-   Do not rely only on color to indicate status.
-   Use descriptive `alt` text for meaningful images.
-   Decorative images should have empty alt text.
-   Use semantic headings.
-   Ensure buttons have clear labels.
-   Maintain sufficient contrast.
-   Ensure keyboard users can access navigation and controls.

Example:

``` html
<img src="Images/logo/stockforge-logo.svg"
     alt="StockForge" />
```

------------------------------------------------------------------------

# 40. Image Rules

Use:

``` css
.product-image {
    width: 48px;
    height: 48px;
    object-fit: cover;
    border-radius: 8px;
}
```

Do not stretch images.

For large screenshots/design references, preserve their aspect ratio.

------------------------------------------------------------------------

# 41. Icons

Use one icon family consistently.

Recommended:

-   Bootstrap Icons
-   Or the exact icon family represented in the Figma design

Examples:

``` html
<i class="bi bi-grid"></i>
<i class="bi bi-box-seam"></i>
<i class="bi bi-people"></i>
<i class="bi bi-cart"></i>
<i class="bi bi-bar-chart"></i>
```

Do not mix random Font Awesome, Material Icons, Unicode symbols, and SVG
icons unless required.

------------------------------------------------------------------------

# 42. Spacing System

Use a consistent spacing scale:

``` css
:root {
    --space-1: 4px;
    --space-2: 8px;
    --space-3: 12px;
    --space-4: 16px;
    --space-5: 20px;
    --space-6: 24px;
    --space-8: 32px;
    --space-10: 40px;
}
```

Prefer these values over arbitrary values.

Typical usage:

-   Page padding: 24px
-   Card padding: 20px
-   Form field gap: 18px
-   Table cell padding: 14--16px
-   Button horizontal padding: 16px

Adjust when the Figma measurement clearly differs.

------------------------------------------------------------------------

# 43. Border Radius

Use the following baseline:

``` css
--radius-sm: 6px;
--radius-md: 10px;
--radius-lg: 14px;
```

Do not make every element extremely rounded.

Pills are reserved for statuses/tags where appropriate.

------------------------------------------------------------------------

# 44. Shadows

Keep shadows subtle:

``` css
box-shadow: 0 1px 3px rgba(0,0,0,.05);
```

For dialogs:

``` css
box-shadow: 0 15px 40px rgba(0,0,0,.15);
```

Do not use heavy neon or floating shadows.

------------------------------------------------------------------------

# 45. Responsive Behavior

Desktop:

``` text
Sidebar + Topbar + Main Content
```

Tablet:

``` text
Collapsible Sidebar + Topbar + Main Content
```

Mobile:

``` text
Hidden/Drawer Sidebar
Full-width Content
Stacked Cards
Horizontal Table Scrolling
```

Tables may scroll horizontally on small screens instead of becoming
unreadably narrow.

------------------------------------------------------------------------

# 46. Design Matching Checklist

Every implemented page must be checked against the Figma screen for:

### Layout

-   [ ] Same overall structure
-   [ ] Same sidebar position
-   [ ] Same header position
-   [ ] Same content width
-   [ ] Same major sections

### Typography

-   [ ] Same hierarchy
-   [ ] Similar font weights
-   [ ] Similar text sizes
-   [ ] Same capitalization style

### Colors

-   [ ] Same background
-   [ ] Same primary green
-   [ ] Same text colors
-   [ ] Same status colors

### Components

-   [ ] Buttons match
-   [ ] Cards match
-   [ ] Tables match
-   [ ] Inputs match
-   [ ] Badges match
-   [ ] Icons match

### Spacing

-   [ ] Page padding matches
-   [ ] Card spacing matches
-   [ ] Section spacing matches
-   [ ] Form spacing matches

### Behavior

-   [ ] Navigation works
-   [ ] Buttons work
-   [ ] Forms validate
-   [ ] Data loads correctly
-   [ ] CRUD actions work
-   [ ] Responsive layout works

------------------------------------------------------------------------

# 47. Complete Design Screen Reference

The supplied StockForge design package contains these
screens/components. Implement them in the same functional grouping and
visual order used by the design.

## Authentication / Entry

1.  StockForge Landing Page
2.  StockForge Login
3.  StockForge Forgot Password
4.  StockForge Reset Password

## Dashboard / Application Shell

5.  StockForge Admin Dashboard (Optimized)
6.  SideNavBar
7.  SideNavBar-1
8.  Main Content Area
9.  Actions & Profile
10. StockForge Notifications

## Product Management

11. StockForge Product List
12. StockForge Product Details
13. StockForge Add Product
14. StockForge Edit Product (Balanced Full Screen)

## Inventory

15. StockForge Stock Overview
16. StockForge Stock Movement History
17. StockForge Stock Adjustment

## Purchase Management

18. StockForge Purchase Order Details
19. StockForge Edit Purchase Order
20. StockForge Receive Purchase
21. My Purchase
22. StockForge Responsive Purchase Order System
23. Container

## Supplier Management

24. StockForge Supplier List with KPIs
25. StockForge Supplier Details
26. StockForge Add Supplier
27. StockForge Edit Supplier

## Sales Management

28. StockForge Sales List
29. StockForge New Sale
30. StockForge Sale Details
31. StockForge Edit Sale
32. StockForge Responsive Invoice System

## Customer Management

33. StockForge Customer List
34. StockForge Customer Details
35. StockForge Add Customer
36. StockForge Edit Customer

## Reports

37. StockForge Reports Dashboard
38. StockForge Sales Report
39. StockForge Purchase Report
40. StockForge Inventory Report
41. StockForge Stock Valuation Report

## User Management

42. StockForge User Management
43. StockForge User Details
44. StockForge Add User
45. StockForge Edit User (No-Scroll)
46. StockForge Roles & Permissions

## Account / Settings

47. StockForge My Profile
48. StockForge Settings

------------------------------------------------------------------------

# 48. Implementation Order

Do not implement all pages randomly.

Recommended order:

### Phase 1 --- Foundation

1.  Create ASP.NET Web Forms project.
2.  Create `Site.Master`.
3.  Add global CSS.
4.  Add sidebar.
5.  Add topbar.
6.  Add responsive behavior.
7.  Add common buttons/cards/forms/tables.

### Phase 2 --- Authentication

8.  Landing Page
9.  Login
10. Forgot Password
11. Reset Password

### Phase 3 --- Dashboard

12. Admin Dashboard

### Phase 4 --- Core CRUD

13. Products
14. Suppliers
15. Customers

### Phase 5 --- Transactions

16. Purchases
17. Sales
18. Invoices

### Phase 6 --- Inventory

19. Stock Overview
20. Stock Movement
21. Stock Adjustment

### Phase 7 --- Reports

22. Reports Dashboard
23. Sales Report
24. Purchase Report
25. Inventory Report
26. Stock Valuation Report

### Phase 8 --- Administration

27. User Management
28. User Details
29. Add/Edit User
30. Roles & Permissions

### Phase 9 --- Supporting Screens

31. My Profile
32. Settings
33. Notifications

------------------------------------------------------------------------

# 49. Final Instruction for Implementation Agent

**Implement StockForge as an ASP.NET Web Forms application on .NET
Framework using C# and an ASP.NET Master Page.**

The Figma design is the visual source of truth. Reproduce the design
rather than creating a new UI.

Use:

``` text
ASP.NET Web Forms
C#
Site.Master
.aspx pages
CSS3
JavaScript/jQuery
Bootstrap only where useful
```

The common authenticated interface must be built through `Site.Master`.

Create reusable CSS classes and reusable `.ascx` controls for repeated
components.

The implementation must be responsive, accessible, and functional.

All monetary values must use **Indian Rupee (₹ / INR)**.

Do not use:

``` text
ASP.NET Core
MVC
Blazor
React
Angular
Vue
Dollar ($)
Unnecessary animations
Gradients not present in the design
Glassmorphism
Unrelated UI redesigns
```

Before considering a page complete, compare its implementation against
the corresponding Figma screen and correct:

-   spacing
-   dimensions
-   typography
-   colors
-   borders
-   radius
-   shadows
-   icons
-   alignment
-   component states
-   responsive behavior

**Priority order:**

``` text
1. Match Figma layout
2. Match Figma styling
3. Make components reusable
4. Connect backend/database
5. Add validation
6. Test all interactions
7. Test responsive behavior
```

The final result should look like the same StockForge product shown in
Figma, but implemented as a working ASP.NET Web Forms application.

