using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using FullStackRibShack.Models;
using FullStackRibShack.Data;

namespace FullStackRibShack.Controllers
{
    [Route("api/schedule")]
    [ApiController]
    public class ScheduleController : Controller
    {
        ScheduleRepository _repo;

        public ScheduleController(ScheduleRepository repo)
        {
            _repo = repo;
        }

        [HttpGet]
        public IActionResult GetFullSchedule()
        {
            var FullSchedule = _repo.GetAll();

            return Ok(FullSchedule);
        }
    }
}
