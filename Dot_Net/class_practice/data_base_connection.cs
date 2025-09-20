using System;
using System.Data.SqlClient;
namespace TestDBMSConnectionApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            Console.WriteLine("Getting Connection ...");

            var datasource = @"DESKTOP-4PKPHIJ\SQLEXPRESS"; // your server
            var database = "Dotnet_b1"; // your database name
            //var username = "DESKTOP-LCNNVH9\\kk"; // username of server to connect
            //var password = ""; // password

            // Create your connection string
            string connString = @"Data Source=" + datasource +
                ";Initial Catalog=" + database + "; Trusted_Connection=True;";


            Console.WriteLine(connString);

            SqlConnection conn = new SqlConnection(connString);

            try
            {
                Console.WriteLine("Opening Connection ...");
                // Open the connection
                conn.Open();
                Console.WriteLine("Connection successful!");
                InsertStaff(conn);
                displayStaff(conn);

            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e.Message);
            }
            finally
            {
                // Close the connection
                conn.Close();
            }


        }
        static void InsertStaff(SqlConnection conn)
        {
            Console.Write("Enter the Staff Name...");
            int food_id = 1;
                string myname = "Akash";

            string querry = "insert into tb_food (food_id,name) values("+ food_id + " ,'"+ myname + "')";
         
            SqlCommand cm = new SqlCommand(querry, conn);
            cm.Parameters.AddWithValue("@name", myname);
            cm.Parameters.AddWithValue("@food_id",food_id);
            int rows = cm.ExecuteNonQuery();
            if (rows > 0)
            {
                Console.WriteLine("Inserted record successfully");
            }


        }
        static void displayStaff(SqlConnection conn)
        {
            string query = "select * from testtable";
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader reader = cm.ExecuteReader();
            Console.WriteLine("Staff :");
            while (reader.Read())
            {
                {
                    Console.WriteLine($"Name :{reader["Name"]}");

                }
            }
        }
    }
}
