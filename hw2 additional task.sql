SELECT
  campaign_id
FROM facebook_ads_basic_daily
GROUP BY campaign_id
HAVING SUM(spend) > 500000
ORDER BY ((SUM(value) - SUM(spend)) / NULLIF(SUM(spend), 0)) * 100 DESC
LIMIT 1;
