using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using GoodReadWebApp.Models;
using GoodReadWebApp.Data;
using Microsoft.EntityFrameworkCore;

namespace GoodReadWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly ILogger<HomeController> _logger;

        public HomeController(ApplicationDbContext context, ILogger<HomeController> logger)
        {
            _context = context;
            _logger = logger;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.BookTypes.ToListAsync());
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public async Task<IActionResult> ViewPublications()
        {
            return View(await _context.Publications.ToListAsync());
        }


        // GET: Books
        public async Task<IActionResult> ViewBookByType(int? id)
        {
            var applicationDbContext = _context.Books
                .Include(b => b.BookType).Where(m => m.TypeID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> ViewBookByPublication(int? id)
        {
            var applicationDbContext = _context.Books
                .Include(p => p.Publication).Where(m => m.PublicationID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Books/Details/5
        public async Task<IActionResult> BookDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var book = await _context.Books
                .Include(b => b.BookType)
                .Include(b => b.Publication)
                .FirstOrDefaultAsync(m => m.BookID == id);
            if (book == null)
            {
                return NotFound();
            }

            return View(book);
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
