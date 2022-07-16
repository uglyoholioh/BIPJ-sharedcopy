using System;
using System.Configuration;
using System.Data.SqlClient;

namespace BIPJ_sharedcopy
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Signup_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["usersContext"].ToString());
            if (tb_password.Text == tb_confirm.Text)
            {
                int result = 0;
                user userobj = new user();
                result = userobj.createUser(tb_email.Text, tb_password.Text);
                if (result > 0)
                {
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Redirect("index.aspx");
                }

            }
            else
            {
                Response.Write("<script>alert('Password mismatch');</script>");

            }
        }
    }
}