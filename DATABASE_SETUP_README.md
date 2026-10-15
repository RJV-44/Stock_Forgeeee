# StockForge - Database Setup & Execution Guide 🛠️

Welcome! This guide explains how to set up, create, and populate the **StockForge** database on any machine in under 2 minutes.

---

## 📌 Quick Summary
* **Database Name:** `StockForgeDatabse`
* **Schema Script:** [`Database/StockForge_Schema.sql`](file:///d:/.net%20Project/Stock_Forgeeee/Database/StockForge_Schema.sql)
* **Total Tables:** **24 Tables** (Complete ERP suite with Roles, Users, Inventory, Sales, Purchases, Settings, etc.)
* **Seed Data Included:** Yes (Admin users, hardware categories, brands, default suppliers, and store settings).

---

## 🚀 Choose Your Preferred Setup Method

### Method 1: Using SQL Server Management Studio (SSMS) — Most Common

1. **Open SSMS** and connect to your SQL Server instance:
   * **Server Name:** `(localdb)\MSSQLLocalDB` OR `.\SQLEXPRESS` OR `.` (localhost)
   * **Authentication:** Windows Authentication
   * Click **Connect**.
2. **Open the Script:**
   * Go to **File** $\rightarrow$ **Open** $\rightarrow$ **File...** (or press `Ctrl + O`).
   * Select: `StockForge/Database/StockForge_Schema.sql`.
3. **Run the Script:**
   * Click the green **Execute** button on the toolbar (or press **`F5`**).
   * You will see the message: `Commands completed successfully.`
4. **Verify:**
   * In Object Explorer, right-click **Databases** $\rightarrow$ **Refresh**.
   * Expand `StockForgeDatabse` $\rightarrow$ **Tables**. You will see all 24 tables created and seeded.

---

### Method 2: Using Visual Studio (No SSMS Required)

1. Open the project solution `Stock_Forgeeee.sln` in **Visual Studio 2022**.
2. Open **SQL Server Object Explorer**:
   * Go to menu: **View** $\rightarrow$ **SQL Server Object Explorer**.
3. Expand: `(localdb)\MSSQLLocalDB` $\rightarrow$ **Databases**.
4. Open the SQL file:
   * In Solution Explorer, expand the `Database` folder.
   * Double-click `StockForge_Schema.sql`.
5. Connect & Execute:
   * Click the green **Execute** arrow (or press `Ctrl + Shift + E`).
   * If prompted, select server `(localdb)\MSSQLLocalDB`.

---

### Method 3: One-Line Command via PowerShell / Terminal

If you have `sqlcmd` installed, open PowerShell in the project directory and run:

```powershell
sqlcmd -S "(localdb)\MSSQLLocalDB" -i "Database\StockForge_Schema.sql"
```

*For SQL Server Express:*
```powershell
sqlcmd -S ".\SQLEXPRESS" -i "Database\StockForge_Schema.sql"
```

---

## 🔌 Connection String Configuration (`Web.config`)

Check your [`Web.config`](file:///d:/.net%20Project/Stock_Forgeeee/Web.config) file under `<connectionStrings>` to match your SQL Server environment:

### Option A: Using LocalDB with Embedded MDF (Default Project Setup)
```xml
<connectionStrings>
  <add name="StockForgeDb"
       connectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\StockForgeDatabse.mdf;Integrated Security=True;Connect Timeout=30"
       providerName="System.Data.SqlClient" />
</connectionStrings>
```

### Option B: Using SQL Server LocalDB via Database Name (SSMS Method)
```xml
<connectionStrings>
  <add name="StockForgeDb"
       connectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=StockForgeDatabse;Integrated Security=True;"
       providerName="System.Data.SqlClient" />
</connectionStrings>
```

### Option C: Using SQL Server Express (`.\SQLEXPRESS`)
```xml
<connectionStrings>
  <add name="StockForgeDb"
       connectionString="Data Source=.\SQLEXPRESS;Initial Catalog=StockForgeDatabse;Integrated Security=True;"
       providerName="System.Data.SqlClient" />
</connectionStrings>
```

---

## 🔑 Default Login Credentials (Pre-seeded)

Once the database script is executed, you can immediately log in at `/Account/Login.aspx` using any of these pre-configured accounts:

| Role | Email | Password | Access Level |
| :--- | :--- | :--- | :--- |
| **System Admin** | `admin@stockforge.com` | `AdminPass123!` | Full access to all modules & system settings |
| **Store Manager**| `manager@hardware.com` | `Manager123!` | Purchases, suppliers, stock overview, and reports |
| **Counter Staff**| `staff@hardware.com` | `Staff123!` | Point of sale, orders, and customer billing |
| **Team Lead** | `rajvi@stockforge.in` | `RajviPass123!` | Administrative privileges |

---

## 📋 Complete List of All 24 Tables Created

| # | Table Name | Purpose |
| :-: | :--- | :--- |
| 1 | `dbo.Roles` | System user authorization roles |
| 2 | `dbo.Permissions` | Module permission actions (View, Create, Edit, Delete) |
| 3 | `dbo.RolePermissions` | Role-to-permission mapping matrix |
| 4 | `dbo.Users` | User profiles, emails, passwords, and assigned roles |
| 5 | `dbo.UserLoginHistory` | Audit trail of user logins and IP timestamps |
| 6 | `dbo.PasswordResetTokens` | Cryptographic tokens for password recovery |
| 7 | `dbo.StoreRegistrations` | Logs store registration applications |
| 8 | `dbo.Categories` | Hardware categories (Power Tools, Plumbing, Fasteners) |
| 9 | `dbo.Brands` | Manufacturer brands (Bosch, Stanley, Havells) |
| 10 | `dbo.Products` | Product catalog, pricing, SKUs, and reorder levels |
| 11 | `dbo.Inventory` | Current warehouse stock on-hand and available |
| 12 | `dbo.InventoryTransactions`| Transaction ledger for additions, deductions, and reconciliations |
| 13 | `dbo.Suppliers` | Vendor directory, GSTIN, contacts, and payment terms |
| 14 | `dbo.Purchases` | Purchase Orders (PO) issued to suppliers |
| 15 | `dbo.PurchaseItems` | Line items and unit costs in each Purchase Order |
| 16 | `dbo.PurchaseReceipts` | Goods Received Notes (GRN) for warehouse intake |
| 17 | `dbo.PurchaseReceiptItems` | Itemized conditions (`Good`, `Damaged`) per delivery |
| 18 | `dbo.Customers` | Customer CRM (Retail, Contractor, Wholesale) |
| 19 | `dbo.Sales` | Sales transactions, tax invoices, and payment statuses |
| 20 | `dbo.SalesItems` | Line items, GST tax rates, and prices per sale |
| 21 | `dbo.InvoicePayments` | Payment settlement records (UPI, Cash, NEFT) |
| 22 | `dbo.Settings` | Store profile, address, GSTIN, tax rate (`18%`), and currency (`₹`) |
| 23 | `dbo.Notifications` | Operational alerts and low-stock warning feed |
| 24 | `dbo.ContactInquiries` | Contact form inquiries from landing page |

---

## ❓ Troubleshooting & FAQs

#### Q1: "Cannot open database ... Login failed for user"
* Ensure your connection string in `Web.config` specifies `Integrated Security=True;`.
* If using SQL Server authentication, specify `User Id=sa;Password=your_password;`.

#### Q2: "The process cannot access the file because it is being used by another process"
* This happens if SQL Server LocalDB has locked the `.mdf` file.
* Open PowerShell as Administrator and run:
  ```powershell
  sqllocaldb stop MSSQLLocalDB
  ```
  Then restart it:
  ```powershell
  sqllocaldb start MSSQLLocalDB
  ```

#### Q3: "Currency symbol ₹ shows as question mark or corrupt bytes"
* Ensure your `Web.config` has the globalization setting inside `<system.web>`:
  ```xml
  <globalization fileEncoding="utf-8" requestEncoding="utf-8" responseEncoding="utf-8" culture="en-IN" uiCulture="en-IN" />
  ```
