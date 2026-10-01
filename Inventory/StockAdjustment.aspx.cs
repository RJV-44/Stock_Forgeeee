using System;
using System.Web.UI;

namespace Stock_Forgeeee.Inventory
{
    public partial class StockAdjustment : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSaveAdjustment_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Process stock adjustment logic
                Response.Redirect("StockOverview.aspx");
            }
        }
    }
}

