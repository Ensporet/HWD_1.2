use hw01;
select  sk.pl, Sum(de.salary) maxCost FROM developers de , SKILLS sk, tiesProgramers ti
where ti.id_developers = de.id_developers and ti.id_skills = sk.id_skills and sk.pl = 'Java';