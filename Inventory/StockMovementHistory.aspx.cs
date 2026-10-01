using System;
using System.Web.UI;

namespace Stock_Forgeeee.Inventory
{
    public partial class StockMovementHistory : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Execute movement history search and filter
            }
        }
    }
}

