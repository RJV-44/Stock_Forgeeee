using System;
using System.Web.UI;

namespace Stock_Forgeeee
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Register.aspx");
        }
    }
}
