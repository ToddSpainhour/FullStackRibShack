using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FullStackRibShack.Models;
using Microsoft.Data.SqlClient;
using Dapper;

namespace FullStackRibShack.Data
{
    public class MenuCategoryRepository
    {
        const string _connectionString = "Server = localhost; Database = FullStackRibShack; Trusted_Connection = True;";

        public List<MenuCategoryModel> GetAll()
        {
            using var db = new SqlConnection(_connectionString);

            try
            {
                var allMenuCategories = db.Query < MenuCategoryModel >

                    ("SELECT MenuItem.*, MenuCategory.MenuCategory " +
                    "FROM MenuItem " +
                    "JOIN MenuCategory ON MenuItem.MenuCategoryId = MenuCategory.Id");


                return allMenuCategories.ToList();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }
    }
}
