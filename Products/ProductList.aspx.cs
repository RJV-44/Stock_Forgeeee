using System;
using System.Collections;
using System.Web.UI;
using Stock_Forgeeee.DataAccess;

namespace Stock_Forgeeee.Products
{
    public partial class ProductList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }
        }

        private void BindProducts()
        {
            ArrayList products = new ProductRepository().GetAllArrayList();
            rptProducts.DataSource = products;
            rptProducts.DataBind();
            pnlNoProducts.Visible = products.Count == 0;
        }
    }
}
