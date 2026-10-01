using System;
using System.Web.UI;

namespace Stock_Forgeeee.Account
{
    public partial class ForgotPassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlAlert.Visible = false;
            }
        }

        protected void btnSendResetLink_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string email = txtEmail.Text.Trim();

                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-success";
                lblAlertMessage.Text = "Password reset instructions have been sent to " + email + ". Please check your inbox.";

                txtEmail.Text = string.Empty;
            }
        }
    }
}
