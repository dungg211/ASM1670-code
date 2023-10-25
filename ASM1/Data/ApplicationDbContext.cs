using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using ASM1.Models;

namespace ASM1.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<ASM1.Models.Product>? Product { get; set; } = default;
        public DbSet<ASM1.Models.Author>? Author { get; set; }
    }
}