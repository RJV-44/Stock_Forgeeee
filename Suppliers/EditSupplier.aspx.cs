using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Suppliers
{
    public partial class EditSupplier : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtSupplierName;
        protected TextBox txtContactPerson;
        protected TextBox txtPhone;
        protected TextBox txtEmail;
        protected DropDownList ddlSupplierType;
        protected DropDownList ddlPaymentTerms;
        protected TextBox txtGstin;
        protected TextBox txtNotes;
        protected TextBox txtAddress;
        protected TextBox txtCity;
        protected TextBox txtState;
        protected TextBox txtPinCode;
        protected TextBox txtCountry;
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
                ShowAlert("Please resolve validation errors before updating.");
                return;
            }

            // Server-side controller validation
            if (string.IsNullOrWhiteSpace(txtSupplierName.Text))
            {
                ShowAlert("Supplier name is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtContactPerson.Text))
            {
                ShowAlert("Contact person is required.");
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

            if (string.IsNullOrWhiteSpace(txtCity.Text) || string.IsNullOrWhiteSpace(txtState.Text))
            {
                ShowAlert("City and State are required fields.");
                return;
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
