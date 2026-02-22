-- ראיון דמה 1 — מוצר בונה אתרים (Website builder)
-- טבלה: user_events
-- עמודות:
--   user_id (int), visit_date (date), created_site_date (date, nullable),
--   source (organic/email/paid_search/social), device (desktop/mobile/tablet), country (code)
--
-- זה קובץ **טמפלייטים** (לא פתרונות מלאים).
-- דיאלקטים:
--   - PostgreSQL: העדיפות בטמפלייטים.
--   - BigQuery: גרסאות שקולות מופיעות בהערות.


/* ============================================================
   1.a — SQL קל
   עבור כל חודש, מצאו את התאריך הראשון שבו מצטבר 20+ משתמשים שיצרו אתר באותו חודש.
   דרישה: Window Function / cumulative sum (PARTITION BY חודש, ORDER BY יום).
   ============================================================ */

-- PostgreSQL (template)
WITH daily_created AS (
  SELECT
    created_site_date::date AS day,
    date_trunc('month', created_site_date)::date AS month,
    COUNT(DISTINCT user_id) AS created_users
  FROM user_events
  WHERE created_site_date IS NOT NULL
  GROUP BY 1, 2
),
cume AS (
  SELECT
    month,
    day,
    created_users,
    -- TODO: cumulative sum per month
    SUM(created_users) OVER (
      PARTITION BY month
      ORDER BY day
      ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS created_users_cume
  FROM daily_created
)
SELECT
  month,
  -- TODO: first day each month where cume >= 20
  day AS date_passed_20,
  created_users_cume
FROM cume
WHERE created_users_cume >= 20
-- TODO: keep only the first qualifying day per month (ROW_NUMBER / DISTINCT ON)
ORDER BY month, date_passed_20;


-- BigQuery (Standard SQL) — template
-- WITH daily_created AS (
--   SELECT
--     DATE(created_site_date) AS day,
--     DATE_TRUNC(DATE(created_site_date), MONTH) AS month,
--     COUNT(DISTINCT user_id) AS created_users
--   FROM user_events
--   WHERE created_site_date IS NOT NULL
--   GROUP BY 1, 2
-- ),
-- cume AS (
--   SELECT
--     month,
--     day,
--     created_users,
--     SUM(created_users) OVER (
--       PARTITION BY month
--       ORDER BY day
--       ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
--     ) AS created_users_cume
--   FROM daily_created
-- )
-- SELECT
--   month,
--   day AS date_passed_20,
--   created_users_cume
-- FROM cume
-- WHERE created_users_cume >= 20
-- ORDER BY month;


/* ============================================================
   1.b — SQL בינוני
   חשבו מטריקת המרה **חודשית**.
   המלצה (אבל לא חובה): created_sites_in_month / visits_in_month.
   ============================================================ */

-- PostgreSQL (template)
WITH monthly AS (
  SELECT
    date_trunc('month', visit_date)::date AS month,
    COUNT(*) AS visits,
    COUNT(*) FILTER (WHERE created_site_date IS NOT NULL) AS created_sites
  FROM user_events
  GROUP BY 1
)
SELECT
  month,
  visits,
  created_sites,
  (created_sites::numeric / NULLIF(visits, 0)) AS conversion_rate
FROM monthly
ORDER BY month;


-- BigQuery (Standard SQL) — template
-- WITH bounds AS (
--   SELECT
--     DATE_TRUNC(MIN(DATE(visit_date)), MONTH) AS min_month,
--     DATE_TRUNC(MAX(DATE(visit_date)), MONTH) AS max_month
--   FROM user_events
-- ),
-- monthly AS (
--   SELECT
--     DATE_TRUNC(DATE(visit_date), MONTH) AS month,
--     COUNT(*) AS visits,
--     COUNTIF(created_site_date IS NOT NULL) AS created_sites
--   FROM user_events
--   GROUP BY 1
-- )
-- SELECT
--   month,
--   visits,
--   created_sites,
--   SAFE_DIVIDE(created_sites, visits) AS conversion_rate,
-- FROM monthly
-- ORDER BY month;

