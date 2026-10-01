using System;
using System.Web.UI;

namespace Stock_Forgeeee.Suppliers
{
    public partial class SupplierList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            Page.Validate("SupplierFilter");
            if (!Page.IsValid)
            {
                return;
            }
        }
    }
}
