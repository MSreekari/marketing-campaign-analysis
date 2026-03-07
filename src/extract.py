import pandas as pd 

# Read the data 
df = pd.read_csv("data/raw/marketing_campaign_data_messy.csv") 
# print(df) 
print(df.shape)

# Find rows 
print(df.shape[0]) 

# Find columns 
print(df.shape[1]) 

# Find size of the dataframe 
print(df.size) 

# Before fix
print(df.columns.to_list) 

df.columns = df.columns.str.strip().str.lower().str.replace(' ', '_') 

# After fix 
print(df.columns.to_list) 

print(df['spend']) 

dirty_mask_spend = df['spend'].astype(str).str.contains(r'\$') 
df.loc[dirty_mask_spend, ['campaign_id', 'spend']].head(3) 