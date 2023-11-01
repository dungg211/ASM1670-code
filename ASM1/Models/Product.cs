using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
namespace ASM1.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string img { get; set; }
        public int price { get; set; }
        public int quantity { get; set; }
        /*		public string? EmpPhotoPath { get; set; }
		public string? EmpFileName { get; set; }*/
		

        public int? AuthorId { get; set; }
        [ForeignKey("AuthorId")]
        public Author? Authors { get; set; }
		public int? CategoryId { get; set; }
		[ForeignKey("CategoryId")]
		public Category? Categories { get; set; }
	}
}
