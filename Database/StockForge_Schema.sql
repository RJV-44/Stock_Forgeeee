-- ============================================================================
-- StockForge Database Schema & Setup Script
-- Database: StockForgeDatabse
-- Description: Comprehensive database schema with proper data types, primary keys,
--              foreign keys, default constraints, indexes, and seed data.
-- ============================================================================

-- ----------------------------------------------------------------------------
-- 1. DROP EXISTING CONSTRAINTS & TABLES (Clean Slate)
-- ----------------------------------------------------------------------------

-- Drop Foreign Keys if they exist
DECLARE @sqlDropFk NVARCHAR(MAX) = N'';
SELECT @sqlDropFk += N'ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id)) + N'.' + QUOTENAME(OBJECT_NAME(parent_object_id)) + 
                     N' DROP CONSTRAINT ' + QUOTENAME(name) + N';' + CHAR(13)
FROM sys.foreign_keys;
IF LEN(@sqlDropFk) > 0 EXEC sp_executesql @sqlDropFk;

-- Drop Tables in reverse dependency order (including old/malformed table names)
DECLARE @dropTables TABLE (TableName NVARCHAR(256));
INSERT INTO @dropTables (TableName) VALUES 
    (N'dbo.InventoryTransactions'),
    (N'dbo.Inventory'),
    (N'dbo.PurchaseReceipts'),
    (N'dbo.PurchaseRecipts'),
    (N'dbo.PurchaseItems'),
    (N'dbo.Purchases'),
    (N'dbo.purchase'),
    (N'dbo.SalesItems'),
    (N'dbo.Sales'),
    (N'dbo.Products'),
    (N'dbo.Product'),
    (N'dbo.Brands'),
    (N'dbo.Categories'),
    (N'dbo.Cateogories'),
    (N'dbo.Customers'),
    (N'dbo.Table'),
    (N'dbo.Suppliers'),
    (N'dbo.ContactInquiries'),
    (N'dbo.Contact'),
    (N'dbo.UserLoginHistory'),
    (N'dbo.Login'),
    (N'dbo.Profile'),
    (N'dbo.register'),
    (N'dbo.Users'),
    (N'dbo.Roles');

DECLARE @curTable NVARCHAR(256);
DECLARE tblCursor CURSOR LOCAL FAST_FORWARD FOR SELECT TableName FROM @dropTables;
OPEN tblCursor;
FETCH NEXT FROM tblCursor INTO @curTable;
WHILE @@FETCH_STATUS = 0
BEGIN
    IF OBJECT_ID(@curTable, N'U') IS NOT NULL
    BEGIN
        DECLARE @dropCmd NVARCHAR(512) = N'DROP TABLE ' + QUOTENAME(PARSENAME(@curTable, 2)) + N'.' + QUOTENAME(PARSENAME(@curTable, 1)) + N';';
        EXEC sp_executesql @dropCmd;
    END
    FETCH NEXT FROM tblCursor INTO @curTable;
END
CLOSE tblCursor;
DEALLOCATE tblCursor;

-- Also drop any leftover tables with carriage return/newline in name (e.g. 'Login\r\n', 'Profile\r\n')
DECLARE @weirdTbl NVARCHAR(256);
DECLARE weirdCursor CURSOR LOCAL FAST_FORWARD FOR 
    SELECT QUOTENAME(s.name) + N'.' + QUOTENAME(t.name)
    FROM sys.tables t
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    WHERE t.name LIKE N'%Login%' OR t.name LIKE N'%Profile%' OR t.name LIKE N'%Table%';
OPEN weirdCursor;
FETCH NEXT FROM weirdCursor INTO @weirdTbl;
WHILE @@FETCH_STATUS = 0
BEGIN
    BEGIN TRY
        DECLARE @dropWeird NVARCHAR(512) = N'DROP TABLE ' + @weirdTbl + N';';
        EXEC sp_executesql @dropWeird;
    END TRY
    BEGIN CATCH
        -- table already dropped or not found
    END CATCH
    FETCH NEXT FROM weirdCursor INTO @weirdTbl;
