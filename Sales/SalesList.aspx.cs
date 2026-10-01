using System;
using System.Web.UI;

namespace Stock_Forgeeee.Sales
{
    public partial class SalesList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            Page.Validate("SalesFilter");
            if (!Page.IsValid)
            {
                return;
            }
        }
    }
}
