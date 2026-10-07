using System.Collections.Generic;

namespace Stock_Forgeeee.DataAccess
{
    public interface IRepository<T> where T : class
    {
        IList<T> GetAll();
        T GetById(int id);
        int Add(T entity);
        bool Update(T entity);
        bool Delete(int id);
    }
}
