using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace GoodReadWebApp.Models
{
    public class Book
    {
        [Key]
        public int BookID { get; set; }

        [Required]
        [StringLength(200)]
        public string BookTitle { get; set; }

        [Required]
        [StringLength(1000)]
        public string Description { get; set; }

        [Required]
        public int Pages { get; set; }

        [Required]
        [StringLength(200)]
        public string Authors { get; set; }

        [Required]
        [StringLength(20)]
        public string Extension { get; set; }

        [Required]
        public int TypeID { get; set; }

        [Required]
        public int PublicationID { get; set; }

        [ForeignKey("PublicationID")]
        [InverseProperty("PublicationBooks")]
        public virtual Publication Publication { get; set; }

        [ForeignKey("TypeID")]
        [InverseProperty("BookTypeBooks")]
        public virtual BookType BookType { get; set; }

        public virtual ICollection<BookReview> BookReviews { get; set; }

        [NotMapped]
        public SingleFileUpload File { get; set; }
    }

    public class SingleFileUpload
    {
        [Required]
        [Display(Name = "File")]
        public IFormFile FormFile { get; set; }
    }
}
