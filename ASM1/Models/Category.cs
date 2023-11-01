using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
namespace ASM1.Models
{
	public class Category
	{
		[Key]
		public int CategoryId { get; set; }
		public string CategoryName { get; set; }
	}
}
