-- join : 테이블 두개를 합칠때 사용

-- 1번 유저가 작성한 모든 점수(Score)

-- django ver.
-- Score.objects.filter(user_id=1)
-- User.objects.get(id=1).score_set.all()

-- SQL ver.
-- SELECT movies_score.id FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id=1;

-- 1번 영화의 모든 카테고리

-- django ver.
-- Movie.objects.get(id=1).categories.all()

-- SQL ver.
-- SELECT * FROM movies_movie
-- JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category ON movies_category.id = movies_category_movies.category_id
-- WHERE movies_movie.id=1;

-- 1번 유저가 작성한 모든 점수의 평균

-- django ver.
-- User.objects.get(id=1).score_set.all().aggregate(Avg('value'))

-- SQL ver.
-- SELECT AVG(value) FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id=1;

-- drama 카테고리에 속한 모든영화

-- django ver.
-- Category.objects.get(name='drama').movies.all()

-- SQL ver.
-- SELECT * FROM movies_movie
-- JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category on movies_category.id = movies_category_movies.category_id
-- WHERE movies_category.name = 'drama';

-----------------------------------------------------------------------------------------------

-- group by : 특정한 테이블의 컬럼의 데이터가 겹칠때 묶어주는 역할

-- SELECT country, COUNT(*) FROM movies_user
-- GROUP BY country;
-- django ver.
-- User.objects.values('country').annotate(Count('id'))

-- 나라별 점수의 평균
-- django ver.
-- User.objects.values('country').annotate(Count('id'),Avg('score__value'))

-- SQL ver.
-- SELECT country, COUNT(*), AVG(value) FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- GROUP BY country;

