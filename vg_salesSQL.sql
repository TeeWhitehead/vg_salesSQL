# Video Game Sales 1980-2010
# Sales are in millions
# View Table
SELECT *
FROM vg_sales;

# How many games were released in each year?
SELECT release_year, COUNT(*) AS games
FROM vg_sales
GROUP BY release_year
ORDER BY games DESC;

# What were the global sales from 2000-2010?
SELECT release_year, SUM(global_sales)
FROM vg_sales
WHERE release_year BETWEEN 2000 AND 2010
GROUP BY release_year
ORDER BY release_year DESC;

# Top 5 selling games in North America
SELECT name, na_sales
FROM vg_sales
ORDER BY na_sales DESC
LIMIT 5;

# Which genre had the best sales in Japan?
SELECT genre, ROUND(SUM(jp_sales), 2) AS japan_sales
FROM vg_sales
GROUP BY genre
ORDER BY japan_sales DESC;

# Which Madden NFL game sold the best globally?
SELECT name, SUM(global_sales) AS sales
FROM vg_sales
WHERE name LIKE 'Madden%'
GROUP BY name
ORDER BY sales DESC;
