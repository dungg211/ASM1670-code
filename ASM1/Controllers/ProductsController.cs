using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ASM1.Data;
using ASM1.Models;
using Microsoft.Extensions.Hosting;
using System.Data;
using System.Reflection;
using Microsoft.AspNetCore.Authorization;

namespace ASM1.Models
{
    public class ProductsController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public ProductsController(ApplicationDbContext context, 
            IWebHostEnvironment webHostEnvironment)
        {
            _context = context;
            _webHostEnvironment = webHostEnvironment;
        }

        // GET: Products
        public async Task<IActionResult> Index()
        {
              return _context.Product != null ? 
                          View(await _context.Product.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.Product'  is null.");
        }
        public async Task<IActionResult> ListProduct(string searchString)
        {
            var data = await _context.Product.ToListAsync();
            if (data == null)
            {
                return Problem("Entity set 'MvcMovieContext.Movie'  is null.");
            }

            var product = from m in data
                          select m;

            if (!String.IsNullOrEmpty(searchString))
            {
                product = product.Where(s => s.Name!.Contains(searchString));
                return View(product);
            }
            else
            {
                return _context.Product != null ?
                                  View(data) :
                                  Problem("Entity set 'ASM1.Product'  is null.");
            }
        }
        // GET: Products/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Product == null)
            {
                return NotFound();
            }

            var product = await _context.Product
                .FirstOrDefaultAsync(m => m.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }
        public async Task<IActionResult> ProductDetail(int? id)
        {
            if (id == null || _context.Product == null)
            {
                return NotFound();
            }

            var product = await _context.Product
                .FirstOrDefaultAsync(m => m.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }
        // GET: Products/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name,img,price,quantity,type")] Product product)
        {
            
                if (ModelState.IsValid)
                {
                    if(product.img != null)
                    {
                    string folder = "/img";
                    folder += Guid.NewGuid().ToString() + product.img.FileName ;
                    string serverFolder = Path.Combine(_webHostEnvironment.WebRootPath, folder);

                    await product.img.CopyToAsync(new FileStream(serverFolder, FileMode.Create)); ;
                    }
                    _context.Add(product);
                    await _context.SaveChangesAsync();
                    return RedirectToAction(nameof(Index));
                }
            
            return View(product);
        }

        // GET: Products/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Product == null)
            {
                return NotFound();
            }

            var product = await _context.Product.FindAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,img,price,quantity,type")] Product product)
        {
            if (id != product.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                if (product.img != null)
                {
                    string folder = "/img";
                    folder += product.img.FileName + Guid.NewGuid().ToString();
                    string serverFolder = Path.Combine(_webHostEnvironment.WebRootPath, folder);

                    await product.img.CopyToAsync(new FileStream(serverFolder, FileMode.Create)); ;
                }
                try
                {
                    _context.Update(product);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ProductExists(product.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(product);
        }

        // GET: Products/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Product == null)
            {
                return NotFound();
            }

            var product = await _context.Product
                .FirstOrDefaultAsync(m => m.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Product == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Product'  is null.");
            }
            var product = await _context.Product.FindAsync(id);
            if (product != null)
            {
                _context.Product.Remove(product);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProductExists(int id)
        {
          return (_context.Product?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
