select 
min(if(occupation='Doctor',name,null)) as 'Doctor',
min(if(occupation='Professor',name,null)) as 'Professor',
min(if(occupation='Singer',name,null)) as 'Singer',
min(if(occupation='Actor',name,null)) as 'Actor'
from (select *,row_number() over (partition by occupation order by name) as tmp from occupations) as tmpr group by tmp;