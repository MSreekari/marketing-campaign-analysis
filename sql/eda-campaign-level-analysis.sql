-- 5. Campaign-Level Analysis 

-- Top campaigns by conversions 
SELECT campaign_name, 
SUM(conversions) AS conversions 
from marketing_campaign_cleaned 
GROUP BY campaign_name 
ORDER BY conversions DESC; 

-- Spend vs Acquisition  
SELECT campaign_name, 
SUM(spend) AS spend, 
SUM(conversions) AS conversions, 
SUM(spend) / SUM(conversions) AS cpa 
from  marketing_campaign_cleaned 
GROUP BY campaign_name 
ORDER BY spend DESC; 

-- Most efficient campaigns - Low CPA values 
SELECT campaign_name, 
SUM(conversions) AS conversions, 
SUM(spend) / NULLIF(SUM(conversions), 0) AS cpa 
from marketing_campaign_cleaned 
WHERE spend > 0 
AND conversions > 0 
GROUP BY campaign_name 
ORDER BY conversions DESC, cpa ASC;   

-- Drill Down analysis - Campaign Performance inside top channels 
SELECT campaign_name, 
channel, 
SUM(spend) AS spend, 
SUM(conversions) AS conversions, 
SUM(spend) /SUM(conversions) AS cpa 
from marketing_campaign_cleaned 
WHERE spend > 0 
AND conversions > 0 
AND channel IN ('Facebook', 'TikTok', 'Instagram') 
GROUP BY campaign_name, channel 
ORDER BY cpa ASC, conversions DESC LIMIT 10; 









































































































































































































