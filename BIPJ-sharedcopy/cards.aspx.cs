using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIPJ_sharedcopy
{
    public partial class cards : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_deposit.Text = (string)Session["deposit"];
        }

       // protected void Button3_Click1(object sender, EventArgs e)
        //{
            //DataList.Visible = true;
        //}

        //protected void Search_Click(object sender, EventArgs e)
        //{
            //if (TextBox1.Text != "")
            //{
                //DataList.DataSourceID = null;
                //DataList.DataSource = SqlDataSource2;
                //DataList.DataBind();

            //}
        //}

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "viewdetails")
            {
                Response.Redirect("Shop_Shirt_Details.aspx?ProdID=" + e.CommandArgument.ToString());

            }

        }

        protected void btn_deposit_Click(object sender, EventArgs e)
        {
            Session["deposit"] = tb_deposit.Text;
        }
    }
}