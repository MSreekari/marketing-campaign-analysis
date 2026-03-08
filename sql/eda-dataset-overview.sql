-- 1. Dataset Overview 
SELECT * 
from marketing_campaign_cleaned; 

-- Find the total campaigns 
SELECT 
COUNT(*) AS total_campaigns 
from marketing_campaign_cleaned; 

-- Find all the channels used for marketing 
SELECT 
DISTINCT channel 
from marketing_campaign_cleaned; 

-- Find the seasons 
SELECT 
DISTINCT season
from marketing_campaign_cleaned; 

-- Find active campaigns 
SELECT active, 
COUNT(*) AS active_campaigns 
from marketing_campaign_cleaned 
GROUP BY active; 
























