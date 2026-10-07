using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Account
{
    public partial class MyProfile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnSaveProfile_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please address all profile validation errors.");
                return;
            }

            // Server-side controller validation
            if (string.IsNullOrWhiteSpace(txtFullName.Text))
            {
                ShowAlert("Full name is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtPhone.Text))
            {
                ShowAlert("Phone number cannot be blank.");
                return;
            }

            if (pnlAlert != null && lblAlertMessage != null)
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "val-alert val-alert-success";
                lblAlertMessage.Text = "Profile details updated successfully!";
            }
        }

        private void ShowAlert(string message)
        {
            if (pnlAlert != null && lblAlertMessage != null)
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "val-alert val-alert-danger";
                lblAlertMessage.Text = message;
            }
        }
    }
}
