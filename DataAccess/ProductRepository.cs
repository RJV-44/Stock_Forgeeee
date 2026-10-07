using System;
using System.Collections;
using System.Configuration;
using System.Data.SqlClient;
using Stock_Forgeeee.Models;

namespace Stock_Forgeeee.DataAccess
{
    public sealed class ProductRepository : GenericRepository<Product>
    {
        public ProductRepository()
            : base(GetConnectionString(), new ProductSqlEntityMapper())
        {
        }

        public ArrayList GetAllArrayList()
        {
            var products = new ArrayList();

            using (var connection = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand(Mapper.SelectAllSql, connection))
            {
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        products.Add(Mapper.Map(reader));
                    }
                }
            }

            return products;
        }

        private static string GetConnectionString()
        {
            ConnectionStringSettings settings = ConfigurationManager.ConnectionStrings["StockForgeDb"];
            if (settings == null)
            {
                throw new InvalidOperationException("The StockForgeDb connection string is missing from Web.config.");
            }

            return settings.ConnectionString;
        }
    }
}
