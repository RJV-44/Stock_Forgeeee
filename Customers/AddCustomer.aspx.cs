using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Customers
{
    public partial class AddCustomer : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtFirstName;
        protected TextBox txtLastName;
        protected TextBox txtCompany;
        protected DropDownList ddlCustomerType;
        protected TextBox txtPhone;
        protected TextBox txtEmail;
        protected TextBox txtAddress;
        protected TextBox txtGst;
        protected DropDownList ddlStatus;
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

            // Server-side controller validation
            if (string.IsNullOrWhiteSpace(txtFirstName.Text))
            {
                ShowAlert("Customer first name is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtLastName.Text))
            {
                ShowAlert("Customer last name is required.");
                return;
            }

            if (string.IsNullOrEmpty(ddlCustomerType.SelectedValue))
            {
                ShowAlert("Please select a valid customer category type.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtPhone.Text))
            {
                ShowAlert("Phone number is required.");
                return;
            }

            if (!string.IsNullOrWhiteSpace(txtEmail.Text))
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
