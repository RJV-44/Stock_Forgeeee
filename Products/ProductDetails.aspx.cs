using System;
using System.Web.UI;

namespace Stock_Forgeeee.Products
{
    public partial class ProductDetails : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string idValue = Request.QueryString["id"];
            int productId;
            if (string.IsNullOrWhiteSpace(idValue) || !int.TryParse(idValue, out productId) || productId <= 0)
            {
                Response.Redirect("ProductList.aspx");
                return;
            }
        }
    }
}
