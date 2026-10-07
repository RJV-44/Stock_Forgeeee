using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Suppliers
{
    public partial class AddSupplier : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtCompanyName;
        protected TextBox txtSupplierCode;
        protected TextBox txtContactName;
        protected DropDownList ddlCategory;
        protected TextBox txtPhone;
        protected TextBox txtEmail;
        protected TextBox txtGstin;
        protected DropDownList ddlPaymentTerms;
        protected DropDownList ddlStatus;
        protected TextBox txtCreditLimit;
        protected TextBox txtAddress;
        protected TextBox txtNotes;
        protected Button btnSaveSupplier;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnSaveSupplier_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please fix the errors in the form before saving.");
                return;
            }

            // Server-side controller validation
            if (string.IsNullOrWhiteSpace(txtCompanyName.Text))
            {
                ShowAlert("Vendor/Company name cannot be blank.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtSupplierCode.Text))
            {
                ShowAlert("Supplier code is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtContactName.Text))
            {
                ShowAlert("Primary contact person name is required.");
                return;
            }

            if (string.IsNullOrEmpty(ddlCategory.SelectedValue))
            {
                ShowAlert("Please select a specialty category.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtPhone.Text))
            {
                ShowAlert("Phone number is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtEmail.Text) || !txtEmail.Text.Contains("@"))
            {
                ShowAlert("Valid email address is required.");
                return;
            }

            if (!string.IsNullOrWhiteSpace(txtCreditLimit.Text))
            {
                decimal creditLimit;
                if (!decimal.TryParse(txtCreditLimit.Text.Trim(), out creditLimit) || creditLimit < 0)
                {
                    ShowAlert("Credit limit must be a positive number.");
                    return;
                }
            }

            Response.Redirect("SupplierList.aspx");
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