END
CLOSE weirdCursor;
DEALLOCATE weirdCursor;
GO

-- ----------------------------------------------------------------------------
-- 2. CREATE MASTER / LOOKUP TABLES
-- ----------------------------------------------------------------------------

-- Table: dbo.Roles
CREATE TABLE dbo.Roles
(
    RoleId          INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Roles PRIMARY KEY,
    RoleName        NVARCHAR(50)      NOT NULL CONSTRAINT UQ_Roles_RoleName UNIQUE,
    Description     NVARCHAR(255)     NULL,
    IsActive        BIT               NOT NULL CONSTRAINT DF_Roles_IsActive DEFAULT (1),
    CreatedAt       DATETIME2         NOT NULL CONSTRAINT DF_Roles_CreatedAt DEFAULT (GETDATE())
);
GO

-- Table: dbo.Categories
CREATE TABLE dbo.Categories
(
    CategoryId      INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Categories PRIMARY KEY,
    CategoryName    NVARCHAR(100)     NOT NULL CONSTRAINT UQ_Categories_CategoryName UNIQUE,
    Description     NVARCHAR(500)     NULL,
    IsActive        BIT               NOT NULL CONSTRAINT DF_Categories_IsActive DEFAULT (1),
    CreatedAt       DATETIME2         NOT NULL CONSTRAINT DF_Categories_CreatedAt DEFAULT (GETDATE()),
    UpdatedAt       DATETIME2         NULL
);
GO

-- Table: dbo.Brands
CREATE TABLE dbo.Brands
(
    BrandId         INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Brands PRIMARY KEY,
    BrandName       NVARCHAR(100)     NOT NULL CONSTRAINT UQ_Brands_BrandName UNIQUE,
    Description     NVARCHAR(500)     NULL,
    IsActive        BIT               NOT NULL CONSTRAINT DF_Brands_IsActive DEFAULT (1),
    CreatedAt       DATETIME2         NOT NULL CONSTRAINT DF_Brands_CreatedAt DEFAULT (GETDATE()),
    UpdatedAt       DATETIME2         NULL
);
GO

-- ----------------------------------------------------------------------------
-- 3. CREATE USERS & ENTITIES
-- ----------------------------------------------------------------------------

-- Table: dbo.Users
CREATE TABLE dbo.Users
(
    UserId          INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Users PRIMARY KEY,
    FullName        NVARCHAR(100)     NOT NULL,
    Email           NVARCHAR(100)     NOT NULL CONSTRAINT UQ_Users_Email UNIQUE,
    PasswordHash    NVARCHAR(255)     NOT NULL,
    RoleId          INT               NOT NULL CONSTRAINT FK_Users_Roles FOREIGN KEY REFERENCES dbo.Roles(RoleId),
    Phone           NVARCHAR(25)      NULL,
    ProfilePic      NVARCHAR(255)     NULL,
    Notes           NVARCHAR(500)     NULL,
    IsActive        BIT               NOT NULL CONSTRAINT DF_Users_IsActive DEFAULT (1),
    LastLoginAt     DATETIME2         NULL,
    CreatedAt       DATETIME2         NOT NULL CONSTRAINT DF_Users_CreatedAt DEFAULT (GETDATE()),
    UpdatedAt       DATETIME2         NULL
);
GO

