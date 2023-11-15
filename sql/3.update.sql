SELECT * FROM movies_actor
WHERE id=1;

UPDATE movies_actor
SET name='iron man'
WHERE id=1;

-- Actor.objects.get(id=1) => <Actor: Actor object (1)>
-- actor = Actor.objects.get(id=1)
-- actor.age => 26(현재나이)
-- actor.age = 50
-- actor.save()
-- actor.age => 50(바뀐나이