using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FullStackRibShack.Models
{
    public class MenuCategoryModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Price { get; set; }
        public bool Avaliable { get; set; }
        public int MenuCategoryId { get; set; }
        public string MenuCategory { get; set; }

    }
}
