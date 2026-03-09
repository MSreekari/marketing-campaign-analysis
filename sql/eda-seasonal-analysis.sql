-- 6. Seasonal Analysis 

SELECT 
season,
SUM(spend) AS total_spend,
SUM(impressions) AS impressions,
SUM(clicks) AS clicks,
SUM(conversions) AS conversions,
SUM(clicks) * 1.0 / SUM(impressions) AS ctr,
SUM(conversions) * 1.0 / SUM(clicks) AS cvr,
SUM(spend) / SUM(clicks) AS cpc,
SUM(spend) / SUM(conversions) AS cpa
FROM marketing_campaign_cleaned
WHERE impressions > 0 
AND clicks > 0 
AND conversions > 0
GROUP BY season
ORDER BY cpa; 