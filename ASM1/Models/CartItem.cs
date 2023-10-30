using ASM1.Models;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
namespace ASM1.Models
{
	public class CartItem
	{
        public int Id { get; set; }
        public string Name { get; set; }
        public int quantity { get; set; }
        public decimal price { get; set; }
		public string img { get; set; }

		public decimal Total
        {
            get { return quantity * price; }
        }
        public CartItem()
        {
        }
        public CartItem(Product product)
        {
            Id = product.Id;
            Name = product.Name;
            img = product.img;
            price = product.price;
            quantity = 1;

        }
    }
	
}
