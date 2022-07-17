using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIPJ_sharedcopy
{
    public partial class CheckoutForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_TotalPrice.Text = (string)Session["TotalPrice"];
        }
        protected void btn_ConfirmPurchase_Click(object sender, EventArgs e)
        {
            // extract info from textbox and save into session
            Session["ShippingToState"] = tb_ShippingToState.Text;
            Session["FullName"] = tb_FullName.Text;
            Session["DeliveryAddress"] = tb_DeliveryAddress.Text;
            Session["PostalCode"] = tb_PostalCode.Text;

            // if rbl_PaymentMethod is selected, the SelectedIndex will be more than -1
            string PaymentMethod = null;
            if (rbl_PaymentMethod.SelectedIndex > -1)
            {
                PaymentMethod = rbl_PaymentMethod.SelectedItem.Text;
                Session["PaymentMethod"] = PaymentMethod;

            }

            string ShippingTo = null;
            if (ddl_ShippingTo.SelectedIndex > -1)
            {
                ShippingTo = ddl_ShippingTo.SelectedItem.Text;
            }
            Session["ShippingTo"] = ShippingTo;

            Response.Redirect("ThankyouForm.aspx");
        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("debitCardDetails.aspx");
        }
    }
}