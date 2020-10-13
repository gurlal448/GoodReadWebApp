using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using GoodReadWebApp.Data;
using GoodReadWebApp.Models;
using Microsoft.AspNetCore.Authorization;

namespace GoodReadWebApp.Controllers
{
    [Authorize]
    public class BookReviewsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public BookReviewsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: BookReviews
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.BookReviews.Include(b => b.Book);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: BookReviews/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bookReview = await _context.BookReviews
                .Include(b => b.Book)
                .FirstOrDefaultAsync(m => m.ReviewID == id);
            if (bookReview == null)
            {
                return NotFound();
            }

            return View(bookReview);
        }

        // GET: BookReviews/Create
        public IActionResult Create()
        {
            ViewData["BookID"] = new SelectList(_context.Books, "BookID", "BookTitle");
            return View();
        }

        // POST: BookReviews/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ReviewID,ReviewText,ReviewDate,ReviewerName,Email,BookID")] BookReview bookReview)
        {
            if (ModelState.IsValid)
            {
                _context.Add(bookReview);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["BookID"] = new SelectList(_context.Books, "BookID", "Authors", bookReview.BookID);
            return View(bookReview);
        }

        
        // GET: BookReviews/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bookReview = await _context.BookReviews.FindAsync(id);
            if (bookReview == null)
            {
                return NotFound();
            }
            ViewData["BookID"] = new SelectList(_context.Books, "BookID", "Authors", bookReview.BookID);
            return View(bookReview);
        }

        // POST: BookReviews/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ReviewID,ReviewText,ReviewDate,ReviewerName,Email,BookID")] BookReview bookReview)
        {
            if (id != bookReview.ReviewID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(bookReview);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BookReviewExists(bookReview.ReviewID))
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
            ViewData["BookID"] = new SelectList(_context.Books, "BookID", "Authors", bookReview.BookID);
            return View(bookReview);
        }

        // GET: BookReviews/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bookReview = await _context.BookReviews
                .Include(b => b.Book)
                .FirstOrDefaultAsync(m => m.ReviewID == id);
            if (bookReview == null)
            {
                return NotFound();
            }

            return View(bookReview);
        }

        // POST: BookReviews/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var bookReview = await _context.BookReviews.FindAsync(id);
            _context.BookReviews.Remove(bookReview);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BookReviewExists(int id)
        {
            return _context.BookReviews.Any(e => e.ReviewID == id);
        }
    }
}
