using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Royal_Yard_V2._0.BAL;
namespace Royal_Yard_V2._0.DAL
{
    public class ry_PropertyDAL
    {
        string connString = ConfigurationManager.ConnectionStrings["RoyalYard"].ConnectionString;
        public List<ry_Property> listProperties = new List<ry_Property>();
        public List<ry_Property> GetAllProperties()
        {        
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from ry_Property", sqlConn))
                {
                    sqlConn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        ry_Property property = new ry_Property();

                        property.propertyType = reader[2].ToString();
                        property.areaSize = reader[3].ToString();
                        property.demand = reader[4].ToString();
                        property.Status = reader[5].ToString();
                        property.rentOrSale = reader[6].ToString();
                        property.propertyDescription = reader[7].ToString();
                        property.agentName = reader[8].ToString();
                        property.agentContactNumber = reader[9].ToString();
                        listProperties.Add(property);
                    }
                }
            }
            return listProperties;
        }

        public void insertData(ry_Property obj)
        {
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_insertProperty", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlConn.Open();
                    cmd.Parameters.AddWithValue("@Cnic", obj.Cnic);
                    cmd.Parameters.AddWithValue("@propertyType", obj.propertyType);
                    cmd.Parameters.AddWithValue("@areaSize", obj.areaSize);
                    cmd.Parameters.AddWithValue("@location", obj.location);
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

        public void updateData(ry_Property obj)
        {
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_UpdateProperty", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlConn.Open();
                    cmd.Parameters.AddWithValue("@Cnic", obj.Cnic);
                    cmd.Parameters.AddWithValue("@propertyType", obj.propertyType);
                    cmd.Parameters.AddWithValue("@areaSize", obj.areaSize);
                    cmd.Parameters.AddWithValue("@location", obj.location);
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

        public void deleteData(ry_Property obj)
        {
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_DeleteProperty", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlConn.Open();
                    cmd.Parameters.AddWithValue("@propertyID", obj.propertyID);
                    cmd.Parameters.AddWithValue("@Cnic", obj.Cnic);
                    cmd.ExecuteNonQuery();
                }
            }
        }

    }
}
