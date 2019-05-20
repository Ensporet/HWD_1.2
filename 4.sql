use hw01;
Select* from projects;

alter table projects ADD column cost int (10);
show tables;

update projects pr 
inner join(
Select pr.id_projects ,pr.name_projects, Sum(de.salary) summa from projects pr
join tiesWorksProjects ti on ti.id_projects = pr.id_projects
join developers de on de.id_developers = ti.id_developers
group by ti.id_projects 
) su on su.id_projects = pr.id_projects
set pr.cost =  su.summa
where pr.id_projects > 0; 
;

Select* from projects;

-- 15 ! safe update development program option