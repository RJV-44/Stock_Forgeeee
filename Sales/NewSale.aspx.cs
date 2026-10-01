using System;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Sales
{
    public partial class NewSale : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCreateSale_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (!Page.IsValid)
            {
                return;
            }

            Response.Redirect("SalesList.aspx");
        }

        protected void ValidateSalesDate(object source, ServerValidateEventArgs args)
        {
            DateTime salesDate;
            args.IsValid = DateTime.TryParseExact(
                args.Value,
                "yyyy-MM-dd",
                CultureInfo.InvariantCulture,
                DateTimeStyles.None,
                out salesDate);
        }
    }
}
