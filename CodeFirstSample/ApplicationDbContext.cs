using CodeFirstSample.Domain;
using Microsoft.EntityFrameworkCore;

namespace CodeFirstSample;

public class ApplicationDbContext : DbContext
{
    public DbSet<Actor> Actors { get; set; }
    public DbSet<Director> Directors { get; set; }
    public DbSet<Oscar> Oscars { get; set; }
}