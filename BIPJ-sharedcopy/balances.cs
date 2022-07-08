using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
namespace BIPJ_sharedcopy
{
    public class balances
    {
        string _connStr = ConfigurationManager.ConnectionStrings["usersContext"].ConnectionString;
        private string _email = string.Empty;
        private decimal _balance = 0;
        private string _crypto = string.Empty;

        public balances() { }
        public balances(string email, decimal balance, string crypto) {
            _email = email;
            _balance = balance;
            _crypto = crypto;
        }
        public string email
        {
            get { return _email; }
            set { _email = value; }
        }
        public decimal balance
        {
            get { return _balance; }
            set { _balance = value; }
        }
        public string crypto
        {
            get { return _crypto; }
            set { _crypto = value; }
        }
        public List<balances> getBalancesAll(string email)
        {
            List<balances> balList = new List<balances>();
            string crypto;
            decimal balance;
            string queryStr = "SELECT * FROM Balances where email = @email";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@email", email);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                crypto = dr["crypto"].ToString();
                balance = Convert.ToDecimal(dr["balance"]);
                balances bal = new balances(email, balance, crypto);
                balList.Add(bal);
            }
            conn.Close();
            dr.Close();
            dr.Dispose();
            return balList;
        }
    }
}