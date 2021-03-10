using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using FullStackRibShack.Data;

namespace FullStackRibShack.Controllers
{
    [Route("api/menuCategories")]
    [ApiController]
    public class MenuCategoryController : Controller
    {
        MenuCategoryRepository _repo;

        public MenuCategoryController(MenuCategoryRepository repo)
        {
            _repo = repo;
        }

        [HttpGet]
        public IActionResult GetMenuCategories()
        {
            var allMenuCategories = _repo.GetAll();

            return Ok(allMenuCategories);
        }

    }
}
