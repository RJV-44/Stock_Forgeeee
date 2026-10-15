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
        protected TextBox txtSalesDate;
        protected DropDownList ddlStatus;
        protected DropDownList ddlPaymentMethod;
        protected TextBox txtQty;
        protected TextBox txtNotes;
        protected Button btnSaveChanges;

        // Backward compatibility if referenced
        protected TextBox txtInvoiceNo;
        protected TextBox txtTax;
        protected TextBox txtShipping;
        protected Button btnUpdateSale;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please resolve any validation errors.");
                return;
            }

            int qty;
            if (txtQty != null && !int.TryParse(txtQty.Text.Trim(), out qty))
            {
                ShowAlert("Please enter a valid product quantity.");
                return;
            }

            // Redirect back to sale details upon successful save
            Response.Redirect("SaleDetails.aspx?id=SO-2026-0125");
        }

        protected void btnUpdateSale_Click(object sender, EventArgs e)
        {
            btnSaveChanges_Click(sender, e);
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
