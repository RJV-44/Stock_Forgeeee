using System;
using System.Web.UI;

namespace Stock_Forgeeee.Products
{
    public partial class AddProduct : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("ProductList.aspx");
            }
        }
    }
}
