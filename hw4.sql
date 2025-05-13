
-- CTE: Facebook data 

WITH facebook_data AS (
  SELECT
    fbd.ad_date,
    'Facebook Ads' AS media_source,
    fc.campaign_name,
    fa.adset_name,
    fbd.spend,
    fbd.impressions,
    fbd.clicks,
    fbd.value
  FROM facebook_ads_basic_daily fbd
  LEFT JOIN facebook_adset fa ON fbd.adset_id = fa.adset_id
  LEFT JOIN facebook_campaign fc ON fbd.campaign_id = fc.campaign_id
),

-- CTE: Facebook and Google Ads

all_data AS (
  SELECT
    ad_date,
    media_source,
    campaign_name,
    adset_name,
    spend,
    impressions,
    clicks,
    value
  FROM facebook_data

  UNION ALL

  SELECT
    gad.ad_date,
    'Google Ads' AS media_source,
    gad.campaign_name,
    NULL AS adset_name,
    gad.spend,
    gad.impressions,
    gad.clicks,
    gad.value
  FROM google_ads_basic_daily gad
)

-- Final aggregations 

SELECT
  ad_date,
  media_source,
  campaign_name,
  adset_name,
  SUM(spend) AS total_spend,
  SUM(impressions) AS total_impressions,
  SUM(clicks) AS total_clicks,
  SUM(value) AS total_value
FROM all_data
GROUP BY
  ad_date,
  media_source,
  campaign_name,
  adset_name;