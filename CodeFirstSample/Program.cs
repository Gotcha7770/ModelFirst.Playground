// See https://aka.ms/new-console-template for more information

using CodeFirstSample;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

var host = Host.CreateDefaultBuilder(args)
    .ConfigureServices((context, services) =>
    {
        services.AddNpgsql<ApplicationDbContext>(context.Configuration.GetConnectionString("ModelTestDb"));
        services.AddHostedService<Worker>();
    })
    .Build();

host.Run();