-- Table: dbo.Suppliers
CREATE TABLE dbo.Suppliers
(
    SupplierId      INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Suppliers PRIMARY KEY,
    SupplierCode    NVARCHAR(30)      NULL     CONSTRAINT UQ_Suppliers_SupplierCode UNIQUE,
    SupplierName    NVARCHAR(150)     NOT NULL,
    ContactPerson   NVARCHAR(100)     NULL,
    Email           NVARCHAR(100)     NULL,
    Phone           NVARCHAR(25)      NULL,
    Address         NVARCHAR(255)     NULL,
    City            NVARCHAR(50)      NULL,
    State           NVARCHAR(50)      NULL,
    PostalCode      NVARCHAR(20)      NULL,
    IsActive        BIT               NOT NULL CONSTRAINT DF_Suppliers_IsActive DEFAULT (1),
    CreatedAt       DATETIME2         NOT NULL CONSTRAINT DF_Suppliers_CreatedAt DEFAULT (GETDATE()),
    UpdatedAt       DATETIME2         NULL
);
GO

-- Table: dbo.Customers
CREATE TABLE dbo.Customers
(
    CustomerId      INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Customers PRIMARY KEY,
    CustomerCode    NVARCHAR(30)      NULL     CONSTRAINT UQ_Customers_CustomerCode UNIQUE,
    CustomerName    NVARCHAR(150)     NOT NULL,
    CompanyName     NVARCHAR(150)     NULL,
    CustomerType    NVARCHAR(50)      NOT NULL CONSTRAINT DF_Customers_CustomerType DEFAULT ('Retail'),
    ContactPhone    NVARCHAR(25)      NOT NULL,
    Email           NVARCHAR(100)     NULL,
    Address         NVARCHAR(255)     NULL,
    City            NVARCHAR(50)      NULL,
    State           NVARCHAR(50)      NULL,
    PostalCode      NVARCHAR(20)      NULL,
    IsActive        BIT               NOT NULL CONSTRAINT DF_Customers_IsActive DEFAULT (1),
    CreatedAt       DATETIME2         NOT NULL CONSTRAINT DF_Customers_CreatedAt DEFAULT (GETDATE()),
    UpdatedAt       DATETIME2         NULL
);
GO

-- ----------------------------------------------------------------------------
-- 4. CREATE PRODUCTS & INVENTORY
-- ----------------------------------------------------------------------------

-- Table: dbo.Products (matches ProductSqlEntityMapper.cs and Product.cs model)
CREATE TABLE dbo.Products
(
    ProductId       INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Products PRIMARY KEY,
    SKU             NVARCHAR(50)      NOT NULL CONSTRAINT UQ_Products_SKU UNIQUE,
    ProductName     NVARCHAR(150)     NOT NULL,
    CategoryId      INT               NULL     CONSTRAINT FK_Products_Categories FOREIGN KEY REFERENCES dbo.Categories(CategoryId),
    BrandId         INT               NULL     CONSTRAINT FK_Products_Brands FOREIGN KEY REFERENCES dbo.Brands(BrandId),
    UnitOfMeasure   NVARCHAR(50)      NOT NULL CONSTRAINT DF_Products_UnitOfMeasure DEFAULT ('Piece'),
    Description     NVARCHAR(1000)    NULL,
    UnitPrice       DECIMAL(18,2)     NOT NULL CONSTRAINT DF_Products_UnitPrice DEFAULT (0.00),
    CostPrice       DECIMAL(18,2)     NOT NULL CONSTRAINT DF_Products_CostPrice DEFAULT (0.00),
    ReorderLevel    INT               NOT NULL CONSTRAINT DF_Products_ReorderLevel DEFAULT (0),
    IsActive        BIT               NOT NULL CONSTRAINT DF_Products_IsActive DEFAULT (1),
    CreatedAt       DATETIME2         NOT NULL CONSTRAINT DF_Products_CreatedAt DEFAULT (GETDATE()),
    UpdatedAt       DATETIME2         NULL
);
GO

