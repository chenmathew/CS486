select
  percentile_cont(0.25) within group (order by salary asc) as percentile_25,
  percentile_cont(0.50) within group (order by salary asc) as percentile_50,
  percentile_cont(0.75) within group (order by salary asc) as percentile_75
from agent;

select AVG(salary)
from agent;
select MODE(salary)
from agent;

select
  MODE() within group (order by salary asc) as mode
from agent;

SELECT salary, count(*)
FROM agent
GROUP BY salary
ORDER BY count(*) DESC
LIMIT 3;