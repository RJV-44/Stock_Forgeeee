using System;
using System.Web.UI;

namespace Stock_Forgeeee.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlAlert.Visible = false;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "Please correct all validation errors.";
                return;
            }

            string storeName = txtStoreName != null ? txtStoreName.Text.Trim() : string.Empty;
            string fullName = txtFullName != null ? txtFullName.Text.Trim() : string.Empty;
            string email = txtEmail != null ? txtEmail.Text.Trim() : string.Empty;
            string password = txtPassword != null ? txtPassword.Text : string.Empty;
            string confirmPassword = txtConfirmPassword != null ? txtConfirmPassword.Text : string.Empty;

            // Controller-level server-side validation
            if (string.IsNullOrWhiteSpace(storeName))
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "Store Name is required.";
                return;
            }

            if (string.IsNullOrWhiteSpace(fullName))
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "Full Name is required.";
                return;
            }

            if (string.IsNullOrWhiteSpace(email) || !email.Contains("@") || !email.Contains("."))
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "Please enter a valid email address.";
                return;
            }

            if (string.IsNullOrWhiteSpace(password))
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "Password is required.";
                return;
            }

            if (password.Length < 6)
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "Password must be at least 6 characters.";
                return;
            }

            if (password != confirmPassword)
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "Passwords do not match.";
                return;
            }

            if (!chkTerms.Checked)
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "You must agree to the Terms of Service to register.";
                return;
            }

            Session["UserEmail"] = email;
            Session["UserName"] = fullName;
            Session["StoreName"] = storeName;
            Session["UserRole"] = "Store Admin";
            Session["IsAuthenticated"] = true;

            Response.Redirect("~/Dashboard.aspx");
        }
    }
}