-- Table: dbo.Inventory
CREATE TABLE dbo.Inventory
(
    InventoryId         INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Inventory PRIMARY KEY,
    ProductId           INT               NOT NULL CONSTRAINT UQ_Inventory_ProductId UNIQUE
                                                   CONSTRAINT FK_Inventory_Products FOREIGN KEY REFERENCES dbo.Products(ProductId) ON DELETE CASCADE,
    QuantityInStock     INT               NOT NULL CONSTRAINT DF_Inventory_QuantityInStock DEFAULT (0),
    ReservedQuantity    INT               NOT NULL CONSTRAINT DF_Inventory_ReservedQuantity DEFAULT (0),
    AvailableQuantity   AS (QuantityInStock - ReservedQuantity),
    LastStockTakeDate   DATETIME2         NULL,
    UpdatedAt           DATETIME2         NOT NULL CONSTRAINT DF_Inventory_UpdatedAt DEFAULT (GETDATE())
);
GO

-- Table: dbo.InventoryTransactions (Stock Adjustments & Movements)
CREATE TABLE dbo.InventoryTransactions
(
    TransactionId       INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_InventoryTransactions PRIMARY KEY,
    ProductId           INT               NOT NULL CONSTRAINT FK_InvTx_Products FOREIGN KEY REFERENCES dbo.Products(ProductId),
    TransactionType     NVARCHAR(50)      NOT NULL, -- 'Purchase', 'Sale', 'Adjustment', 'Damage', 'Return'
    Quantity            INT               NOT NULL, -- Positive for increase, negative for decrease
    ReferenceNumber     NVARCHAR(50)      NULL,     -- PO Number or Invoice Number
    Notes               NVARCHAR(255)     NULL,
    CreatedBy           INT               NULL     CONSTRAINT FK_InvTx_Users FOREIGN KEY REFERENCES dbo.Users(UserId),
    CreatedAt           DATETIME2         NOT NULL CONSTRAINT DF_InvTx_CreatedAt DEFAULT (GETDATE())
);
GO

-- ----------------------------------------------------------------------------
-- 5. CREATE PURCHASES (ORDERS, ITEMS, RECEIPTS)
-- ----------------------------------------------------------------------------

-- Table: dbo.Purchases (Purchase Orders)
CREATE TABLE dbo.Purchases
(
    PurchaseId              INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Purchases PRIMARY KEY,
    PurchaseOrderNumber     NVARCHAR(50)      NOT NULL CONSTRAINT UQ_Purchases_PONumber UNIQUE,
    SupplierId              INT               NOT NULL CONSTRAINT FK_Purchases_Suppliers FOREIGN KEY REFERENCES dbo.Suppliers(SupplierId),
    OrderDate               DATETIME2         NOT NULL CONSTRAINT DF_Purchases_OrderDate DEFAULT (GETDATE()),
    ExpectedDeliveryDate    DATETIME2         NULL,
    Status                  NVARCHAR(30)      NOT NULL CONSTRAINT DF_Purchases_Status DEFAULT ('Pending'), -- 'Draft', 'Pending', 'Received', 'Cancelled'
    SubTotal                DECIMAL(18,2)     NOT NULL CONSTRAINT DF_Purchases_SubTotal DEFAULT (0.00),
    TaxAmount               DECIMAL(18,2)     NOT NULL CONSTRAINT DF_Purchases_TaxAmount DEFAULT (0.00),
    DiscountAmount          DECIMAL(18,2)     NOT NULL CONSTRAINT DF_Purchases_DiscountAmount DEFAULT (0.00),
    TotalAmount             DECIMAL(18,2)     NOT NULL CONSTRAINT DF_Purchases_TotalAmount DEFAULT (0.00),
    Notes                   NVARCHAR(500)     NULL,
    CreatedBy               INT               NULL     CONSTRAINT FK_Purchases_Users FOREIGN KEY REFERENCES dbo.Users(UserId),
    CreatedAt               DATETIME2         NOT NULL CONSTRAINT DF_Purchases_CreatedAt DEFAULT (GETDATE()),
    UpdatedAt               DATETIME2         NULL
);
GO

