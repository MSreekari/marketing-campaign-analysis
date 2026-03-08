-- 3. KPIs 

-- 1. CTR - Click through Rate 
-- Percentage of users who clicked after seeing the ad 
SELECT 
SUM(clicks) / SUM(impressions) AS ctr 
from marketing_campaign_cleaned; 

-- 2. CVR - Conversion Rate 
-- Percentage of clicks that resulted in conversions 
SELECT 
SUM(conversions) / SUM(clicks) AS cvr 
from marketing_campaign_cleaned; 

-- 3. CPC - Cost Per Click 
-- Money spent on one click 
SELECT 
SUM(spend) / SUM(clicks) AS cpc 
from marketing_campaign_cleaned; 

-- 4. CPA - Cost Per Acquisition 
-- Money spent to acquire one customer 
SELECT 
SUM(spend) / SUM(conversions) AS cpa 
from marketing_campaign_cleaned; 

-- 5. Conversion Efficiency 
SELECT 
SUM(conversions) / SUM(impressions) AS conv_efficiency 
from marketing_campaign_cleaned; 




























































































































































































































