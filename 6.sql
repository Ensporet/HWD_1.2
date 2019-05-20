use hw01;

Select  pr.name_projects, (pr.cost/sizeDev.co) average_salary from projects pr
join
(Select ti.id_Projects , Count(*) co from tiesWorksProjects ti group by ti.id_projects) sizeDev on sizeDev.id_projects = pr.id_projects
join 
(select pr.id_projects , min(pr.cost) cost from projects pr) minCost on minCost.id_projects = pr.id_projects;