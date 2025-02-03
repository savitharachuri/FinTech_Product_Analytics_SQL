# FinTech Product Subscription Cancellation Analysis
## Executive Summary:
Facing a significant churn issue and major revenue loss, the company leadership wants deeper insights into the reasons behind subscription cancellations to inform future retention efforts. This analysis uses user-reported cancellation reasons to identify trends and provide business recommendations to support future retention.

## Business Problem:
Company leadership has noticed a big churn problem this year which has had a large negative impact to revenue, so they're planning a company-wide retention effort. However, we don't currently have any insights or reporting into why people are churning, so the analytics team has decided to analyze the user-reported data collected in the cancelation workflow within the product to see if there are any trends as to why users are cancelling.

## Methodology:
- Exploratory Data Analysis (EDA)
- Product Funnel Analysis
- Data Visualization

## Skills:
- SQL
- CTEs, CASE, Union, View creation
- Data visualization
- Data Wrangling
- Data Cleaning
- Data Science Notebook
- Snowflake Data warehouse
- Tableau for Data Visualization

## Results:

81.8% of users are selecting at least 1 additional cancelation reason (beyond the first required one), but most users are not selecting all 3 which suggests lack of interest and frustration for the user.
36.36% of users reported 'Not useful' as the primary (first) cancelation reason. The top choices for the primary reason were 'Not Useful', 'Expensive', 'Went to a competitor'.
<img width="1165" alt="Screenshot 2025-02-02 at 10 33 50 PM" src="https://github.com/user-attachments/assets/6f74a14f-f935-46f9-8bd8-99487d12f5e8" />

As the data consists from period 2022 to 2024, over time, here's how the cancelation reasons have changed: initially in 2022 highest (16%) cancelation reason was 'Not Useful' and by the beginning of 2024, the highest cancellation reason was 'Expensive'. 

<img width="1145" alt="Screenshot 2025-02-02 at 10 33 07 PM" src="https://github.com/user-attachments/assets/4e201362-dce7-4e3a-881c-bb635ffa314a" />


## Business Recommendations:

Since most users, have selected Expensive and Not Useful as the reasons to cancel, we should rollout better onboarding and provide more help early on in their subscription to ensure users and understanding the product and finding it useful. If they find the product more useful and valuable, they also many become less cost-sensitive to the value.
For cost conscious users, we could also launch a rescue tactic at the beginning of the cancelation workflow that offers them a large discount to stay and not cancel their subscription.
Since the most common cancelation reason for the secondary reason is Went to Competitor, we should research the market and ensure we're keeping up to date with industry trends.


## Next Steps:
Explore the engagement of canceled subscriptions and see how they interacted with the product. What features did they or did they not use? How often did they use the product? What if we compare them to non-cancelled subscriptions. Does anything stand out that could inform future retention efforts?
Work with the product manager to understand how we can improve the cancelation workflow by adding in rescue tactics and adding friction without increasing user frustration.
