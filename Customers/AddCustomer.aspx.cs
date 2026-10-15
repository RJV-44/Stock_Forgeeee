using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Customers
{
    public partial class AddCustomer : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtCustomerName;
        protected DropDownList ddlCustomerType;
        protected TextBox txtPhone;
        protected TextBox txtEmail;
        protected TextBox txtAddress;
        protected TextBox txtCity;
        protected DropDownList ddlState;
        protected TextBox txtPinCode;
        protected TextBox txtNotes;
        protected Button btnSaveCustomer;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnSaveCustomer_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please fix the validation errors before saving the customer profile.");
                return;
            }

            if (txtCustomerName != null && string.IsNullOrWhiteSpace(txtCustomerName.Text))
            {
                ShowAlert("Customer Name is required.");
                return;
            }

            if (txtPhone != null && string.IsNullOrWhiteSpace(txtPhone.Text))
            {
                ShowAlert("Phone number is required.");
                return;
            }

            if (txtEmail != null && !string.IsNullOrWhiteSpace(txtEmail.Text))
            {
                string email = txtEmail.Text.Trim();
                if (!email.Contains("@") || !email.Contains("."))
                {
                    ShowAlert("Please provide a valid email format.");
                    return;
                }
            }

            Response.Redirect("CustomerList.aspx");
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
