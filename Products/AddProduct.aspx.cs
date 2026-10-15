using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Products
{
    public partial class AddProduct : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtProductName;
        protected TextBox txtSKU;
        protected DropDownList ddlCategory;
        protected DropDownList ddlUnit;
        protected TextBox txtPurchasePrice;
        protected TextBox txtSellingPrice;
        protected TextBox txtInitialStock;
        protected TextBox txtMinStock;
        protected DropDownList ddlSupplier;
        protected TextBox txtBrand;
        protected TextBox txtDescription;
        protected TextBox txtMaxStock;
        protected Button btnSave;
        protected Button btnSaveBottom;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please correct the errors in the form before submitting.");
                return;
            }

            // Server-side controller validation
            if (string.IsNullOrWhiteSpace(txtProductName.Text))
            {
                ShowAlert("Product name cannot be empty.");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtSKU.Text))
            {
                ShowAlert("SKU code is required.");
                return;
            }

            if (string.IsNullOrEmpty(ddlCategory.SelectedValue))
            {
                ShowAlert("Please select a valid product category.");
                return;
            }

            if (string.IsNullOrEmpty(ddlUnit.SelectedValue))
            {
                ShowAlert("Please select a unit of measurement.");
                return;
            }

            decimal purchasePrice;
            if (!decimal.TryParse(txtPurchasePrice.Text.Trim(), out purchasePrice) || purchasePrice < 0)
            {
                ShowAlert("Purchase price must be a valid non-negative number.");
                return;
            }

            decimal sellingPrice;
            if (!decimal.TryParse(txtSellingPrice.Text.Trim(), out sellingPrice) || sellingPrice < 0)
            {
                ShowAlert("Selling price must be a valid non-negative number.");
                return;
            }

            if (sellingPrice < purchasePrice)
            {
                ShowAlert("Selling price (₹" + sellingPrice.ToString("F2") + ") cannot be lower than purchase cost (₹" + purchasePrice.ToString("F2") + ").");
                return;
            }

            int initialStock;
            if (!int.TryParse(txtInitialStock.Text.Trim(), out initialStock) || initialStock < 0)
            {
                ShowAlert("Initial stock must be a non-negative integer.");
                return;
            }

            Response.Redirect("ProductList.aspx");
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
