
using schoolsRegistration.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace schoolsRegistration.Context
{

	public class AppDbContext:DbContext
	{
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) {}
        public DbSet<Schools> schools { get; set;}
    }
}
