using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BIPJ_sharedcopy
{
    public class user
    {
        string _connStr = ConfigurationManager.ConnectionStrings["usersContext"].ConnectionString;
        private string _userID = null;
        private string _email = string.Empty;
        private string _password = string.Empty;

        public user() { }
        public user(string email, string password) {
            _email = email;
            _password = password;
        }
        public string email
        {
            get { return _email; }
            set { _email = value; }
        }
        public string password
        {
            get { return _password; }
            set { _password = value; }
        }
        public user getUser(string userID) {
            user userDetail = null;
            string email, password;
            string queryStr = "SELECT * FROM Users where userID = @userID";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@userID", userID);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                email = dr["email"].ToString();
                password = dr["password"].ToString();
                userDetail = new user(email, password);

            }
            else
            {
                userDetail = null;
            }
            conn.Close();
            dr.Close();
            dr.Dispose();
            return userDetail;

        }
        public int createUser(string email, string password) {
            int result = 0;
            string queryStr = "INSERT INTO Users(email,password)"+ "values (@email, @password)";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@password", password);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                result = cmd.ExecuteNonQuery();
            }
            conn.Close();
            return result;
        }
    }
}