SELECT SUM(new_cases) as TotalCases,SUM(cast(new_deaths as int)) as TotalDeathNumber, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as ThePercentageofDeathRate
FROM CovidAnalysis..CovidOlumorani 
WHERE continent is not null
ORDER BY 1,2



SELECT location,SUM(cast(new_deaths as int)) as TotalDeathCount FROM CovidAnalysis..CovidOlumorani
WHERE continent is null
and location not in('World', 'European Union', 'International')
GROUP BY location
ORDER BY TotalDeathCount desc



SELECT location, population, MAX(total_cases) as HighestInfectionCount, MAX(total_cases/population)*100 PercentPopulationInfected
FROM CovidAnalysis..CovidOlumorani 
GROUP BY location,population
ORDER BY PercentPopulationInfected desc



SELECT location, population,date, MAX(total_cases) as HighestInfectionCount, MAX(total_cases/population)*100 PercentPopulationInfected
FROM CovidAnalysis..CovidOlumorani 
GROUP BY location,population,date
ORDER BY PercentPopulationInfected desc