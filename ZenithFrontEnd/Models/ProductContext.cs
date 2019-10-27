using System.Data.Entity;

namespace ZenithFrontEnd.Models
{
    public class ProductContext : DbContext
    {
        public ProductContext() : base("ZenithFrontEnd")
        {}
        
        public DbSet<Product> Products { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<OrderDetail> OrderDetails { get; set; }
    }
}
