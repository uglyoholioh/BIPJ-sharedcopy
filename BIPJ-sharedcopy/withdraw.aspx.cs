using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIPJ_sharedcopy
{
    public partial class withdraw : System.Web.UI.Page
    {
        HttpContext context = HttpContext.Current;
        string[] availArray = new string[] { "BTC", "DASH", "DOGE", "LTC" };

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        // Root myDeserializedClass = JsonConvert.DeserializeObject<Root>(myJsonResponse);
        public class data
        {
            public Item item { get; set; }
        }

        public class Item
        {
            public string feePriority { get; set; }
            public string note { get; set; }
            public List<Recipient> recipients { get; set; }
            public string totalTransactionAmount { get; set; }
            public string transactionRequestId { get; set; }
            public string transactionRequestStatus { get; set; }
        }

        public class Recipient
        {
            public string address { get; set; }
            public string amount { get; set; }
        }

        public class Root
        {
            public string apiVersion { get; set; }
            public string requestId { get; set; }
            public string context { get; set; }
            public data data { get; set; }
        }



        protected void ddl_cryptos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var crypto = ddl_cryptos.SelectedValue;
            string queryStr = "SELECT * FROM Balances WHERE email = @email and crypto=@crypto";
            string _connStr = ConfigurationManager.ConnectionStrings["usersContext"].ConnectionString;
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            string email = (string)(context.Session["email"]);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@crypto", crypto);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string balance = "";


            balance = dr["balance"].ToString(); 
            lbl_bal.Text = balance + " " + crypto;
                

            conn.Close();
            dr.Close();
            dr.Dispose();
            Boolean valid = false;
            foreach (string i in availArray)
            {
                if (crypto == i)
                {
                    valid = true;
                    break;
                }

            }
            if (valid == false)
            {
                lbl_availerror.Text = "Sorry, this cryptocurrency is not supported for withdrawals right now";
            }
            else
            {
                lbl_availerror.Text = "Sorry, this cryptocurrency is not supported for withdrawals right now";

            }



        }



        protected void ddl_cryptos_SelectedIndexChanged1(object sender, EventArgs e)
        {
            var crypto = ddl_cryptos.SelectedValue;
            string queryStr = "SELECT * FROM Balances WHERE email = @email and crypto=@crypto";
            string _connStr = ConfigurationManager.ConnectionStrings["usersContext"].ConnectionString;
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            string email = (string)(context.Session["email"]);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@crypto", crypto);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string balance = "";
            if (dr.Read())
            {

                balance = dr["balance"].ToString();
                lbl_bal.Text = "You have: "+balance + " " + crypto;
            }
            else
            {
                lbl_bal.Text = "error";
            }

            conn.Close();
            dr.Close();
            dr.Dispose();
            tb_withdrawamt.Attributes.Add("max",balance);
            Boolean valid = false;
            foreach (string i in availArray)
            {
                if (crypto == i)
                {
                    valid = true;
                    break;
                }

            }
            if (valid == false)
            {
                lbl_availerror.Text = "Sorry, this cryptocurrency is not supported for withdrawals right now";
            }
            else
            {
                lbl_availerror.Text = "";
            }

        }
        public data depositAddress()
        {
            var address = string.Empty;
            data addressdata = null;
            var APIkey = "ae57c39bb8e962e6843a0f671a1244a4682e208a";
            try
            {
                var httpWebRequest = (HttpWebRequest)WebRequest.Create("https://rest.cryptoapis.io/wallet-as-a-service/wallets/62cf854e5f15ac0007749f4d/"+"/testnet/transaction-requests?context=yourExampleString");
                httpWebRequest.Method = "Post";
                httpWebRequest.KeepAlive = false;
                httpWebRequest.Accept = "text/json";

                httpWebRequest.ContentType = "application/json";

                var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();

                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))

                {

                    address = streamReader.ReadToEnd();
                    addressdata = JsonConvert.DeserializeObject<data>(address);

                }
            }
            catch (WebException ex)
            {
                address = ex.Message;
            }
            return addressdata;
        }
    }
}