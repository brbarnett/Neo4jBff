using System.Collections.Generic;

namespace Neo4jBff.AspNet.Models
{
    public class MovieWithActors
    {
        public Movie Movie { get; set; }

        public IEnumerable<Actor> Actors { get; set; } 
    }
}