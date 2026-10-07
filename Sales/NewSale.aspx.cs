using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Sales
{
    public partial class NewSale : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected DropDownList ddlCustomer;
        protected TextBox txtSalesDate;
        protected TextBox txtInvoiceNo;
        protected DropDownList ddlPaymentMethod;
        protected TextBox txtAddress;
        protected TextBox txtNotes;
        protected Button btnCreateSale;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnCreateSale_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please complete all required fields correctly.");
                return;
            }

            // Server-side controller validation
            if (string.IsNullOrEmpty(ddlCustomer.SelectedValue))
            {
                ShowAlert("Please select a customer for the sale.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtInvoiceNo.Text))
            {
                ShowAlert("Invoice number is required.");
                return;
            }

            DateTime salesDate;
            if (!DateTime.TryParse(txtSalesDate.Text.Trim(), out salesDate))
            {
                ShowAlert("Please enter a valid sales date.");
                return;
            }

            Response.Redirect("SalesList.aspx");
        }

        private void ShowAlert(string message)
        {
            if (pnlAlert != null && lblAlertMessage != null)
            {
                pnlAlert.Visible = true;
                lblAlertMessage.Text = message;
            }
        }
    }
}
