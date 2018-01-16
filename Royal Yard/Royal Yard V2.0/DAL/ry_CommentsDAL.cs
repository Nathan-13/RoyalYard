using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using Royal_Yard_V2._0.BAL;

namespace Royal_Yard_V2._0.DAL
{
    public class ry_CommentsDAL
    {
        string connString = ConfigurationManager.ConnectionStrings["RoyalYard"].ConnectionString;

        public void insertData(ry_Comments obj)
        {
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_insertComments", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlConn.Open();
                    cmd.Parameters.AddWithValue("@Name", obj.Name);
                    cmd.Parameters.AddWithValue("@Email", obj.Email);
                    cmd.Parameters.AddWithValue("@Comments", obj.Comments);
                    cmd.Parameters.AddWithValue("@Date", obj.Date);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}