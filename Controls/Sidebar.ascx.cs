using System;
using System.Web.UI;

namespace Stock_Forgeeee.Controls
{
    public partial class Sidebar : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string IsActive(string keyword)
        {
            string path = Request.Url.AbsolutePath;
            if (path.IndexOf(keyword, StringComparison.OrdinalIgnoreCase) >= 0)
            {
                return "active";
            }
            return "";
        }
    }
}
