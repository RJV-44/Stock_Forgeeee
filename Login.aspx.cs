using System;
using System.Web.UI;

namespace Stock_Forgeeee
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Login.aspx");
        }
    }
}
