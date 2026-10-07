using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace Stock_Forgeeee.DataAccess
{
    public class GenericRepository<T> : IRepository<T> where T : class
    {
        protected readonly string ConnectionString;
        protected readonly ISqlEntityMapper<T> Mapper;

        public GenericRepository(string connectionString, ISqlEntityMapper<T> mapper)
        {
            if (string.IsNullOrWhiteSpace(connectionString))
            {
                throw new ArgumentException("A database connection string is required.", "connectionString");
            }

            ConnectionString = connectionString;
            Mapper = mapper ?? throw new ArgumentNullException("mapper");
        }

        public IList<T> GetAll()
        {
            var entities = new List<T>();

            using (var connection = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand(Mapper.SelectAllSql, connection))
            {
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        entities.Add(Mapper.Map(reader));
                    }
                }
            }

            return entities;
        }

        public T GetById(int id)
        {
            using (var connection = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand(Mapper.SelectByIdSql, connection))
            {
                command.Parameters.Add("@Id", SqlDbType.Int).Value = id;
                connection.Open();

                using (var reader = command.ExecuteReader(CommandBehavior.SingleRow))
                {
                    return reader.Read() ? Mapper.Map(reader) : null;
                }
            }
        }

        public int Add(T entity)
        {
            if (entity == null)
            {
                throw new ArgumentNullException("entity");
            }

            using (var connection = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand(Mapper.InsertSql, connection))
            {
                Mapper.AddInsertParameters(command, entity);
                connection.Open();

                object result = command.ExecuteScalar();
                if (result == null || result == DBNull.Value)
                {
                    throw new InvalidOperationException("The insert command did not return a generated identifier.");
                }

                return Convert.ToInt32(result);
            }
        }

        public bool Update(T entity)
        {
            if (entity == null)
            {
                throw new ArgumentNullException("entity");
            }

            using (var connection = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand(Mapper.UpdateSql, connection))
            {
                Mapper.AddUpdateParameters(command, entity);
                connection.Open();
                return command.ExecuteNonQuery() > 0;
            }
        }

        public bool Delete(int id)
        {
            using (var connection = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand(Mapper.DeleteSql, connection))
            {
                command.Parameters.Add("@Id", SqlDbType.Int).Value = id;
                connection.Open();
                return command.ExecuteNonQuery() > 0;
            }
        }
    }
}
