using ETicaretAPI.Core.Entities.Concrete;
using ETicaretAPI.Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETicaretAPI.DataAccess.Contexts
{
    public class DbTeamSolidContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(Configuration.ConnectionString);
        }

        public DbSet<Category> Categories { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Payment> Payments { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Address> Addresses { get; set; }
        public DbSet<Basket> Baskets { get; set; }
        public DbSet<Brand> Brands { get; set; }
        public DbSet<Image> Images { get; set; }
        public DbSet<Option> Options { get; set; }
        public DbSet<OrderStatus> OrderStatuses { get; set; }
        public DbSet<Shipment> Shipments { get; set; }
        public DbSet<Shipper> Shippers { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<OperationClaim> OperationClaims { get; set; }
        public DbSet<UserOperationClaim> UserOperationClaims { get; set; }
        public DbSet<CategoryOption> CategoryOptions { get; set; }
        public DbSet<OptionValue> OptionValues { get; set; }
        public DbSet<OrderDetail> OrderDetails { get; set; }
        public DbSet<Favorite> Favorites { get; set; }
    }
}
