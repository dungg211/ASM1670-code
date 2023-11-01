using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using ASM1.Infrastructure;
using Microsoft.EntityFrameworkCore;
using ASM1.Data;
using ASM1.Models;
using ASM1.Models.ViewModel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Hosting;

namespace ASM1.Controllers

{
    public class CartController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment webHostEnvironment;

        public CartController(ApplicationDbContext context, IWebHostEnvironment webHostEnvironment)
        {
            _context = context;
            this.webHostEnvironment = webHostEnvironment;
        }
        public IActionResult Index()
        {
            List<CartItem> cart = HttpContext.Session.GetJson<List<CartItem>>("Cart") ?? new List<CartItem>();

            CartViewModel cartVM = new()
            {
                CartItems = cart,
                GrandTotal = cart.Sum(x => x.quantity * x.price)
            };

            ViewBag.CartUserName = User.Identity.Name;
            ViewBag.Date = DateTime.Now.ToString("yyyy-MM-dd");
            return View(cartVM);
        }
        public async Task<IActionResult> Add(int id)
        {
            Product product = await _context.Product.FindAsync(id);

            List<CartItem> cart = HttpContext.Session.GetJson<List<CartItem>>("Cart") ??  new List<CartItem>();

            CartItem cartItem = cart.Where(c => c.Id == id).FirstOrDefault();

            if (cartItem == null)
            {
                cart.Add(new CartItem(product));
            }
            else
            {
                cartItem.quantity += 1;
            }

            HttpContext.Session.SetJson("Cart", cart);

            TempData["Success"] = "The product has been added!";

            return Redirect(Request.Headers["Referer"].ToString());
        }
        public async Task<IActionResult> Decrease(int id)
        {
            List<CartItem> cart = HttpContext.Session.GetJson<List<CartItem>>("Cart");

            CartItem cartItem = cart.Where(c => c.Id == id).FirstOrDefault();

            if (cartItem.quantity > 1)
            {
                --cartItem.quantity;
            }
            else
            {
                cart.RemoveAll(p => p.Id == id);
            }

            if (cart.Count == 0)
            {
                HttpContext.Session.Remove("Cart");
            }
            else
            {
                HttpContext.Session.SetJson("Cart", cart);
            }

            TempData["Success"] = "The product has been removed!";

            return RedirectToAction("Index");
        }

        public async Task<IActionResult> Remove(int id)
        {
            List<CartItem> cart = HttpContext.Session.GetJson<List<CartItem>>("Cart");

            cart.RemoveAll(p => p.Id == id);

            if (cart.Count == 0)
            {
                HttpContext.Session.Remove("Cart");
            }
            else
            {
                HttpContext.Session.SetJson("Cart", cart);
            }

            TempData["Success"] = "The product has been removed!";

            return RedirectToAction("Index");
        }

        public IActionResult Clear()
        {
            HttpContext.Session.Remove("Cart");

            return RedirectToAction("Index");
        }

        public async Task<IActionResult> CheckOut()
        {
            var name = User.Identity.Name;
            List<CartItem> cart = HttpContext.Session.GetJson<List<CartItem>>("Cart");

            if (cart != null)
            {
                foreach (CartItem item in cart)
                {
                    if (item != null)
                    {
                        Shop createData = new Shop
                        {
                            ProductName = item.Name,
                            ProductPrice = item.price,
                            Quantity = item.quantity,
                            Purchase_date = DateTime.Now
                        };

                        // Add the data to the context
                        _context.Add(createData);
                    }
                }

                // Validate the model and save changes
                if (ModelState.IsValid)
                {
                    await _context.SaveChangesAsync();
                    return View();
                }
            }

            // If cart is null or ModelState is not valid, return the view
            return View();
        }

    }
}   
