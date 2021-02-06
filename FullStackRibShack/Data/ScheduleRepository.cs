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


        public Schedule Add(Schedule scheduledEventToAdd)
        {
            using var db = new SqlConnection(_connectionString);

            try
            {
                //you'll need this i bet CAST('2021-February-02' AS datetime)
                // has this above values OUTPUT INSERTED.Id

                var sql = @"INSERT INTO [dbo].[Schedule]
                        ([Location],
                        [Date],
                        [TimeOpen],
                        [TimeClosed],
                        [EventCanceled])
                        VALUES 
                        (@location,  
                        @date, 
                        @timeOpen, 
                        @timeClosed,  
                        @eventCanceled)";


                var newEventparameters = new
                {
                    location = scheduledEventToAdd.Location,
                    date = scheduledEventToAdd.Date,
                    timeOpen = scheduledEventToAdd.TimeOpen,
                    timeClosed = scheduledEventToAdd.TimeClosed,
                    eventCanceled = scheduledEventToAdd.EventCanceled
                };

                var newScheduledEvent = db.QueryFirstOrDefault<Schedule>(sql, newEventparameters);


                return newScheduledEvent;

            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }

        }
    }
}
