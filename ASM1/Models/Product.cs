using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
namespace ASM1.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        [NotMapped]
        [Required]
        [Display(Name ="UploadFile")]
        public IFormFile img { get; set; }
        public int price { get; set; }
        public string quantity { get; set; }
        public string? AuthorName { get; set; }
		public string? EmpPhotoPath { get; set; }
		public string? EmpFileName { get; set; }
		public string type { get; set; }

    }
}
