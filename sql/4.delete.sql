DELETE FROM movies_actor
WHERE id=1;

SELECT * FROM movies_actor;

-- actor = Actor.objects.get(id=2)
-- actor => <Actor: Actor object (2)>
-- actor.delete() => (4, {'movies.Movie_actors': 3, 'movies.Actor': 1})