-- Table: dbo.PurchaseItems (Line items of Purchase Orders)
CREATE TABLE dbo.PurchaseItems
(
    PurchaseItemId      INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_PurchaseItems PRIMARY KEY,
    PurchaseId          INT               NOT NULL CONSTRAINT FK_PurchaseItems_Purchases FOREIGN KEY REFERENCES dbo.Purchases(PurchaseId) ON DELETE CASCADE,
    ProductId           INT               NOT NULL CONSTRAINT FK_PurchaseItems_Products FOREIGN KEY REFERENCES dbo.Products(ProductId),
    Quantity            INT               NOT NULL,
    UnitCost            DECIMAL(18,2)     NOT NULL,
    TotalCost           AS (Quantity * UnitCost),
    ReceivedQuantity    INT               NOT NULL CONSTRAINT DF_PurchaseItems_ReceivedQuantity DEFAULT (0)
);
GO

-- Table: dbo.PurchaseReceipts (Goods Received Notes)
CREATE TABLE dbo.PurchaseReceipts
(
    ReceiptId           INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_PurchaseReceipts PRIMARY KEY,
    PurchaseId          INT               NOT NULL CONSTRAINT FK_PurchaseReceipts_Purchases FOREIGN KEY REFERENCES dbo.Purchases(PurchaseId),
    ReceiptNumber       NVARCHAR(50)      NOT NULL CONSTRAINT UQ_PurchaseReceipts_Number UNIQUE,
    ReceiptDate         DATETIME2         NOT NULL CONSTRAINT DF_PurchaseReceipts_Date DEFAULT (GETDATE()),
    ReceivedBy          NVARCHAR(100)     NULL,
    Notes               NVARCHAR(500)     NULL,
    CreatedAt           DATETIME2         NOT NULL CONSTRAINT DF_PurchaseReceipts_CreatedAt DEFAULT (GETDATE())
);
GO

-- ----------------------------------------------------------------------------
-- 6. CREATE SALES (ORDERS, ITEMS)
-- ----------------------------------------------------------------------------

-- Table: dbo.Sales (Customer Orders / Invoices)
CREATE TABLE dbo.Sales
(
    SaleId              INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Sales PRIMARY KEY,
    InvoiceNumber       NVARCHAR(50)      NOT NULL CONSTRAINT UQ_Sales_InvoiceNumber UNIQUE,
    CustomerId          INT               NOT NULL CONSTRAINT FK_Sales_Customers FOREIGN KEY REFERENCES dbo.Customers(CustomerId),
    SaleDate            DATETIME2         NOT NULL CONSTRAINT DF_Sales_SaleDate DEFAULT (GETDATE()),
    PaymentMethod       NVARCHAR(50)      NOT NULL CONSTRAINT DF_Sales_PaymentMethod DEFAULT ('Cash'), -- 'Cash', 'UPI', 'BankTransfer', 'Credit'
    PaymentStatus       NVARCHAR(30)      NOT NULL CONSTRAINT DF_Sales_PaymentStatus DEFAULT ('Paid'), -- 'Paid', 'Pending', 'Partial'
    SubTotal            DECIMAL(18,2)     NOT NULL CONSTRAINT DF_Sales_SubTotal DEFAULT (0.00),
    TaxAmount           DECIMAL(18,2)     NOT NULL CONSTRAINT DF_Sales_TaxAmount DEFAULT (0.00),
    DiscountAmount      DECIMAL(18,2)     NOT NULL CONSTRAINT DF_Sales_DiscountAmount DEFAULT (0.00),
    TotalAmount         DECIMAL(18,2)     NOT NULL CONSTRAINT DF_Sales_TotalAmount DEFAULT (0.00),
    DeliveryAddress     NVARCHAR(255)     NULL,
    Notes               NVARCHAR(500)     NULL,
    CreatedBy           INT               NULL     CONSTRAINT FK_Sales_Users FOREIGN KEY REFERENCES dbo.Users(UserId),
    CreatedAt           DATETIME2         NOT NULL CONSTRAINT DF_Sales_CreatedAt DEFAULT (GETDATE()),
    UpdatedAt           DATETIME2         NULL
);
GO

