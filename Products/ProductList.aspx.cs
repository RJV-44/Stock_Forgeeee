using System;
using System.Web.UI;

namespace Stock_Forgeeee.Products
{
    public partial class ProductList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            Page.Validate("ProductFilter");
            if (!Page.IsValid)
            {
                return;
            }
        }
    }
}
