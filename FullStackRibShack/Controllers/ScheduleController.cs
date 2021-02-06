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


        [HttpGet("{nextFiveScheduledEvents}")]
        public IActionResult GetNextFiveScheduledEvents()
        {
            var NextFiveEvents = _repo.GetNextFiveEvents();

            return Ok(NextFiveEvents);
        }


        [HttpGet("allFutureEvents")]
        public IActionResult GetAllFutureEvents()
        {
            var allFutureEvents = _repo.GetFutureEvents();

            return Ok(allFutureEvents);
        }

        [HttpPost]
        public IActionResult CreateNewScheduledEvent(Schedule schedule)
        {
            var newScheduledEvent = _repo.Add(schedule);

            return Created($"api/schedule/{schedule.Id}", schedule);
        }
    }
}
