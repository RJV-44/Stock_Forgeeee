using System;

namespace Stock_Forgeeee.Models
{
    public class Product
    {
        public int ProductId { get; set; }
        public string Sku { get; set; }
        public string ProductName { get; set; }
        public int? CategoryId { get; set; }
        public int? BrandId { get; set; }
        public string Description { get; set; }
        public decimal UnitPrice { get; set; }
        public decimal CostPrice { get; set; }
        public int ReorderLevel { get; set; }
        public bool IsActive { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
    }
}
