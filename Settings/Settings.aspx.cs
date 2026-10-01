using System;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Settings
{
    public partial class Settings : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSaveAll_Click(object sender, EventArgs e)
        {
            if (!ValidateSettingsSection("GeneralSettings", "general")) return;
            if (!ValidateSettingsSection("InventorySettings", "inventory")) return;
            if (!ValidateSettingsSection("BillingSettings", "billing")) return;
            if (!ValidateSettingsSection("NotificationSettings", "notifications")) return;
            ValidateSettingsSection("SecuritySettings", "security");
        }

        protected void btnSaveGeneral_Click(object sender, EventArgs e)
        {
            ValidateSettingsSection("GeneralSettings", "general");
        }

        protected void btnSaveInventory_Click(object sender, EventArgs e)
        {
            ValidateSettingsSection("InventorySettings", "inventory");
        }

        protected void btnSaveBilling_Click(object sender, EventArgs e)
        {
            ValidateSettingsSection("BillingSettings", "billing");
        }

        protected void btnSaveNotif_Click(object sender, EventArgs e)
        {
            ValidateSettingsSection("NotificationSettings", "notifications");
        }

        protected void btnSaveSecurity_Click(object sender, EventArgs e)
        {
            ValidateSettingsSection("SecuritySettings", "security");
        }

        protected void ValidatePhone(object source, ServerValidateEventArgs args)
        {
            string phone = args.Value ?? string.Empty;
            string digits = Regex.Replace(phone, "\\D", string.Empty);
            args.IsValid = Regex.IsMatch(phone, @"^\+?[0-9][0-9\s().-]*$")
                && digits.Length >= 7
                && digits.Length <= 15;
        }

        private bool ValidateSettingsSection(string validationGroup, string tabId)
        {
            Page.Validate(validationGroup);
            foreach (IValidator validator in Page.GetValidators(validationGroup))
            {
                if (!validator.IsValid)
                {
                    ActivateSettingsTab(tabId);
                    return false;
                }
            }

            return true;
        }

        private void ActivateSettingsTab(string tabId)
        {
            string script = string.Format(
                "var tabButton = document.querySelector('.notification-tab[onclick*=\\\"{0}\\\"]'); if (tabButton) switchSettingsTab('{0}', tabButton);",
                tabId);
            ClientScript.RegisterStartupScript(GetType(), "ActiveSettingsTab", script, true);
        }
    }
}
