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


        // returns next five events which will include today's event if there is one
        public List<Schedule> GetNextFiveEvents()
        {
            using var db = new SqlConnection(_connectionString);

            try
            {
                var nextFiveEvents = db.Query<Schedule>
                 ("DECLARE @TodaysDate DateTime "
                 + "SET @TodaysDate = DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) "
                 + "SELECT TOP 5 * "
                 + "FROM Schedule "
                 + "WHERE Date >= @TodaysDate "
                 + "ORDER BY Date ASC");

                return nextFiveEvents.ToList();
            }

            catch (Exception e)
            {
                Console.WriteLine(e);
                throw; 
            }
        }


        // returns all future events including today's event if there is one
        public List<Schedule> GetFutureEvents()
        {
            using var db = new SqlConnection(_connectionString);

            try
            {
                var allFutureEvents = db.Query<Schedule>
                 ("DECLARE @TodaysDate DateTime "
                 + "SET @TodaysDate = DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) "
                 + "SELECT * "
                 + "FROM Schedule "
                 + "WHERE Date >= @TodaysDate "
                 + "ORDER BY Date ASC");

                return allFutureEvents.ToList();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

        public List<Schedule> Add(Schedule scheduleToAdd)
        {
            using var db = new SqlConnection(_connectionString);

            try
            {
                var addNewScheduledEvent = db.Query<Schedule> // getting error "near @ScheduleToInsert"
                    ("DECLARE @ScheduleToInsert Schedule" +
                    "SET @ScheduleToInsert = scheduleToAdd" +
                    "INSERT INTO Schedule" +
                    "VALUES @ScheduleToInsert");

                return addNewScheduledEvent.ToList();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
            
        }
    }
}
