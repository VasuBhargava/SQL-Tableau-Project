

Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
From [vasu project 1]..CovidDeaths
where continent is not null 
order by 1,2



--------------------------------------------------------------------------------------------------------------------------



select  continent, sum(cast(new_deaths as int))Total_Death_Count  from [vasu project 1]..CovidDeaths
where continent is not null
Group by continent
order by continent




--------------------------------------------------------------------------------------------------------------------------



 -- Countries with Highest Infection Rate compared to Population

 select location, population, max (total_cases) as Heighest_infected,max((total_cases/population))*100 as percent_total_population_infected
from [vasu project 1]..CovidDeaths
Group by location,population
order by percent_total_population_infected desc 



--------------------------------------------------------------------------------------------------------------------------



Select Location, Population,date, MAX(total_cases) as Heighest_infected,  Max((total_cases/population))*100 as percent_total_population_infected
From [vasu project 1]..CovidDeaths
--Where location like '%states%'
Group by Location, Population, date
order by percent_total_population_infected desc





