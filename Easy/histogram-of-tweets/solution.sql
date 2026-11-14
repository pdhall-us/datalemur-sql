with t1 as (select user_id, count(tweet_id) as ct
from tweets
where year(tweet_date)=2022
group by user_id)
select ct as tweet_bucket, count(user_id) as users_num
from t1
group by ct;