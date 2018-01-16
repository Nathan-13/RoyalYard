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
    public class ry_CountrySideProjectDAL
    {
        string connString = ConfigurationManager.ConnectionStrings["RoyalYard"].ConnectionString;

        public void insertData(ry_CountrySideProject obj)
        {
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_insertCountrySideProject", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlConn.Open();
                    cmd.Parameters.AddWithValue("@Cnic", obj.Cnic);
                    cmd.Parameters.AddWithValue("@location", obj.location);
                    cmd.Parameters.AddWithValue("@propertyType", obj.propertyType);
                    cmd.Parameters.AddWithValue("@areaSize", obj.areaSize);
                    cmd.Parameters.AddWithValue("@demand", obj.demand);
                    cmd.Parameters.AddWithValue("@Status", obj.Status);
                    cmd.Parameters.AddWithValue("@rentOrSale", obj.rentOrSale);
                    cmd.Parameters.AddWithValue("@propertyDescription", obj.propertyDescription);
                    cmd.Parameters.AddWithValue("@agentName", obj.agentName);
                    cmd.Parameters.AddWithValue("@agentContactNumber", obj.agentContactNumber);
                    cmd.Parameters.AddWithValue("@Image", obj.Image);
                    cmd.ExecuteNonQuery();
                }
            }
        }
        public void updateData(ry_CountrySideProject obj)
        {
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_UpdateCSP", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlConn.Open();
                    cmd.Parameters.AddWithValue("@Cnic", obj.Cnic);
                    cmd.Parameters.AddWithValue("@location", obj.location);
                    cmd.Parameters.AddWithValue("@propertyType", obj.propertyType);
                    cmd.Parameters.AddWithValue("@areaSize", obj.areaSize);
                    cmd.Parameters.AddWithValue("@demand", obj.demand);
                    cmd.Parameters.AddWithValue("@Status", obj.Status);
                    cmd.Parameters.AddWithValue("@rentOrSale", obj.rentOrSale);
                    cmd.Parameters.AddWithValue("@propertyDescription", obj.propertyDescription);
                    cmd.Parameters.AddWithValue("@agentName", obj.agentName);
                    cmd.Parameters.AddWithValue("@agentContactNumber", obj.agentContactNumber);
                    cmd.Parameters.AddWithValue("@Image", obj.Image);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void deleteData(ry_CountrySideProject obj)
        {
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_DeleteCSP", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlConn.Open();
                    cmd.Parameters.AddWithValue("@csPropertyId", obj.csPropertyId);
                    cmd.Parameters.AddWithValue("@Cnic", obj.Cnic);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}