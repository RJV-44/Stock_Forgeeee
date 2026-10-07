using System.Data;
using System.Data.SqlClient;

namespace Stock_Forgeeee.DataAccess
{
    public interface ISqlEntityMapper<T> where T : class
    {
        string SelectAllSql { get; }
        string SelectByIdSql { get; }
        string InsertSql { get; }
        string UpdateSql { get; }
        string DeleteSql { get; }

        T Map(IDataRecord record);
        void AddInsertParameters(SqlCommand command, T entity);
        void AddUpdateParameters(SqlCommand command, T entity);
    }
}
