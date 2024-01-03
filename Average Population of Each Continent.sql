select distinct country.continent,floor(avg(city.population)) from country 
join city on country.code=city.countrycode
group by country.continent;