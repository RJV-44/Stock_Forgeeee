using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Sales
{
    public partial class EditSale : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected DropDownList ddlCustomer;
        protected TextBox txtInvoiceNo;
        protected TextBox txtSalesDate;
        protected DropDownList ddlStatus;
        protected TextBox txtTax;
        protected TextBox txtShipping;
        protected TextBox txtNotes;
        protected Button btnUpdateSale;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnUpdateSale_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please resolve the highlighted validation errors.");
                return;
            }

            // Server-side controller validation
            if (string.IsNullOrWhiteSpace(txtInvoiceNo.Text))
            {
                ShowAlert("Invoice number cannot be empty.");
                return;
            }

            DateTime date;
            if (!DateTime.TryParse(txtSalesDate.Text.Trim(), out date))
            {
                ShowAlert("Sales date format is invalid.");
                return;
            }

            if (!string.IsNullOrWhiteSpace(txtTax.Text))
            {
                decimal tax;
                if (!decimal.TryParse(txtTax.Text.Trim(), out tax) || tax < 0)
                {
                    ShowAlert("Tax amount must be non-negative.");
                    return;
                }
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
