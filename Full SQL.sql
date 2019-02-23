select short_name
	from edstats_country
	where income_group="Low income";

select series_code
	from edstats_series 
	where topic LIKE "%Literacy%";

select a.country_name, a.indicator_name, a.1993, a.2003, a.2013
from edstats_data a,
(select series_code
	from edstats_series 
	where topic LIKE "%Infrastructure: Communications%") AS b,
(select country_code
	from edstats_country
	where short_name="Burundi" OR short_name="Nepal" OR short_name="Togo") as c	
where a.indicator_code IN (b.series_code)
	AND a.country_code IN (c.country_code)
and a.2013 IS NOT NULL
ORDER BY a.2013 DESC, a.country_name DESC;

select a.country_name, a.indicator_name, a.1993, a.2003, a.2013
from edstats_data a,
(select series_code
	from edstats_series 
	where topic LIKE "%Economic Policy & Debt: National accounts: US$ at current prices: Aggregate indicators%") AS b,
(select country_code
	from edstats_country
	where short_name="Burundi" OR short_name="Nepal" OR short_name="Togo") as c	
where a.indicator_code IN (b.series_code)
	AND a.country_code IN (c.country_code)
and a.2013 IS NOT NULL
ORDER BY a.2013 DESC, a.country_name DESC;

select a.country_name, a.indicator_name, a.1993, a.2003, a.2013
from edstats_data a,
(select series_code
	from edstats_series 
	where topic LIKE "%Social Protection & Labor: Unemployment%") AS b,
(select country_code
	from edstats_country
	where short_name="Burundi" OR short_name="Nepal" OR short_name="Togo") as c	
where a.indicator_code IN (b.series_code)
	AND a.country_code IN (c.country_code)
and a.2013 IS NOT NULL
ORDER BY a.2013 DESC, a.country_name DESC;

