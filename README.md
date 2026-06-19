
# Credit Card Fraud Analytics Dashboard

## Project Overview
This project analyses a credit card transaction dataset to identify fraud trends, quantify fraud exposure, and build a dashboard suitable for fraud operations and financial crime reporting.

The dashboard is designed for fraud analyst, fraud prevention, and financial crime roles. It focuses on executive KPIs, transaction monitoring, risk segmentation, and investigation-ready insights.

## Dataset
- Total transactions: 284,807
- Fraud transactions: 492
- Fraud rate: 0.17%
- Total transaction value: 25,162,590.01
- Fraud loss value: 60,127.97

## Business Objectives
1. Monitor fraud exposure and confirmed fraud losses.
2. Identify high-risk transaction amount bands.
3. Analyse fraud patterns by time of day.
4. Support fraud investigation prioritisation.
5. Recommend fraud controls for operational teams.

## Key Insights
1. Fraud Exposure — Only 0.17% of transactions were fraudulent, demonstrating a highly imbalanced fraud detection environment where a small number of events can 
create significant financial risk.
2. Financial Impact — Despite representing a very small proportion of overall transactions, confirmed fraud losses exceeded £60K, highlighting the importance of 
effective monitoring and detection controls.
3. High-Risk Segments — Transaction amount and transaction timing emerged as key monitoring dimensions, providing opportunities for targeted controls and
investigation prioritisation.
4. Investigation Prioritisation — Risk-based segmentation enables fraud teams to focus on higher-risk transactions and improve operational efficiency.

## Analyst insight
In a 0.17% fraud-rate environment, prioritisation is everything. Risk-based segmentation lets investigators concentrate on the small slice of transactions that 
drives the majority of financial loss.

## Tools Used
- Python
- Pandas
- Plotly
- SQL
- Power BI / DAX
- Excel-compatible CSV outputs

## Dashboard Pages

### Page 1: Executive Fraud Overview
Key visuals:
- Total Transactions
- Fraud Transactions
- Fraud Rate
- Total Transaction Value
- Fraud Loss Value
- Average Fraud Amount
- Fraud vs Normal Transaction Count
- Fraud Trend by Hour

### Page 2: Fraud Investigation Hub
Key visuals:
- Fraud Loss by Amount Category
- Transaction Amount Distribution
- Amount vs Hour Investigation View
- Top Highest-Value Fraud Transactions

### Page 3: Risk Analytics
Key visuals:
- Fraud Rate by Amount Band
- Top Risk Indicators
- Fraud concentration by transaction value
- Suggested controls and monitoring rules

## Key Insights
- Fraud represents a very small share of transaction volume, but still creates measurable financial loss.
- Higher-value transactions should be prioritised for monitoring because they have greater loss exposure.
- Time-based fraud trends can help operational teams identify when fraud review queues may need stronger coverage.
- Amount bands, transaction timing, and model-risk indicators can be combined to improve rule-based monitoring.

## Recommended Fraud Controls
- Velocity checks for repeated high-value transactions.
- Amount threshold rules for unusually large transactions.
- Behavioural anomaly monitoring by transaction timing and amount.
- Investigation queue prioritisation using fraud risk indicators.
- Weekly KPI reporting for fraud rate, loss value, alerts, and review outcomes.


## Portfolio Summary
Designed an end-to-end fraud analytics dashboard using Python, SQL, and Power BI logic to monitor fraud exposure across 284K+ transactions. The project identifies fraud trends, financial loss exposure, high-risk amount bands, and investigation priorities, translating technical analysis into fraud-risk insights suitable for stakeholders.
