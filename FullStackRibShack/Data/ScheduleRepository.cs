using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FullStackRibShack.Models;
using Microsoft.Data.SqlClient;
using Dapper;

namespace FullStackRibShack.Data
{
    public class ScheduleRepository
    {
        const string _connectionString = "Server = localhost; Database = FullStackRibShack; Trusted_Connection = True;";


        // returns all events from Schedule table
        public List<Schedule> GetAll()
        {
            using var db = new SqlConnection(_connectionString);

            var test = DateTime.Today;

            Console.WriteLine(test);

            try
            {
                var fullSchedule = db.Query<Schedule>
                    ("SELECT * " +
                    "FROM Schedule " +
                    "ORDER BY Date ASC");

                return fullSchedule.ToList();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }


        // returns next 5 scheduled events
        public List<Schedule> GetNextFiveEvents()
        {
            using var db = new SqlConnection(_connectionString);

            
            try
            {
                var nextFiveEvents = db.Query<Schedule>
                    ("DECLARE @TodaysDate DateTime " +
                    "SET @TodaysDate = GetDate() " +
                    "SELECT *" +
                    "FROM Schedule " +
                    "WHERE Date >= @TodaysDate " +
                    "Order By Date");

                return nextFiveEvents.ToList();
            }

            catch (Exception e)
            {
                Console.WriteLine(e);
                throw; 
            }

        }
    }
}
