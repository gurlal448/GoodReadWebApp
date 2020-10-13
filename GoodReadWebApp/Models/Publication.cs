using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace GoodReadWebApp.Models
{
    public class Publication
    {
        [Key]
        public int PublicationID { get; set; }

        [Required]
        [StringLength(100)]
        public string PublicationName { get; set; }

        public virtual ICollection<Book> PublicationBooks { get; set; }
    }
}
