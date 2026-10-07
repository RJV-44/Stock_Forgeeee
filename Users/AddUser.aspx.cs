using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Users
{
    public partial class AddUser : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtFullName;
        protected TextBox txtEmail;
        protected TextBox txtPhone;
        protected TextBox txtPassword;
        protected TextBox txtConfirmPassword;
        protected DropDownList ddlRole;
        protected TextBox txtNotes;
        protected Button btnCreateUser;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnCreateUser_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please check the form for validation errors.");
                return;
            }

            // Server-side controller validation
            if (string.IsNullOrWhiteSpace(txtFullName.Text))
            {
                ShowAlert("User full name is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtEmail.Text) || !txtEmail.Text.Contains("@"))
            {
                ShowAlert("Valid email address is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                ShowAlert("Temporary password is required.");
                return;
            }

            if (txtPassword.Text != txtConfirmPassword.Text)
            {
                ShowAlert("Passwords do not match.");
                return;
            }

            Response.Redirect("UserManagement.aspx");
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
