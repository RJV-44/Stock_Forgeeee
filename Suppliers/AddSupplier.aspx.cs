using System;
using System.Web.UI;

namespace Stock_Forgeeee.Suppliers
{
    public partial class AddSupplier : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSaveSupplier_Click(object sender, EventArgs e)
        {
            Page.Validate("SupplierForm");
            if (!Page.IsValid)
            {
                return;
            }

            Response.Redirect("SupplierList.aspx");
        }
    }
}
