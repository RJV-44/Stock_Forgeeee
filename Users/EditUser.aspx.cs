using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Users
{
    public partial class EditUser : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtFullName;
        protected TextBox txtEmail;
        protected TextBox txtPhone;
        protected DropDownList ddlRole;
        protected DropDownList ddlStatus;
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
                ShowAlert("Please resolve validation errors before saving user details.");
                return;
            }

            // Server-side controller validation
            if (string.IsNullOrWhiteSpace(txtFullName.Text))
            {
                ShowAlert("Full name is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtEmail.Text) || !txtEmail.Text.Contains("@"))
            {
                ShowAlert("A valid email address is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtPhone.Text))
            {
                ShowAlert("Phone number is required.");
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
