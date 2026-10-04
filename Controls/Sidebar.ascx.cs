using System;
using System.Web.UI;

namespace Stock_Forgeeee.Controls
{
    public partial class Sidebar : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string IsActive(string section)
        {
            string path = Request.Url.AbsolutePath;
            switch (section.ToLowerInvariant())
            {
                case "dashboard":
                    return (path.EndsWith("Dashboard.aspx", StringComparison.OrdinalIgnoreCase) || path.EndsWith("Default.aspx", StringComparison.OrdinalIgnoreCase) || path.TrimEnd('/') == Request.ApplicationPath?.TrimEnd('/')) ? "active" : "";
                case "products":
                    return path.IndexOf("/Products/", StringComparison.OrdinalIgnoreCase) >= 0 ? "active" : "";
                case "suppliers":
                    return path.IndexOf("/Suppliers/", StringComparison.OrdinalIgnoreCase) >= 0 ? "active" : "";
                case "customers":
                    return path.IndexOf("/Customers/", StringComparison.OrdinalIgnoreCase) >= 0 ? "active" : "";
                case "purchases":
                    return path.IndexOf("/Purchases/", StringComparison.OrdinalIgnoreCase) >= 0 ? "active" : "";
                case "sales":
                    return path.IndexOf("/Sales/", StringComparison.OrdinalIgnoreCase) >= 0 ? "active" : "";
                case "inventory":
                    return path.IndexOf("/Inventory/", StringComparison.OrdinalIgnoreCase) >= 0 ? "active" : "";
                case "reports":
                    return path.IndexOf("/Reports/", StringComparison.OrdinalIgnoreCase) >= 0 ? "active" : "";
                case "settings":
                    return (path.IndexOf("/Settings/", StringComparison.OrdinalIgnoreCase) >= 0 || path.IndexOf("/Users/", StringComparison.OrdinalIgnoreCase) >= 0) ? "active" : "";
                default:
                    return "";
            }
        }
    }
}
