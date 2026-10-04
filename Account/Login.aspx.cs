using System;
using System.Web.UI;

namespace Stock_Forgeeee.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlAlert.Visible = false;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text;

                // Validate demo or store credentials
                if (!string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(password))
                {
                    Session["UserEmail"] = email;
                    Session["UserName"] = email.Contains("@") ? email.Split('@')[0] : email;
                    Session["IsAuthenticated"] = true;

                    Response.Redirect("~/Dashboard.aspx");
                }
                else
                {
                    pnlAlert.Visible = true;
                    lblAlertMessage.Text = "Invalid email or password. Please try again.";
                }
            }
        }

        protected void btnDemoAdmin_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "admin@stockforge.com";
            txtPassword.Attributes["value"] = "AdminPass123!";
            Session["UserEmail"] = "admin@stockforge.com";
            Session["UserName"] = "Admin User";
            Session["UserRole"] = "System Admin";
            Session["IsAuthenticated"] = true;

            Response.Redirect("~/Dashboard.aspx");
        }

        protected void btnDemoManager_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "manager@hardware.com";
            txtPassword.Attributes["value"] = "Manager123!";
            Session["UserEmail"] = "manager@hardware.com";
            Session["UserName"] = "Store Manager";
            Session["UserRole"] = "Manager";
            Session["IsAuthenticated"] = true;

            Response.Redirect("~/Dashboard.aspx");
        }

        protected void btnDemoStaff_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "staff@hardware.com";
            txtPassword.Attributes["value"] = "Staff123!";
            Session["UserEmail"] = "staff@hardware.com";
            Session["UserName"] = "Counter Staff";
            Session["UserRole"] = "Staff";
            Session["IsAuthenticated"] = true;

            Response.Redirect("~/Dashboard.aspx");
        }
    }
}
