using System.Collections.Generic;

namespace Neo4jBff.AspNet.Models
{
    public class ActorWithMovies
    {
        public Actor Actor { get; set; }

        public IEnumerable<Movie> Movies { get; set; }

        public IEnumerable<Actor> CoActors { get; set; }
    }
}