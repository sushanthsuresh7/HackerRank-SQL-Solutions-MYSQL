select h.hacker_id,h.name from submissions s 
join hackers h on s.hacker_id=h.hacker_id
join challenges c on c.challenge_id=s.challenge_id
join difficulty d on c.difficulty_level=d.difficulty_level
where s.score=d.score
group by h.hacker_id,h.name
having count(s.submission_id)>1
order by count(h.hacker_id) DESC, h.hacker_id;