using Microsoft.Extensions.Hosting;

namespace CodeFirstSample;

public class Worker : IHostedService
{
    private readonly ApplicationDbContext _dbContext;

    public Worker(ApplicationDbContext dbContext)
    {
        _dbContext = dbContext;
    }

    public Task StartAsync(CancellationToken cancellationToken)
    {
        throw new NotImplementedException();
    }

    public Task StopAsync(CancellationToken cancellationToken) => Task.CompletedTask;
}