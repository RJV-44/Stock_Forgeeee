using System;
using System.Web.UI;

namespace Stock_Forgeeee.Customers
{
    public partial class AddCustomer : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSaveCustomer_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Process valid customer data save
                Response.Redirect("CustomerList.aspx");
            }
        }
    }
}

