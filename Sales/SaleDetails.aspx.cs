using System;
using System.Web.UI;

namespace Stock_Forgeeee.Sales
{
    public partial class SaleDetails : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string idValue = Request.QueryString["id"];
            int saleId;
            if (string.IsNullOrWhiteSpace(idValue) || !int.TryParse(idValue, out saleId) || saleId <= 0)
            {
                Response.Redirect("SalesList.aspx");
                return;
            }
        }
    }
}
