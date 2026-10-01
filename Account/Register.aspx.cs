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
            if (!chkTerms.Checked)
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-danger";
                lblAlertMessage.Text = "You must agree to the Terms of Service to register.";
                return;
            }

            if (Page.IsValid)
            {
                string storeName = txtStoreName.Text.Trim();
                string fullName = txtFullName.Text.Trim();
                string email = txtEmail.Text.Trim();

                Session["UserEmail"] = email;
                Session["UserName"] = fullName;
                Session["StoreName"] = storeName;
                Session["UserRole"] = "Store Admin";
                Session["IsAuthenticated"] = true;

                pnlAlert.Visible = true;
                pnlAlert.CssClass = "auth-alert-box auth-alert-success";
                lblAlertMessage.Text = "Registration successful! Redirecting to your dashboard...";

                Response.Redirect("~/Dashboard.aspx");
            }
        }
    }
}
