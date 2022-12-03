SELECT
date,
state,
tests_total,
cases_positive_total,
sum(tests_total) over(partition by state) as suma_total
from  bigquery-public-data.covid19_covidtracking.summary