using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;
using Neo4jBff.AspNet.Models;
using Neo4jClient;

namespace Neo4jBff.AspNet.Controllers
{
    public class ActorController : Controller
    {
        private readonly GraphClient _graphClient;

        public ActorController(GraphClient graphClient)
        {
            if (graphClient == null) throw new ArgumentNullException(nameof(graphClient));
            this._graphClient = graphClient;
        }

        // GET: Actor
        public async Task<ActionResult> Index()
        {
            var query = this._graphClient.Cypher
                .Match("(a:Person)")
                .Return((a) => a.As<Actor>());

            IEnumerable<Actor> actors = await query.ResultsAsync;

            return base.View(actors.OrderBy(x => x.name));
        }

        // GET: Actor/{name}
        public async Task<ActionResult> Details(string id)
        {
            var query = this._graphClient.Cypher
                .Match("(a:Person)")
                .Where("a.name = {name}")
                .WithParams(new { name = id })
                .OptionalMatch("(a)-[:ACTED_IN]->(m:Movie)")
                .OptionalMatch("(m)<-[:ACTED_IN]-(o:Person)")
                .Where("a <> o")
                .Return((a, m, o) => new
                {
                    Actor = a.As<Actor>(),
                    Movies = m.CollectAsDistinct<Movie>(),
                    CoActors = o.CollectAsDistinct<Actor>()
                })
                .Limit(1);

            var model = (await query.ResultsAsync).SingleOrDefault();

            if (model == null) throw new KeyNotFoundException();

            var actor = new ActorWithMovies
            {
                Actor = model.Actor,
                Movies = model.Movies.OrderBy(x => x.title),
                CoActors = model.CoActors.OrderBy(x => x.name)
            };

            return base.View(actor);
        }
    }
}