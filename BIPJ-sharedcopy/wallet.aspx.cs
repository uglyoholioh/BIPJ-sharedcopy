using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BIPJ_sharedcopy
{
    public partial class wallet : System.Web.UI.Page
    {
        HttpContext context = HttpContext.Current;
        decimal BTCbal = 0;
        DateTime origindate = new DateTime(1970, 1, 1, 0, 0, 0);
        protected void Page_Load(object sender, EventArgs e)
        {
            //session email for testing
            Session["email"] = "user1@gmail.com";
            string email = (string)(context.Session["email"]);
            List<balances> balList = new List<balances>();
            balances balobj = new balances();
            balList = balobj.getBalancesAll(email);
            foreach (balances bal in balList)
            {
                BTCbal = bal.balance;
            }
            
            if (!IsPostBack)
            {
                changeText();
            }
        }
        protected void changeText()
        {
            cryptoprices placeh = this.Prices();
            decimal BTCpricebal = Convert.ToDecimal(placeh.USD) * BTCbal;
            string hprice = this.hPrices();
            var jsonprice = new historicalprice();
            jsonprice = JsonConvert.DeserializeObject<historicalprice>(hprice);


        }
        public class cryptoprices { public string USD { get; set; }
            public string JPY { get; set; }
            public string EUR { get; set; }

        }
        public class historicalprice {

            public BTC BTC { get; set;}


        }
        public class BTC {
            public string USD { get; set; }
        }


        public cryptoprices Prices()
        {
            var crypto = new cryptoprices();
            var result = string.Empty;
            try
            {
                var httpWebRequest = (HttpWebRequest)WebRequest.Create("https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD,JPY,EUR");
                httpWebRequest.Method = "Get";
                httpWebRequest.KeepAlive = false;
                httpWebRequest.Accept = "text/json";

                httpWebRequest.ContentType = "application/json";

                var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();

                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))

                {

                    result = streamReader.ReadToEnd();
                    crypto = JsonConvert.DeserializeObject<cryptoprices>(result);

                }

            }

            catch (WebException ex)

            {

                result = ex.Message;

            }

            return crypto;
        }
        public string hPrices()
        {
            var hcrypto = new historicalprice();
            var hresult = string.Empty;
            var now = DateTime.Now;
            try
            {
                TimeSpan diff = now.ToUniversalTime() - origindate;
                var histdiff = (long)Math.Floor(diff.TotalSeconds);
                var httpWebRequest = (HttpWebRequest)WebRequest.Create("https://min-api.cryptocompare.com/data/pricehistorical?fsym=BTC&tsyms=USD&ts=" + histdiff);
                httpWebRequest.Method = "Get";
                httpWebRequest.KeepAlive = false;
                httpWebRequest.Accept = "text/json";

                httpWebRequest.ContentType = "application/json";

                var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();

                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))

                {

                    hresult = streamReader.ReadToEnd();

                }

            }

            catch (WebException ex)

            {

                hresult = ex.Message;

            }

            return hresult;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

    }

