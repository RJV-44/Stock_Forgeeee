using System;
using System.Web.UI;

namespace Stock_Forgeeee.Controls
{
    public partial class StatCard : UserControl
    {
        public string Title { get; set; } = "Metric";
        public string Value { get; set; } = "₹0";
        public string Subtitle { get; set; } = "+0% vs last month";
        public string IconClass { get; set; } = "bi-graph-up";
        public string IconBgClass { get; set; } = "bg-primary-light text-primary";
        public string TrendClass { get; set; } = "positive";
        public string TrendIcon { get; set; } = "bi-arrow-up-short";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
