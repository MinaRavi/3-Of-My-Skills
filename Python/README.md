![baner py](https://github.com/user-attachments/assets/db3f9027-ede4-4d1b-b571-9056b5e5f312)
# Global Superstore - Exploratory Data Analysis (EDA)

This repository contains an Exploratory Data Analysis (EDA) project on the **Global Superstore** dataset. The goal of this project is to analyze the dataset, uncover meaningful insights, and present the findings visually.

## File Structure

- **`global-superstore-eda.ipynb`**: Jupyter Notebook containing the Python code, analysis, and visualizations.

## Tools and Libraries Used

The following Python libraries were used in this project:
- **`numpy`**: For numerical computations and handling array operations.
- **`pandas`**: For data manipulation, cleaning, and preparation.
- **`matplotlib.pyplot`** and **`seaborn`**: For data visualization and trend analysis.

## Analysis Breakdown

### 1. **Data Loading and Overview**
   - **Objective**: Load the dataset and perform an initial exploration.
   - **Methods**:
     - Loaded the dataset using `pandas`.
     - Displayed the first few rows using `head()` to understand its structure.
     - Checked data types, column names, and summary statistics using `info()` and `describe()`.

### 2. **Data Cleaning**
   - **Objective**: Ensure data quality for analysis.
   - **Steps Taken**:
     - Identified and handled missing values.
     - Renamed columns to improve readability.
     - Removed duplicates and validated data consistency.

### 3. **Exploratory Analysis**
   - **Objective**: Extract meaningful patterns and relationships in the data.
   - **Steps and Techniques**:
     - **Sales and Profit Analysis**:
       - Calculated total sales and profit metrics.
       - Visualized sales trends over time using line plots.
     - **Regional Performance**:
       - Grouped data by regions to analyze sales and profit distributions.
       - Used bar plots to compare regional performance.
     - **Category and Sub-Category Analysis**:
       - Aggregated data to study sales trends across product categories and subcategories.
       - Created heatmaps and bar plots for comparison.
     - **Customer Segmentation**:
       - Segmented customers based on sales, profit, and order count.
       - Explored trends within each customer segment using scatter plots and box plots.

### 4. **Data Visualization**
   - **Objective**: Present insights in a clear and visually appealing way.
   - **Visualization Techniques**:
     - **Bar Plots**: For categorical comparisons.
     - **Line Plots**: To visualize trends over time.
     - **Heatmaps**: To analyze correlations and performance metrics.
     - **Scatter Plots**: For identifying patterns and outliers.

### 5. **Insights and Findings**
   - Highlighted key observations from the analysis, including:
     - Seasonal trends in sales.
     - High-performing regions and product categories.
     - Customer behavior patterns and profitability insights.

## Dataset

The **[Global Superstore](https://www.kaggle.com/datasets/apoorvaappz/global-super-store-dataset)** dataset includes transactional data, covering various aspects such as sales, profit, region, product categories, and customer information.



## License

This project is licensed under the [MIT License](LICENSE). You are free to use, share, and modify the code as per the license terms.
