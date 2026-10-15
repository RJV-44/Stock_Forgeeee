using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Customers
{
    public partial class EditCustomer : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtFullName;
        protected TextBox txtEmail;
        protected TextBox txtPhone;
        protected DropDownList ddlCustomerType;
        protected TextBox txtStreetAddress;
        protected TextBox txtCity;
        protected TextBox txtState;
        protected TextBox txtPinCode;
        protected DropDownList ddlCountry;
        protected TextBox txtCompanyName;
        protected TextBox txtGst;
        protected DropDownList ddlPaymentTerms;
        protected TextBox txtNotes;
        protected Button btnSaveChanges;

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
                ShowAlert("Please address all highlighted validation errors.");
                return;
            }

            if (txtFullName != null && string.IsNullOrWhiteSpace(txtFullName.Text))
            {
                ShowAlert("Full Name is required.");
                return;
            }

            if (txtPhone != null && string.IsNullOrWhiteSpace(txtPhone.Text))
            {
                ShowAlert("Phone Number is required.");
                return;
            }

            if (txtEmail != null && !string.IsNullOrWhiteSpace(txtEmail.Text))
            {
                string email = txtEmail.Text.Trim();
                if (!email.Contains("@") || !email.Contains("."))
                {
                    ShowAlert("Invalid email address format.");
                    return;
                }
            }

            Response.Redirect("CustomerDetails.aspx?id=101");
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
