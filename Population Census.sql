select sum(c.population) as ans from city c
join country co
on c.countrycode=co.code
where co.continent='Asia';