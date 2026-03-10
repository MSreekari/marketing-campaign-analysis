# Marketing-Campaign Performance Analysis 

## 1. Project Overview 
This project analyzes marketing campaign performance across multiple digital channels to understand which platforms and campaigns drive the most efficient customer acquisition. Using SQL-based exploratory data analysis (EDA), key marketing metrics such as impressions, clicks, conversions, and spend were evaluated to measure campaign effectiveness.

The analysis focuses on three levels: channel performance, campaign-level efficiency, and seasonal trends. Key performance indicators including Click-Through Rate (CTR), Conversion Rate (CVR), Cost Per Click (CPC), and Cost Per Acquisition (CPA) were calculated to assess marketing efficiency.

The goal of this project is to identify high-performing channels, scalable campaigns, and cost-efficient marketing periods that can help optimize budget allocation and improve overall marketing strategy. 

## 2. Dataset Description 

THe dataset consists of the following columns - 
campaign_id 
campaign_name 
start_date 
end_date 
channel 
impressions 
clicks 
spend  
conversions  
active  
campaign_tag 

## 3. Data Cleaning and Perprocessing 

- Handling Missing Values
- Handling Invalid Values
- Standardizing Data
- Derived Columns

## 4. Dervied Columns 
Season is a dervied column from the campaign_name. 

## 5. KPIs Used 

CTR = clicks / impressions
CVR = conversions / clicks
CPC = spend / clicks
CPA = spend / conversions 

## 6. Analysis Performed 

1. Channel Analysis
2. Campaign-Level Analysis
3. Seasonal Analysis

## 7. Key Insights

**Channel Insights** : 
- Facebook and TikTok function as growth engines due to high reach and traffic volume.
- Instagram acts as a high-intent acquisition channel with the highest conversion rate and lowest CPA.

**Campaign Insights** : 
Q4_Winter_CMP-01118 drives the highest number of conversions while maintaining efficient CPA.

**Seasonal Insights** : 
Launch campaigns demonstrate the lowest CPA, indicating higher audience receptivity during these periods. 

## 8. Business Recommendations

Based on the channel, campaign, and seasonal performance analysis, several strategic recommendations can be made to optimize marketing effectiveness.

**1. Scale High-Performing Channels** : 
Facebook and TikTok generate the highest reach, clicks, and conversions, making them the primary growth engines for the marketing strategy.

**Recommendation** : 
- Continue allocating a large share of the marketing budget to these channels.
- Focus on scaling high-performing campaigns to maximize acquisition volume.

**2. Expand High-Intent Instagram Traffic** : 
Instagram demonstrates the highest conversion rate and lowest acquisition cost despite lower click volume. 

**Recommendation** : 
- Improve ad creative and audience targeting to increase CTR.
- This could unlock additional high-intent traffic while maintaining low CPA.

**3. Optimize Underperforming Campaigns** : 
Certain campaigns (particularly within TikTok) show higher CPA compared to the top-performing campaigns.

**Recommendation** : 
- Audit ad creatives and targeting strategies for these campaigns.
- Align campaign messaging with successful Instagram campaign strategies. 

**4. Prioritize Launch Periods** : 
Seasonal analysis shows that Launch campaigns deliver the lowest CPA, indicating stronger audience receptivity during these periods.

**Recommendation** : 
- Allocate higher marketing budgets during Launch cycles.
- Plan major campaign releases around these windows to maximize acquisition efficiency.

## 9. Tools and Technologies Used : 

- Python for data cleaning and preprocessing
- MySQL for performing EDA
- Power BI for dashboards and reporting

Overall, the analysis demonstrates how data-driven marketing evaluation can identify scalable growth channels, optimize campaign performance, and guide more efficient budget allocation. 









































