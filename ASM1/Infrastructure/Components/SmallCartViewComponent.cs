using ASM1.Models.ViewModel;
using ASM1.Models;
using Microsoft.AspNetCore.Mvc;

namespace ASM1.Infrastructure.Components
{
    public class SmallCartViewComponent : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            List<CartItem> cart = HttpContext.Session.GetJson<List<CartItem>>("Cart");
            SmallCartViewModel smallCartVM;

            if (cart == null || cart.Count == 0)
            {
                smallCartVM = null;
            }
            else
            {
                smallCartVM = new()
                {
                    NumberOfItems = cart.Sum(x => x.quantity),
                    TotalAmount = cart.Sum(x => x.quantity * x.price)
                };
            }

            return View(smallCartVM);
        }
    }
}
