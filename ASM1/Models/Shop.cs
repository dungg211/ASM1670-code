using System.ComponentModel.DataAnnotations;

namespace ASM1.Models
{
    public class Shop
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string ProductName { get; set; }
        [Required]
        public decimal ProductPrice { get; set; }
        [Required]
        public int Quantity { get; set; }
        [Required]
        public DateTime Purchase_date { get; set; }
        [Required]
        public decimal TotalRevenue
        {
            get { return Quantity * ProductPrice; }
        }
    }
}
