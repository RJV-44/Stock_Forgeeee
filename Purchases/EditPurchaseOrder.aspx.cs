using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Purchases
{
    public partial class EditPurchaseOrder : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtPoNumber;
        protected DropDownList ddlSupplier;
        protected TextBox txtExpectedDelivery;
        protected TextBox txtNotes;
        protected Button btnSaveOrder;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnSaveOrder_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please correct errors in the purchase order.");
                return;
            }

            // Server-side controller validation
            if (string.IsNullOrEmpty(ddlSupplier.SelectedValue))
            {
                ShowAlert("Please select a supplier for this order.");
                return;
            }

            DateTime deliveryDate;
            if (!DateTime.TryParse(txtExpectedDelivery.Text.Trim(), out deliveryDate))
            {
                ShowAlert("Invalid expected delivery date format.");
                return;
            }

            Response.Redirect("PurchaseOrderDetails.aspx?id=" + txtPoNumber.Text.Trim());
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
