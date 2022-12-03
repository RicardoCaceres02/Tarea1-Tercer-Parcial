with vistas as (
  select
    channelGrouping,
    date,
    sum(totals.pageviews) pageviews
  from `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`
    group by 
    channelGrouping,
    date 
)
  select 
  channelGrouping,
  pageviews,
  (pageviews  sum(pageviews) over()) porcentaje_del_total,
  avg(pageviews) over (partition by date) promedio
from vistas
group by
  channelGrouping,
  pageviews,
  date
order by porcentaje_del_total desc