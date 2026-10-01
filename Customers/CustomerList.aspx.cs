using System;
using System.Web.UI;

namespace Stock_Forgeeee.Customers
{
    public partial class CustomerList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Execute search and filtering logic
            }
        }
    }
}

