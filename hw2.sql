SELECT
  ad_date,
  campaign_id,
  SUM(spend) AS total_spend,
  SUM(impressions) AS total_impressions,
  SUM(clicks) AS total_clicks,
  SUM(leads) AS total_leads,
  SUM(value) AS total_value,
  SUM(leads) * 100.0 / NULLIF(SUM(clicks), 0) AS conversion_rate_percent,
  SUM(spend) / NULLIF(SUM(clicks), 0) AS CPC,
  (SUM(spend) / NULLIF(SUM(impressions), 0)) * 1000 AS CPM,
  (SUM(clicks) / NULLIF(SUM(impressions), 0)) * 100 AS CTR,
  ((SUM(value) - SUM(spend)) / NULLIF(SUM(spend), 0)) * 100 AS ROMI
FROM
  facebook_ads_basic_daily
GROUP BY
  ad_date,
  campaign_id
ORDER BY
  ad_date,
  campaign_id;
