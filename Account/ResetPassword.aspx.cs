using System;
using System.Web.UI;

namespace Stock_Forgeeee.Account
{
    public partial class ResetPassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlAlert.Visible = false;
            }
        }

        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            string newPassword = txtNewPassword != null ? txtNewPassword.Text : string.Empty;
            string confirmPassword = txtConfirmPassword != null ? txtConfirmPassword.Text : string.Empty;

            // Controller validation
            if (string.IsNullOrEmpty(newPassword))
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "New password is required.";
                return;
            }

            if (newPassword.Length < 6)
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "Password must be at least 6 characters long.";
                return;
            }

            if (newPassword != confirmPassword)
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "Passwords do not match.";
                return;
            }

            pnlAlert.Visible = true;
            pnlAlert.CssClass = "auth-alert-box auth-alert-success";
            lblAlertMessage.Text = "Your password has been successfully updated! Redirecting to login...";

            Response.Redirect("~/Account/Login.aspx");
        }
    }
}
