SELECT 
region,
  Country,
  Total_Revenue,
  dense_rank() over (partition by region order by Total_Revenue desc) rank
   FROM `exalted-gamma-331803.dasetTarea.Sales_Records` LIMIT 1000