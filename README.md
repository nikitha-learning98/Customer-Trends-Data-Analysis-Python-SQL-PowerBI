# Customer Shopping Behavior Analysis

## 1. Project Overview
This project analyzes transactional data to uncover spending patterns, customer segments, and product preferences. By leveraging a full data pipeline—from Python-based ETL to SQL analysis and Power BI visualization—the study provides actionable insights into subscription behavior and revenue optimization.

## 2. Tech Stack

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

## 3. Project Workflow

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
* **Final Output**: Transformed raw metrics into a strategic dashboard, culminating in business recommendations for loyalty programs and targeted marketing.




Reference: The dataset utilized in this project were sourced from a Youtube tutorial.

