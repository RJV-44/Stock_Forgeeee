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
        protected DropDownList ddlSupplierType;
        protected DropDownList ddlCategory;
        protected TextBox txtPhone;
        protected TextBox txtEmail;
        protected TextBox txtAddress;
        protected TextBox txtCity;
        protected TextBox txtPinCode;
        protected DropDownList ddlState;
        protected TextBox txtGstin;
        protected DropDownList ddlPaymentTerms;
        protected DropDownList ddlStatus;
        protected TextBox txtCreditLimit;
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
            if (txtCompanyName != null && string.IsNullOrWhiteSpace(txtCompanyName.Text))
            {
                ShowAlert("Supplier name cannot be blank.");
                return;
            }

            if (txtContactName != null && string.IsNullOrWhiteSpace(txtContactName.Text))
            {
                ShowAlert("Contact person name is required.");
                return;
            }

            if (txtPhone != null && string.IsNullOrWhiteSpace(txtPhone.Text))
            {
                ShowAlert("Phone number is required.");
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
