# Customer Shopping Behavior Analysis

## 📊 Project Overview
This project analyzes transactional data to uncover spending patterns, customer segments, and product preferences. By leveraging a full data pipeline—from Python-based ETL to SQL analysis and Power BI visualization—the study provides actionable insights into subscription behavior and revenue optimization.

## 🛠️  Tech Stack

### Exploratory Data Analysis (EDA)
* **Jupyter Notebook**: Primary environment for data cleaning and initial statistical testing.

### Data Processing & Engineering (ETL)
* **Python (Pandas)**: Used for data imputation, feature engineering, and standardization.
* **SQLAlchemy / PyODBC**: Established the connection to bridge Python dataframes with the SQL database.

### Database Management
* **SQL Server (SSMS)**: Central repository for storing and querying the cleaned dataset.
* **T-SQL**: Utilized for advanced analytical queries, window functions, and customer segmentation logic.

### Visualization & Reporting
* **Power BI**: Built an interactive dashboard to translate complex SQL results into business-ready insights.

---

## 🚀 Project Workflow

### Phase 1: Data Preparation & Cleaning
* **Audit**: Conducted a thorough check using `df.info()` and `.describe()` to understand data distributions and identify 37 missing values in the `Review Rating` column.
* **Imputation**: Handled missing `Review Rating` values using category-specific median imputation.
* **Optimization**: Standardized column names to `snake_case` and removed redundant features (e.g., `promo_code_used`) for a leaner dataset.
* **Feature Engineering**: Created an `age_group` column (binning) and calculated `purchase_frequency_days` to enable more granular analysis.

### Phase 2: ETL & Database Integration
* **Connection**: Configured an automated pipeline to export cleaned data from the Python environment to a relational database.
* **Integrity**: Verified schema constraints and data types during the migration to ensure high-quality data for downstream analysis.

### Phase 3: Analytical SQL Querying
* **Business Logic**: Authored complex scripts to solve 10 specific business questions, including gender-based revenue splits and shipping type comparisons.
* **Advanced Metrics**:
    * **Ranking**: Used `ROW_NUMBER()` to find the Top 3 most purchased products per category.
    * **Behavioral**: Identified "Discount-Dependent" products and high-spending discount users.
    * **Segmentation**: Classified the customer base into *New, Returning,* and *Loyal* segments based on historical frequency.

### Phase 4: Data Visualization & Strategy
* **Modeling**: Engineered the data model in Power BI to support interactive drilling by category and subscription status.
* **Final Output**: Transformed raw metrics into a strategic dashboard.

![Preview](https://github.com/nikitha-learning98/Customer-Trends-Data-Analysis-Python-SQL-PowerBI/blob/main/Customer_Behavior_Dashboard.png)

---

## 💡 Key Findings & Recommendations

### 📊 Key Insights
* **Revenue Leaders**: Male customers are currently the top spenders, generating more total revenue than female customers.
* **Shipping Habits**: There is no major difference in average spending between **Standard** and **Express** shipping. This means customers aren't necessarily buying more just because they want it faster.
* **The Subscription Gap**: Most of the company’s revenue comes from **non-subscribers**. More importantly, **repeat buyers are not yet subscribed**, which is a missed opportunity for guaranteed monthly income.
* **Top Products**: Identified the **Top 5 highest-rated products** and the **Top 3 products in every category** to show exactly what customers love most.
* **Discount Dependency**: Found 5 products that are almost always bought with a discount. This helps the business see which items might struggle to sell at full price.

### 🚀 Business Recommendations
* **Target Repeat Buyers**: Create a special "Loyalty-to-Subscriber" promotion. Since these customers already shop frequently, a small discount might convince them to sign up for a permanent subscription.
* **Marketing Focus**: Focus advertising on the **Top 5 highest-rated products** to attract new customers with items that have proven quality.
* **Optimize Shipping**: Since Express shipping doesn't increase order size, consider offering "Free Express Shipping" only for orders above a certain dollar amount to encourage bigger purchases.
* **Review Discount Strategy**: For the 5 "discount-dependent" products, try testing different marketing angles to see if they can sell without heavy price cuts, protecting the company's profit margins.

---

Reference: The dataset utilized in this project were sourced from a Youtube tutorial.