-- Table: dbo.SalesItems (Line items of Sale / Invoice)
CREATE TABLE dbo.SalesItems
(
    SaleItemId          INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_SalesItems PRIMARY KEY,
    SaleId              INT               NOT NULL CONSTRAINT FK_SalesItems_Sales FOREIGN KEY REFERENCES dbo.Sales(SaleId) ON DELETE CASCADE,
    ProductId           INT               NOT NULL CONSTRAINT FK_SalesItems_Products FOREIGN KEY REFERENCES dbo.Products(ProductId),
    Quantity            INT               NOT NULL,
    UnitPrice           DECIMAL(18,2)     NOT NULL,
    TaxRate             DECIMAL(5,2)      NOT NULL CONSTRAINT DF_SalesItems_TaxRate DEFAULT (0.00),
    DiscountAmount      DECIMAL(18,2)     NOT NULL CONSTRAINT DF_SalesItems_DiscountAmount DEFAULT (0.00),
    TotalAmount         AS ((Quantity * UnitPrice) - DiscountAmount)
);
GO

-- ----------------------------------------------------------------------------
-- 7. CREATE CONTACT INQUIRIES & AUDIT
-- ----------------------------------------------------------------------------

-- Table: dbo.ContactInquiries (Customer Contact / Support Queries)
CREATE TABLE dbo.ContactInquiries
(
    ContactId           INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_ContactInquiries PRIMARY KEY,
    FullName            NVARCHAR(100)     NOT NULL,
    Email               NVARCHAR(100)     NOT NULL,
    Phone               NVARCHAR(25)      NULL,
    Subject             NVARCHAR(150)     NULL,
    Message             NVARCHAR(MAX)     NOT NULL,
    IsResolved          BIT               NOT NULL CONSTRAINT DF_ContactInquiries_IsResolved DEFAULT (0),
    CreatedAt           DATETIME2         NOT NULL CONSTRAINT DF_ContactInquiries_CreatedAt DEFAULT (GETDATE())
);
GO

-- Table: dbo.UserLoginHistory (Login audit log)
CREATE TABLE dbo.UserLoginHistory
(
    LoginHistoryId      INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_UserLoginHistory PRIMARY KEY,
    UserId              INT               NULL     CONSTRAINT FK_LoginHistory_Users FOREIGN KEY REFERENCES dbo.Users(UserId),
    Email               NVARCHAR(100)     NOT NULL,
    LoginAt             DATETIME2         NOT NULL CONSTRAINT DF_LoginHistory_LoginAt DEFAULT (GETDATE()),
    LogoutAt            DATETIME2         NULL,
    IpAddress           NVARCHAR(50)      NULL,
    Status              NVARCHAR(30)      NOT NULL CONSTRAINT DF_LoginHistory_Status DEFAULT ('Success')
);
GO

-- ----------------------------------------------------------------------------
-- 8. PERFORMANCE INDEXES ON FOREIGN KEYS & SEARCH KEYS
-- ----------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX IX_Products_CategoryId ON dbo.Products(CategoryId);
CREATE NONCLUSTERED INDEX IX_Products_BrandId ON dbo.Products(BrandId);
CREATE NONCLUSTERED INDEX IX_Products_SKU ON dbo.Products(SKU);

CREATE NONCLUSTERED INDEX IX_Purchases_SupplierId ON dbo.Purchases(SupplierId);
CREATE NONCLUSTERED INDEX IX_Purchases_Status ON dbo.Purchases(Status);

CREATE NONCLUSTERED INDEX IX_PurchaseItems_PurchaseId ON dbo.PurchaseItems(PurchaseId);
CREATE NONCLUSTERED INDEX IX_PurchaseItems_ProductId ON dbo.PurchaseItems(ProductId);

CREATE NONCLUSTERED INDEX IX_Sales_CustomerId ON dbo.Sales(CustomerId);
CREATE NONCLUSTERED INDEX IX_Sales_SaleDate ON dbo.Sales(SaleDate);

