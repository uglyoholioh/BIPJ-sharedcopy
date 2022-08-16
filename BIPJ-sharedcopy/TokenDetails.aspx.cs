using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIPJ_sharedcopy
{

 
    public partial class TokenDetails : System.Web.UI.Page
    {
        string TokenName = "";
        string TokenValue = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            TokenName = Request.QueryString["Token"];
            TknLabel.Text = TokenName;
            TokenValue = Request.QueryString[""];
            TknValue.Text = TokenValue;

            DataTable dt = new DataTable();
            dt.Clear();
            dt.Columns.Add("crypto");
            dt.Columns.Add("logo");
            dt.Columns.Add("price");
            var result = string.Empty;
            var httpWebRequest = (HttpWebRequest)WebRequest.Create("https://min-api.cryptocompare.com/data/pricemultifull?fsyms=" + TokenName + "&tsyms=USD");
            httpWebRequest.Method = "GET";
            httpWebRequest.KeepAlive = false;
            httpWebRequest.Accept = "text/json";
            string value = string.Empty;
            var placeholderobj = new JObject();

            httpWebRequest.ContentType = "application/json";

            var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();

            using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))

            {

                result = streamReader.ReadToEnd();
                var bigdict = JObject.Parse(result);
                placeholderobj = bigdict;
                TknImage.ImageUrl = "https://www.cryptocompare.com" + placeholderobj["RAW"][TokenName]["USD"]["IMAGEURL"].ToString();
                TknValue.Text = placeholderobj["RAW"][TokenName]["USD"]["PRICE"].ToString();

            }
            
        }

    }
}
    
