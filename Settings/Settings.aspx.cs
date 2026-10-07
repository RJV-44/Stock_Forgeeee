using System;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Settings
{
    public partial class Settings : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtBusinessName;
        protected TextBox txtBusinessPhone;
        protected TextBox txtBusinessEmail;
        protected TextBox txtAddress;
        protected Button btnSaveSettings;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnSaveSettings_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please address all settings validation errors.");
                return;
            }

            // Server-side controller validation
            if (string.IsNullOrWhiteSpace(txtBusinessName.Text))
            {
                ShowAlert("Business name is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtBusinessPhone.Text))
            {
                ShowAlert("Business contact phone is required.");
                return;
            }

            if (!Regex.IsMatch(txtBusinessPhone.Text.Trim(), @"^(\+?[0-9\s\-\(\)]{8,16})$"))
            {
                ShowAlert("A valid phone number is required.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtBusinessEmail.Text))
            {
                ShowAlert("Business email is required.");
                return;
            } 

            if (!Regex.IsMatch(txtBusinessEmail.Text.Trim(), @"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"))
            {
                ShowAlert("A valid email address is required.");
                return;
            }

            // Success feedback
            if (pnlAlert != null && lblAlertMessage != null)
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "val-alert val-alert-success";
                lblAlertMessage.Text = "Business settings saved successfully!";
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
