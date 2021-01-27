using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FullStackRibShack.Models
{
    public class Schedule
    {
        public int Id { get; set; }
        public string Location { get; set; }
        public DateTime Date { get; set; }
        public string TimeOpen { get; set; }
        public string TimeClosed { get; set; }
        public bool EventCanceled { get; set; }
    }
}
