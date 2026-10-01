using System;
using System.Web.UI;

namespace Stock_Forgeeee.Customers
{
    public partial class EditCustomer : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnUpdateCustomer_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Process valid customer data update
                Response.Redirect("CustomerList.aspx");
            }
        }
    }
}

