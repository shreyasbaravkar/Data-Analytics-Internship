# Task 5 - Exploratory Data Analysis (EDA) on Titanic Dataset

## Objective
Perform Exploratory Data Analysis (EDA) on the Titanic dataset to understand the data, identify patterns, detect missing values and outliers, and extract meaningful insights using statistical methods and visualizations.

---

## Dataset
- **Dataset:** Titanic Dataset
- **File:** `Titanic-Dataset.csv`

---

## Tools & Libraries
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- VS Code (Jupyter Notebook)

---

## Exploratory Data Analysis Performed

### 1. Data Exploration
- Loaded the dataset using Pandas
- Displayed the first few rows using `head()`
- Checked dataset information using `info()`
- Generated descriptive statistics using `describe()`
- Identified missing values using `isnull().sum()`
- Analyzed categorical columns using `value_counts()`

### 2. Data Visualization
Created the following visualizations:
- Histograms
- Boxplots
- Correlation Heatmap
- Pairplot
- Countplots

### 3. Insights
- Identified missing values in **Age**, **Cabin**, and **Embarked** columns.
- Observed that the **Fare** column contains several high-value outliers.
- Most passengers traveled in **3rd class**.
- Female passengers had a significantly higher survival rate than male passengers.
- Passengers traveling in **1st class** had a better chance of survival.
- The correlation heatmap showed:
  - Positive correlation between **Fare** and **Survived**
  - Negative correlation between **Pclass** and **Survived**

---

## Files Included

```
Task5_EDA_Titanic/
│
├── Task5_EDA_Titanic.ipynb
├── Titanic-Dataset.csv
└── README.md
```

---

## Learning Outcomes
- Data exploration using Pandas
- Handling missing values
- Statistical analysis of datasets
- Creating visualizations using Matplotlib and Seaborn
- Identifying trends, relationships, and outliers
- Summarizing findings from exploratory data analysis

---

## Conclusion

This project demonstrates the use of Exploratory Data Analysis (EDA) techniques to better understand the Titanic dataset. Through statistical summaries and visualizations, important patterns related to passenger survival, age, fare, and passenger class were identified. EDA provides valuable insights that help prepare the data for further analysis and machine learning models.

---

## Author

**Shreyas Baravkar**

Data Analytics Internship - Task 5
