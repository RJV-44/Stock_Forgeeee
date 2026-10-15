using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Purchases
{
    public partial class ReceivePurchase : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtReceivedDate;
        protected TextBox txtReceivedBy;
        protected TextBox txtWaybill;
        protected TextBox txtNotes;
        protected Button btnConfirmReceipt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnConfirmReceipt_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please check the form for receipt validation errors.");
                return;
            }

            // Validate received date format if supplied
            DateTime receivedDate;
            if (!string.IsNullOrWhiteSpace(txtReceivedDate.Text) && !DateTime.TryParse(txtReceivedDate.Text.Trim(), out receivedDate))
            {
                ShowAlert("Invalid received date format.");
                return;
            }

            Response.Redirect("PurchaseOrderDetails.aspx?id=PO-2026-0048");
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
