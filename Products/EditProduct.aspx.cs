using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Products
{
    public partial class EditProduct : Page
    {
        protected Panel pnlAlert;
        protected Label lblAlertMessage;
        protected TextBox txtProductName;
        protected TextBox txtSKU;
        protected DropDownList ddlCategory;
        protected DropDownList ddlUnit;
        protected TextBox txtPurchasePrice;
        protected TextBox txtSellingPrice;
        protected TextBox txtStockQty;
        protected TextBox txtReorderLevel;
        protected TextBox txtDescription;
        protected Button btnUpdateProduct;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please correct the validation errors before saving changes.");
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

            decimal purchasePrice, sellingPrice;
            if (!decimal.TryParse(txtPurchasePrice.Text.Trim(), out purchasePrice) || purchasePrice < 0)
            {
                ShowAlert("Invalid purchase price value.");
                return;
            }

            if (!decimal.TryParse(txtSellingPrice.Text.Trim(), out sellingPrice) || sellingPrice < 0)
            {
                ShowAlert("Invalid selling price value.");
                return;
            }

            if (sellingPrice < purchasePrice)
            {
                ShowAlert("Selling price cannot be lower than purchase cost.");
                return;
            }

            int stockQty, reorderLevel;
            if (!int.TryParse(txtStockQty.Text.Trim(), out stockQty) || stockQty < 0)
            {
                ShowAlert("Stock quantity must be a non-negative whole number.");
                return;
            }

            if (!int.TryParse(txtReorderLevel.Text.Trim(), out reorderLevel) || reorderLevel < 0)
            {
                ShowAlert("Reorder level must be a non-negative whole number.");
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
