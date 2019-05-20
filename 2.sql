use hw01;

Select pr.name_projects, Sum(de.salary) summa from projects pr
join tiesWorksProjects ti on ti.id_projects = pr.id_projects
join developers de on de.id_developers = ti.id_developers
group by ti.id_projects 
order by summa desc limit 1
;
