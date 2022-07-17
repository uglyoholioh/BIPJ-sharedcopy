using System;
using System.Web;

namespace BIPJ_sharedcopy
{
    public partial class loggedinnavbar : System.Web.UI.MasterPage
    {
        HttpContext context = HttpContext.Current;

        protected void Page_Load(object sender, EventArgs e)
        {
            string email = (string)(context.Session["email"]);
            if (email == null)
            {
                Response.Redirect("login.aspx");
            }

        }
    }
}