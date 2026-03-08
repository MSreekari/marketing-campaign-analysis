-- 3. Channel Analysis 

-- 1. Channel Distribution 
-- How many campaigns per channel 
SELECT channel, 
COUNT(*) AS total_campaigns 
from marketing_campaign_cleaned 
GROUP BY channel 
ORDER BY total_campaigns DESC; 

-- Found an empty value in the channel column 
SELECT COUNT(channel) 
from marketing_campaign_cleaned 
WHERE channel = ''; 

UPDATE marketing_campaign_cleaned 
SET channel = 'Unkown' 
WHERE channel = ''; 

-- 2. Channel Reach - Impressions by channel 
-- Which platform reaches the largest audience 
SELECT channel, 
SUM(impressions) AS total_impressions 
from marketing_campaign_cleaned 
GROUP BY channel 
ORDER BY total_impressions DESC; 

-- 3. Channel Engagement - Clicks by channel 
-- Which platform drives the most engagement 
SELECT channel, 
SUM(clicks) AS total_clicks 
from marketing_campaign_cleaned
GROUP BY channel 
ORDER BY total_clicks DESC; 

-- 4. Channel Conversions - Business Outcome 
-- Which plaform generates the most customers 
SELECT channel, 
SUM(conversions) AS total_conversions 
from marketing_campaign_cleaned 
GROUP BY channel 
ORDER BY total_conversions DESC; 

-- 5. Channel Spend - Budget Allocation 
-- Which platform receives the most marketing budget 
SELECT channel, 
SUM(spend) AS total_spend 
from marketing_campaign_cleaned 
GROUP BY channel 
ORDER BY total_spend DESC; 

-- 6. Channel CTR - Engangement Efficiency 
-- Which platfrom has the highest ctr 
SELECT channel, 
SUM(clicks) / SUM(impressions) AS ctr 
from marketing_campaign_cleaned 
GROUP BY channel 
ORDER BY ctr DESC; 

-- 7. Channel Conversion Rate (CVR) 
-- Which platform has the highest conversion rate 
SELECT channel, 
SUM(conversions) / SUM(clicks) AS cvr 
from marketing_campaign_cleaned 
GROUP BY channel 
ORDER BY cvr DESC; 

-- 8. Channel Cost Per Click (CPC) 
-- Which platform has the lowest CPC 
SELECT channel, 
SUM(spend) / SUM(clicks) AS cpc 
from marketing_campaign_cleaned 
GROUP BY channel 
ORDER BY cpc ASC; 

-- 9. Channel Cost Per Acquisition (CPA) 
-- Which platform has the lowest CPA 
SELECT channel, 
SUM(spend) / SUM(conversions) AS cpa 
from marketing_campaign_cleaned 
GROUP BY channel 
ORDER BY cpa ASC; 

-- 10. Full Channel Performance 
SELECT channel, 
COUNT(*) AS campaigns, 
SUM(impressions) AS impressions, 
SUM(clicks) AS clicks, 
SUM(conversions) AS conversions, 
SUM(spend) AS spend, 
SUM(clicks) / SUM(impressions) AS ctr, 
SUM(conversions) / SUM(clicks) AS cvr, 
SUM(spend) / SUM(clicks) AS cpc, 
SUM(spend) / SUM(conversions) AS cpa 
from marketing_campaign_cleaned 
GROUP BY channel; 










