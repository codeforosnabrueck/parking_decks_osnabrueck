sqlite3 opg_data.db

.output opg_data.csv
.headers on

select
  parking_ramps.name,
  date(access_time) as date,
  time(access_time) as time,
  free_capacity,
  total_capacity
from capacities
join parking_ramps
on parking_ramps.identifier = parking_ramp_identifier
order by parking_ramps.name, access_time;

.quit
