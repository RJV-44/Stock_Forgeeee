using System;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Sales
{
    public partial class EditSale : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnUpdateSale_Click(object sender, EventArgs e)
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

        protected void ValidateOptionalAmount(object source, ServerValidateEventArgs args)
        {
            string normalizedAmount = args.Value.Trim().Replace("₹", string.Empty).Replace(",", string.Empty);
            decimal amount;
            args.IsValid = string.IsNullOrWhiteSpace(args.Value)
                || (decimal.TryParse(
                    normalizedAmount,
                    NumberStyles.AllowDecimalPoint | NumberStyles.AllowLeadingSign | NumberStyles.AllowLeadingWhite | NumberStyles.AllowTrailingWhite,
                    CultureInfo.InvariantCulture,
                    out amount)
                    && amount >= 0m);
        }
    }
}

