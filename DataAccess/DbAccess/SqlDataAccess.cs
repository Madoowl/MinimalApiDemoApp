

using Dapper;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace DataAccess.DbAccess
{
    public class SqlDataAccess : ISqlDataAccess
    {
        private readonly IConfiguration _configuration;
        public SqlDataAccess(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public async Task<IEnumerable<T>> LoadData<T, U>(string storedProcedure,
                                                         U parameters,
                                                         string connectionID = "Default")
        {
            using IDbConnection connection = new SqlConnection(_configuration.GetConnectionString(connectionID));

            return await connection.QueryAsync<T>(storedProcedure,
                                                  parameters,
                                                  commandType: CommandType.StoredProcedure);
        }

        public async Task SaveData<T>(string storedProcedure,
                                      T parameters,
                                      string connectionID = "Default")
        {
            using IDbConnection connection = new SqlConnection(_configuration.GetConnectionString(connectionID));

            await connection.ExecuteAsync(storedProcedure,
                                          parameters,
                                          commandType: CommandType.StoredProcedure);
        }

    }
}
