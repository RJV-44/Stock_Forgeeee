using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Forgeeee.Customers
{
    public partial class CustomerDetails : Page
    {
        protected TextBox txtQuickNote;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string idStr = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(idStr) && !int.TryParse(idStr, out _))
                {
                    // Redirect or handle invalid ID parameter gracefully
                    Response.Redirect("CustomerList.aspx");
                }
            }
        }

        protected void btnSaveNote_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (txtQuickNote != null)
                {
                    txtQuickNote.Text = string.Empty;
                }
            }
        }
    }
}


