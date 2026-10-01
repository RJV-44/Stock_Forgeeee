using System;
using System.Web.UI;

namespace Stock_Forgeeee.Suppliers
{
    public partial class SupplierDetails : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string idValue = Request.QueryString["id"];
            int supplierId;
            if (string.IsNullOrWhiteSpace(idValue) || !int.TryParse(idValue, out supplierId) || supplierId <= 0)
            {
                Response.Redirect("SupplierList.aspx");
                return;
            }
        }
    }
}
