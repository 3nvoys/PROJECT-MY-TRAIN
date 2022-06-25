using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Tugas5
{
    internal static class SqlDBHelperHelpers
    {

        public static DataTable ExecuteDataSet(string sql, CommandType cmdType, params SqlParameter[] parameters)
        {
            using (DataSet ds = new DataSet())
            using (SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["DbConn"].ConnectionString))
            using (SqlCommand cmd = new SqlCommand(sql, connStr))
            {
                cmd.CommandType = cmdType;
                foreach (var item in parameters)
                {
                    cmd.Parameters.Add(item);
                }

                try
                {
                    cmd.Connection.Open();
                    new SqlDataAdapter(cmd).Fill(ds);
                }
                catch (SqlException ex)
                {
                    //Show a message or log a message on ex.Message
                }
                return ds.Tables[0];
            }
        }
    }
}