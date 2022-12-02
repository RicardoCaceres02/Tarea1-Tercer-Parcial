SELECT 
name,
gender,
sum(number) as sumatoria_number
FROM `bigquery-public-data.usa_names.usa_1910_2013`
group by name, gender