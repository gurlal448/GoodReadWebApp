using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace GoodReadWebApp.Models
{
    public class BookType
    {
        [Key]
        public int TypeID { get; set; }

        [Required]
        [StringLength(100)]
        public string TypeName { get; set; }

        public virtual ICollection<Book> BookTypeBooks { get; set; }
    }
}
