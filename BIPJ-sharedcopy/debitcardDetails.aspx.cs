using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIPJ_sharedcopy
{
    public partial class debitcardDetails1 : System.Web.UI.Page
    {
        Debit_Card card = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            Debit_Card aCard = new Debit_Card();
            // Get Card ID from querystring
            string cardID = Request.QueryString["CardID"].ToString();
            card = aCard.getCard(cardID);

            lbl_CardName.Text = card.Card_Name;
            lbl_CardDesc.Text = card.Card_Desc;
            lbl_SubscriptionCost.Text = card.Subscription_Cost.ToString("c");
            img_Card.ImageUrl = "~\\Images\\" + card.Card_Image;

            lbl_CardID.Text = cardID.ToString();

        }

        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            Debit_Card aCard = new Debit_Card();
            string cardID = Request.QueryString["CardID"].ToString();
            card = aCard.getCard(cardID);
            if (cardID == "1")
            {
                Response.Redirect("CheckoutForm.aspx");
            } 
            else if (cardID == "2")
            {
                Response.Redirect("CheckoutForm.aspx");
            }
            else if (cardID == "3")
            {
                Response.Redirect("CheckoutForm.aspx");
            }
           
        }

        protected void btn_back_Click(object sender, EventArgs e)
        { 
            Response.Redirect("debitcard.aspx");
        }
    }
}