CREATE NONCLUSTERED INDEX IX_SalesItems_SaleId ON dbo.SalesItems(SaleId);
CREATE NONCLUSTERED INDEX IX_SalesItems_ProductId ON dbo.SalesItems(ProductId);

CREATE NONCLUSTERED INDEX IX_InventoryTransactions_ProductId ON dbo.InventoryTransactions(ProductId);
CREATE NONCLUSTERED INDEX IX_Users_RoleId ON dbo.Users(RoleId);
GO

-- ----------------------------------------------------------------------------
-- 9. SEED DATA (Default Roles, Admin Users, Hardware Categories, Brands)
-- ----------------------------------------------------------------------------

-- Seed Roles
SET IDENTITY_INSERT dbo.Roles ON;
INSERT INTO dbo.Roles (RoleId, RoleName, Description, IsActive) VALUES
    (1, N'System Admin',   N'Full system access and security administration', 1),
    (2, N'Store Manager',  N'Store operations, purchases, and reporting', 1),
    (3, N'Staff',          N'Day-to-day point of sale and customer handling', 1),
    (4, N'Cashier',        N'Billing, invoices, and sales processing', 1);
SET IDENTITY_INSERT dbo.Roles OFF;
GO

-- Seed Admin Users
SET IDENTITY_INSERT dbo.Users ON;
INSERT INTO dbo.Users (UserId, FullName, Email, PasswordHash, RoleId, Phone, IsActive) VALUES
    (1, N'Admin User',       N'admin@stockforge.com',   N'AdminPass123!',   1, N'+91 98765 00001', 1),
    (2, N'Store Manager',    N'manager@hardware.com',   N'Manager123!',     2, N'+91 98765 00002', 1),
    (3, N'Counter Staff',    N'staff@hardware.com',     N'Staff123!',       3, N'+91 98765 00003', 1),
    (4, N'Rajvi Lunagariya', N'rajvi@stockforge.in',    N'RajviPass123!',   1, N'+91 98765 43210', 1);
SET IDENTITY_INSERT dbo.Users OFF;
GO

-- Seed Categories
SET IDENTITY_INSERT dbo.Categories ON;
INSERT INTO dbo.Categories (CategoryId, CategoryName, Description, IsActive) VALUES
    (1, N'Power Tools',         N'Electric and cordless drills, saws, grinders, and sanders', 1),
    (2, N'Hand Tools',          N'Wrenches, hammers, pliers, screwdrivers, and measuring tapes', 1),
    (3, N'Fasteners & Screws',  N'Drywall screws, bolts, nuts, washers, and anchors', 1),
    (4, N'Electrical Supplies', N'Cables, MCBs, conduit pipes, switches, and junction boxes', 1),
    (5, N'Plumbing Fittings',   N'CPVC pipes, brass valves, couplings, elbows, and taps', 1),
    (6, N'Paints & Chemicals',  N'Primers, wall putties, spray paints, and industrial adhesives', 1);
SET IDENTITY_INSERT dbo.Categories OFF;
GO

-- Seed Brands
SET IDENTITY_INSERT dbo.Brands ON;
INSERT INTO dbo.Brands (BrandId, BrandName, Description, IsActive) VALUES
    (1, N'Bosch',      N'Premium power tools and measuring equipment', 1),
    (2, N'DeWalt',     N'Heavy-duty industrial power tools and accessories', 1),
    (3, N'Stanley',    N'Professional quality hand tools and fasteners', 1),
    (4, N'Havells',    N'Industrial and commercial electrical supplies', 1),
    (5, N'Astral',     N'Pipes, fittings, and plumbing solutions', 1),
    (6, N'Asian Paints', N'Paints, coatings, and water-proofing chemicals', 1);
SET IDENTITY_INSERT dbo.Brands OFF;
GO

