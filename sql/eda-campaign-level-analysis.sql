-- 5. Campaign-Level Analysis 

-- Top campaigns by conversions 
SELECT campaign_name, 
SUM(conversions) AS conversions 
from marketing_campaign_cleaned 
GROUP BY campaign_name 
ORDER BY conversions DESC; 

-- High Spend vs Low-Return Campaigns 
SELECT campaign_name, 
SUM(spend) AS spend, 
SUM(conversions) AS conversions, 
SUM(spend) / SUM(conversions) AS cpa 
from  marketing_campaign_cleaned 
GROUP BY campaign_name 
ORDER BY spend DESC; 

-- Most efficient campaigns 
SELECT campaign_name, 
SUM(conversions) AS conversions, 
SUM(spend) / SUM(conversions) AS cpa 
from marketing_campaign_cleaned 
GROUP BY campaign_name 
ORDER BY cpa ASC; 









































































































































































































