select concat(name,"(",left(occupation,1),")") as nameo from occupations
union
select concat("There are a total of ",count(occupation)," ",lower(occupation),"s.") as x from occupations group by occupation order by nameo asc;