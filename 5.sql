use hw01;

select pr.name_projects , pr.cost from projects pr 
join 
(select pr.id_projects , min(pr.cost) cost from projects pr) minCost on minCost.id_projects = pr.id_projects;