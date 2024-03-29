select case when grades.grade < 8 then null else students.name end, 
grades.grade, students.marks from students
join grades on students.marks between grades.min_mark and grades.max_mark
order by grades.grade desc, students.name asc;