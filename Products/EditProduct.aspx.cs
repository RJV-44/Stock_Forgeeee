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
        protected TextBox txtBrand;
        protected DropDownList ddlCategory;
        protected DropDownList ddlSupplier;
        protected DropDownList ddlUnit;
        protected TextBox txtPurchasePrice;
        protected TextBox txtSellingPrice;
        protected TextBox txtStockQty;
        protected TextBox txtMinStock;
        protected TextBox txtMaxStock;
        protected TextBox txtReorderLevel;
        protected TextBox txtDescription;
        protected Button btnUpdateProduct;
        protected LinkButton btnSaveTop;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (pnlAlert != null) pnlAlert.Visible = false;
            }
        }

        protected void btnSaveTop_Click(object sender, EventArgs e)
        {
            btnUpdateProduct_Click(sender, e);
        }

        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                ShowAlert("Please correct the validation errors before saving changes.");
                return;
            }

            // Server-side controller validation
            if (txtProductName != null && string.IsNullOrWhiteSpace(txtProductName.Text))
            {
                ShowAlert("Product name cannot be empty.");
                return;
            }

            if (txtSKU != null && string.IsNullOrWhiteSpace(txtSKU.Text))
            {
                ShowAlert("SKU code is required.");
                return;
            }

            decimal purchasePrice, sellingPrice;
            if (txtPurchasePrice != null && (!decimal.TryParse(txtPurchasePrice.Text.Trim(), out purchasePrice) || purchasePrice < 0))
            {
                ShowAlert("Invalid purchase price value.");
                return;
            }

            if (txtSellingPrice != null && (!decimal.TryParse(txtSellingPrice.Text.Trim(), out sellingPrice) || sellingPrice < 0))
            {
                ShowAlert("Invalid selling price value.");
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
