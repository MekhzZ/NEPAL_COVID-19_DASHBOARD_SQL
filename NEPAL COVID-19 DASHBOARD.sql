-- IMPORTED DATASET INTO "COVID-19" DATABASE AS "covid" TABLE


SELECT * FROM covid

-- total_cases and total_deaths of Nepal

SELECT location, MAX(total_cases) AS total_cases, MAX(total_deaths) AS total_deaths
FROM covid WHERE location = 'Nepal'
GROUP BY location

-- new_cases per day of Nepal

SELECT location, date, new_cases
FROM covid WHERE location = 'Nepal'
ORDER BY date

-- first day of confirmed cases of Nepal

SELECT TOP 1 location, date, new_cases
FROM covid WHERE location = 'Nepal' AND new_cases>0
ORDER BY date

-- last day of confirmed cases of Nepal

SELECT TOP 1 location, date, new_cases
FROM covid WHERE location = 'Nepal' AND new_cases>0
ORDER BY date DESC

-- new_deaths per day of Nepal

SELECT location, date, new_deaths
FROM covid WHERE location = 'Nepal'
ORDER BY date

-- first day of confirmed death of Nepal

SELECT TOP 1 location, date, new_deaths
FROM covid WHERE location = 'Nepal' AND new_deaths > 0
ORDER BY date

-- first day of vaccination

SELECT TOP 1 location,date 
FROM covid WHERE location='Nepal' AND total_vaccinations>0
ORDER BY date