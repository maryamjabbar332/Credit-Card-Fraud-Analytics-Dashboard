
-- Credit Card Fraud Analytics SQL
-- Class = 1 means Fraud, Class = 0 means Normal

-- 1. Executive KPIs
SELECT
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
    ROUND(100.0 * SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate_percent,
    SUM(Amount) AS total_transaction_value,
    SUM(CASE WHEN Class = 1 THEN Amount ELSE 0 END) AS fraud_loss_value,
    AVG(CASE WHEN Class = 1 THEN Amount END) AS average_fraud_amount,
    AVG(CASE WHEN Class = 0 THEN Amount END) AS average_legit_amount
FROM creditcard;

-- 2. Fraud rate by amount band
SELECT
    CASE
        WHEN Amount <= 100 THEN 'Low (0-100)'
        WHEN Amount <= 500 THEN 'Medium (101-500)'
        ELSE 'High (500+)'
    END AS amount_band,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
    ROUND(100.0 * SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate_percent,
    SUM(CASE WHEN Class = 1 THEN Amount ELSE 0 END) AS fraud_loss_value
FROM creditcard
GROUP BY
    CASE
        WHEN Amount <= 100 THEN 'Low (0-100)'
        WHEN Amount <= 500 THEN 'Medium (101-500)'
        ELSE 'High (500+)'
    END
ORDER BY fraud_rate_percent DESC;

-- 3. Fraud trend by hour of day
SELECT
    CAST((Time / 3600) AS INT) % 24 AS hour_of_day,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
    ROUND(100.0 * SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate_percent
FROM creditcard
GROUP BY CAST((Time / 3600) AS INT) % 24
ORDER BY hour_of_day;

-- 4. Top highest-value confirmed fraud transactions
SELECT TOP 25
    Time,
    Amount,
    Class
FROM creditcard
WHERE Class = 1
ORDER BY Amount DESC;
