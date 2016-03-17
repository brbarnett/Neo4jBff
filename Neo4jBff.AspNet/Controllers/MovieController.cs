using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;
using Neo4jBff.AspNet.Models;
using Neo4jClient;

namespace Neo4jBff.AspNet.Controllers
{
    public class MovieController : Controller
    {
        private readonly GraphClient _graphClient;

        public MovieController(GraphClient graphClient)
        {
            if (graphClient == null) throw new ArgumentNullException(nameof(graphClient));
            this._graphClient = graphClient;
        }

        // GET: Movie
        public async Task<ActionResult> Index()
        {
            var query = this._graphClient.Cypher
                .Match("(m:Movie)")
                .Return((m) => m.As<Movie>());

            IEnumerable<Movie> movies = await query.ResultsAsync;

            return base.View(movies.OrderBy(x => x.title));
        }

        // GET: Movie/{name}
        public async Task<ActionResult> Details(string id)
        {
            var query = this._graphClient.Cypher
                .Match("(m:Movie)")
                .Where("m.title = {title}")
                .OptionalMatch("(m)<-[:ACTED_IN]-(a:Person)")
                .WithParams(new { title = id })
                .Return((m, a) => new
                {
                    Movie = m.As<Movie>(),
                    Actors = a.CollectAsDistinct<Actor>()
                });

            var model = (await query.ResultsAsync).SingleOrDefault();

            if (model == null) throw new KeyNotFoundException();

            var movie = new MovieWithActors
            {
                Movie = model.Movie,
                Actors = model.Actors.OrderBy(x => x.name)
            };

            return base.View(movie);
        }
    }
}