using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Inventory
{
    public partial class StockAdjustment : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtProductSearch;
        protected DropDownList ddlAdjustmentType;
        protected TextBox txtQuantity;
        protected TextBox txtNewStock;
        protected DropDownList ddlReason;
        protected TextBox txtNotes;
        protected Button btnSaveAdjustment;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnSaveAdjustment_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please resolve all validation errors before saving adjustment.");
                return;
            }

            int qty;
            if (txtQuantity != null && (!int.TryParse(txtQuantity.Text.Trim(), out qty) || qty <= 0))
            {
                ShowAlert("Adjustment quantity must be a positive integer greater than zero.");
                return;
            }

            Response.Redirect("StockMovementHistory.aspx");
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