-- Seed Suppliers
SET IDENTITY_INSERT dbo.Suppliers ON;
INSERT INTO dbo.Suppliers (SupplierId, SupplierCode, SupplierName, ContactPerson, Email, Phone, City, State, IsActive) VALUES
    (1, N'SUP-001', N'Apex Hardware Wholesalers',   N'Ramesh Patel',  N'sales@apexwholesale.com',   N'+91 98250 11223', N'Ahmedabad', N'Gujarat', 1),
    (2, N'SUP-002', N'National Tool Importers',     N'Suresh Mehta',  N'orders@nationaltools.in',   N'+91 98250 22334', N'Mumbai',    N'Maharashtra', 1),
    (3, N'SUP-003', N'Bharat Piping & Fittings',    N'Vijay Shah',    N'info@bharatpiping.com',     N'+91 98250 33445', N'Rajkot',    N'Gujarat', 1);
SET IDENTITY_INSERT dbo.Suppliers OFF;
GO

-- Seed Customers
SET IDENTITY_INSERT dbo.Customers ON;
INSERT INTO dbo.Customers (CustomerId, CustomerCode, CustomerName, CompanyName, CustomerType, ContactPhone, Email, City, State, IsActive) VALUES
    (1, N'CUST-001', N'Aditi Bansal',         N'HomeFix Mart',           N'Retail',     N'+91 98765 43210', N'aditi@homefixmart.in',    N'Ahmedabad', N'Gujarat', 1),
    (2, N'CUST-002', N'Apex Builders Group',  N'Apex Builders Ltd',      N'Contractor', N'+91 98765 54321', N'contact@apexbuild.com',   N'Vadodara',  N'Gujarat', 1),
    (3, N'CUST-003', N'Sharma Constructions', N'Sharma Infra & Sons',    N'Wholesale',  N'+91 98765 65432', N'sharma@sharmabuild.com',  N'Surat',     N'Gujarat', 1);
SET IDENTITY_INSERT dbo.Customers OFF;
GO

-- Seed Products
SET IDENTITY_INSERT dbo.Products ON;
INSERT INTO dbo.Products (ProductId, SKU, ProductName, CategoryId, BrandId, UnitOfMeasure, Description, UnitPrice, CostPrice, ReorderLevel, IsActive) VALUES
    (1, N'HW-BSH-500', N'Bosch GSB 500W Impact Drill',             1, 1, N'Piece', N'500W reversible impact drill machine for concrete and wood', 3499.00, 2650.00, 10, 1),
    (2, N'HW-DWT-ANG', N'DeWalt 850W Angle Grinder (100mm)',       1, 2, N'Piece', N'Heavy-duty 4-inch angle grinder with ergonomic side handle',  4199.00, 3200.00,  8, 1),
    (3, N'HW-STN-HAM', N'Stanley 16oz Fiberglass Claw Hammer',     2, 3, N'Piece', N'Shock-absorbing fiberglass handle with forged carbon steel head', 599.00,  410.00, 15, 1),
    (4, N'HW-HVL-MCB', N'Havells 32A C-Curve Double Pole MCB',     4, 4, N'Piece', N'High breaking capacity miniature circuit breaker 240/415V',      480.00,  340.00, 20, 1),
    (5, N'HW-AST-P25', N'Astral CPVC Pro Pipe (1 inch, 3m)',       5, 5, N'Piece', N'SDR 11 hot and cold water CPVC pressure plumbing pipe',           320.00,  230.00, 25, 1);
SET IDENTITY_INSERT dbo.Products OFF;
GO

-- Seed Inventory for Products
INSERT INTO dbo.Inventory (ProductId, QuantityInStock, ReservedQuantity, LastStockTakeDate) VALUES
    (1, 45, 2, GETDATE()),
    (2, 28, 0, GETDATE()),
    (3, 80, 5, GETDATE()),
    (4, 120, 10, GETDATE()),
    (5, 200, 15, GETDATE());
GO
