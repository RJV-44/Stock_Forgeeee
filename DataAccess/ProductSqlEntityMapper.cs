using System;
using System.Data;
using System.Data.SqlClient;
using Stock_Forgeeee.Models;

namespace Stock_Forgeeee.DataAccess
{
    internal sealed class ProductSqlEntityMapper : ISqlEntityMapper<Product>
    {
        private const string SelectColumns =
            "ProductId, SKU, ProductName, CategoryId, BrandId, Description, " +
            "UnitPrice, CostPrice, ReorderLevel, IsActive, CreatedAt, UpdatedAt";

        public string SelectAllSql
        {
            get { return "SELECT " + SelectColumns + " FROM dbo.Products ORDER BY ProductId;"; }
        }

        public string SelectByIdSql
        {
            get { return "SELECT " + SelectColumns + " FROM dbo.Products WHERE ProductId = @Id;"; }
        }

        public string InsertSql
        {
            get
            {
                return "INSERT INTO dbo.Products " +
                    "(SKU, ProductName, CategoryId, BrandId, Description, UnitPrice, CostPrice, ReorderLevel, IsActive) " +
                    "VALUES (@SKU, @ProductName, @CategoryId, @BrandId, @Description, @UnitPrice, @CostPrice, @ReorderLevel, @IsActive); " +
                    "SELECT CAST(SCOPE_IDENTITY() AS INT);";
            }
        }

        public string UpdateSql
        {
            get
            {
                return "UPDATE dbo.Products SET SKU = @SKU, ProductName = @ProductName, " +
                    "CategoryId = @CategoryId, BrandId = @BrandId, Description = @Description, " +
                    "UnitPrice = @UnitPrice, CostPrice = @CostPrice, ReorderLevel = @ReorderLevel, " +
                    "IsActive = @IsActive, UpdatedAt = GETDATE() WHERE ProductId = @ProductId;";
            }
        }

        public string DeleteSql
        {
            get { return "DELETE FROM dbo.Products WHERE ProductId = @Id;"; }
        }

        public Product Map(IDataRecord record)
        {
            return new Product
            {
                ProductId = record.GetInt32(record.GetOrdinal("ProductId")),
                Sku = record.GetString(record.GetOrdinal("SKU")),
                ProductName = record.GetString(record.GetOrdinal("ProductName")),
                CategoryId = GetNullableInt32(record, "CategoryId"),
                BrandId = GetNullableInt32(record, "BrandId"),
                Description = GetNullableString(record, "Description"),
                UnitPrice = record.GetDecimal(record.GetOrdinal("UnitPrice")),
                CostPrice = record.GetDecimal(record.GetOrdinal("CostPrice")),
                ReorderLevel = record.GetInt32(record.GetOrdinal("ReorderLevel")),
                IsActive = record.GetBoolean(record.GetOrdinal("IsActive")),
                CreatedAt = record.GetDateTime(record.GetOrdinal("CreatedAt")),
                UpdatedAt = GetNullableDateTime(record, "UpdatedAt")
            };
        }

        public void AddInsertParameters(SqlCommand command, Product product)
        {
            AddProductParameters(command, product);
        }

        public void AddUpdateParameters(SqlCommand command, Product product)
        {
            AddProductParameters(command, product);
            command.Parameters.Add("@ProductId", SqlDbType.Int).Value = product.ProductId;
        }

        private static void AddProductParameters(SqlCommand command, Product product)
        {
            command.Parameters.Add("@SKU", SqlDbType.NVarChar, 50).Value = product.Sku;
            command.Parameters.Add("@ProductName", SqlDbType.NVarChar, 150).Value = product.ProductName;
            command.Parameters.Add("@CategoryId", SqlDbType.Int).Value =
                product.CategoryId.HasValue ? (object)product.CategoryId.Value : DBNull.Value;
            command.Parameters.Add("@BrandId", SqlDbType.Int).Value =
                product.BrandId.HasValue ? (object)product.BrandId.Value : DBNull.Value;
            command.Parameters.Add("@Description", SqlDbType.NVarChar, 1000).Value =
                product.Description == null ? (object)DBNull.Value : product.Description;

            SqlParameter unitPrice = command.Parameters.Add("@UnitPrice", SqlDbType.Decimal);
            unitPrice.Precision = 18;
            unitPrice.Scale = 2;
            unitPrice.Value = product.UnitPrice;

            SqlParameter costPrice = command.Parameters.Add("@CostPrice", SqlDbType.Decimal);
            costPrice.Precision = 18;
            costPrice.Scale = 2;
            costPrice.Value = product.CostPrice;

            command.Parameters.Add("@ReorderLevel", SqlDbType.Int).Value = product.ReorderLevel;
            command.Parameters.Add("@IsActive", SqlDbType.Bit).Value = product.IsActive;
        }

        private static int? GetNullableInt32(IDataRecord record, string columnName)
        {
            int ordinal = record.GetOrdinal(columnName);
            return record.IsDBNull(ordinal) ? (int?)null : record.GetInt32(ordinal);
        }

        private static string GetNullableString(IDataRecord record, string columnName)
        {
            int ordinal = record.GetOrdinal(columnName);
            return record.IsDBNull(ordinal) ? null : record.GetString(ordinal);
        }

        private static DateTime? GetNullableDateTime(IDataRecord record, string columnName)
        {
            int ordinal = record.GetOrdinal(columnName);
            return record.IsDBNull(ordinal) ? (DateTime?)null : record.GetDateTime(ordinal);
        }
    }
}
