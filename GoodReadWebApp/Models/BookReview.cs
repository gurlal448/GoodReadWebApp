using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace GoodReadWebApp.Models
{
    public class BookReview
    {
        [Key]
        public int ReviewID { get; set; }

        [Required]
        [StringLength(1000)]
        public string ReviewText { get; set; }

        public DateTime ReviewDate { get; set; }

        [Required]
        [StringLength(100)]
        public string ReviewerName { get; set; }

        [Required]
        [StringLength(100)]
        public string Email { get; set; }

        [Required]
        public int BookID { get; set; }

        public Book Book { get; set; }
    }
}
