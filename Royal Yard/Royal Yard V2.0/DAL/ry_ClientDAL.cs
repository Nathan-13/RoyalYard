using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Royal_Yard_V2._0.BAL;

namespace Royal_Yard_V2._0.DAL
{
    public class ry_ClientDAL
    {
        string connString = ConfigurationManager.ConnectionStrings["RoyalYard"].ConnectionString;

        public void insertData(ry_Client obj)
        {
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_insertClient", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlConn.Open();
                    cmd.Parameters.AddWithValue("@Cnic", obj.Cnic);
                    cmd.Parameters.AddWithValue("@firstName", obj.firstName);
                    cmd.Parameters.AddWithValue("@lastName", obj.lastName);
                    cmd.Parameters.AddWithValue("@email", obj.email);
                    cmd.Parameters.AddWithValue("@contactNumber", obj.contactNumber);
                    cmd.Parameters.AddWithValue("@postalAddress", obj.postalAddress);
                    cmd.Parameters.AddWithValue("@permenantAddress", obj.permenantAddress);
                    cmd.ExecuteNonQuery();
                }
            }
        }
        public void updateData(ry_Client obj)
        {
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_UpdateClient", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlConn.Open();
                    cmd.Parameters.AddWithValue("@Cnic", obj.Cnic);
                    cmd.Parameters.AddWithValue("@firstName", obj.firstName);
                    cmd.Parameters.AddWithValue("@lastName", obj.lastName);
                    cmd.Parameters.AddWithValue("@email", obj.email);
                    cmd.Parameters.AddWithValue("@contactNumber", obj.contactNumber);
                    cmd.Parameters.AddWithValue("@postalAddress", obj.postalAddress);
                    cmd.Parameters.AddWithValue("@permenantAddress", obj.permenantAddress);
                    cmd.ExecuteNonQuery();
                }
            }
        }
        public void deleteData(ry_Client obj)
        {
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_DeleteClient", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlConn.Open();
                    cmd.Parameters.AddWithValue("@Cnic", obj.Cnic);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}