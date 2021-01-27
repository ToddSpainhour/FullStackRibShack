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

        public List<Schedule> GetAll()
        {
            using var db = new SqlConnection(_connectionString);

            try
            {
                var fullSchedule = db.Query<Schedule>("SELECT * FROM Schedule");

                return fullSchedule.ToList();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }
    }
}
