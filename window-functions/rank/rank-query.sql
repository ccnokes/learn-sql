-- rank()
SELECT
  *,
  RANK() OVER (
    ORDER BY
      salary DESC
  ) salary_rank
FROM
  employee;

-- that yields the same result as this simpler query because the whole result set is treated as the same partition
SELECT
  *
FROM
  employee
ORDER BY
  salary DESC;

-- but we can use a partition to get sub-groupings without aggregation
SELECT
  *,
  RANK() OVER (
    PARTITION BY department
    ORDER BY
      salary DESC
  ) salary_rank
FROM
  employee;

-- What if we want to have the same report but with all the top-ranking employees first, then all second-ranking employees, and so on?
SELECT
  *,
  RANK() OVER (
    PARTITION BY department
    ORDER BY
      salary DESC
  ) salary_rank_dept
FROM
  employee
ORDER BY
  salary DESC,
  salary_rank_dept;

-- add salary_metric which shows how far an employee's salary is from the highest paid salary in their dept. 
SELECT
  *,
  salary / MAX(salary) OVER (
    PARTITION BY department
    ORDER BY
      salary DESC
  ) AS salary_metric
FROM
  employee
ORDER BY
  salary_metric;