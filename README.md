# Portfolio
Analytics portfolio


# Project 1: British Airways Data Analytics Internship Project
This project was part of my virtual internship with Forage for British Airways. I worked on analyzing customer feedback to find ways to improve the airline’s services and overall customer experience.


## Task 1 : Web Scraping to gain company insights
* **Collected Data**: Scraped customer reviews from [Skytrax](https://www.airlinequality.com/) using Python and BeautifulSoup.
* **Cleaned the Data**: Processed and cleaned the data to make sure it was ready for analysis (handled missing info, standardized formats, etc.).
* **Analyzed Sentiment**: Used sentiment analysis to figure out what customers were happy or unhappy about.
* **Visualized Trends**: Created clear charts and graphs to highlight key trends in customer feedback.
* **Suggested Improvements**: Based on the analysis, I offered some recommendations on how British Airways could improve their service.
  
![](https://github.com/L0bar/Portfolio/blob/main/images/download%20(1).png)
From the wordcloud above, we can see the key of topics in customer review are flight, seat , service and time. showing that people are actively talking about their experience on the plane and the staff.

![](/images/pie.png)
  
## Tools I Used
* *Python:* For everything from scraping to analysis.
* *Libraries*: Pandas, NumPy, BeautifulSoup (for data collection and cleaning), Matplotlib, Seaborn (for creating visualizations).
* *Notebook:* Jupyter Notebook for organizing and running the code.

  
## Task 2: Predictive Modeling for Customer Acquisition
* **Data Collection:** Collected customer demographic and booking data.
* **Data Preprocessing**: Cleaned and prepared the data for modeling.
* **Predictive Modeling**: Built models to forecast customer bookings using Logistic Regression, Random Forest, etc.
* **Insights**: Identified customer segments likely to book flights and provided targeted marketing recommendations.

 ![](/images/download%20(2).png)
 
## Tools Used:
* *Python (Pandas, Scikit-learn)*
* *Machine Learning algorithms* 
* *Jupyter Notebook* for implementation



# Project 2. London Bike Rides Analysis - > Tableau project 

## About the Project

For this project, I developed a Tableau dashboard to analyze cycling patterns in London. The dataset includes information on bike ride durations, start and end locations, and times of use. The aim of the project was to identify peak usage periods, popular routes, and general bike traffic trends throughout the city.

I gathered bike ride data for London, focusing on details like trip duration, start and end locations, and the number of riders. Then cleaned and processed the raw data to remove any inaccuracies, ensuring the dataset was ready for analysis. Next step involves analyzing various patterns like peak hours, popular routes, and bike usage across different times of the day and year. Finnaly I created visualizations to present the results clearly and make it easier to understand the bike usage trends in London.

## Tools I Used
* * Python: I used Python to handle the data processing and analysis.*
* *Libraries: Pandas, NumPy, Matplotlib, and Seaborn for data manipulation and creating visualizations.*
* *Jupyter Notebook: I worked in Jupyter Notebook to document the analysis and run my code.*

## Insights from the Analysis

* The majority of bike rides occur during early morning and late afternoon, coinciding with work commute times.
* Bike usage significantly increases during warmer months, particularly in the summer, with a noticeable drop in colder months.
* Several central London stations serve as primary hubs for bike rides, with heavy traffic during the work week.

# Project 3 Data Cleaning with SQL
Overview
This project involved cleaning a raw dataset of Nashville housing data to prepare it for analysis. The dataset contained various inconsistencies and missing information, which required several data cleaning steps to ensure the data was structured and accurate for further use.

The goal of this project was to demonstrate my skills in data cleaning and preprocessing, which are critical steps in any data analytics pipeline. This project was completed using SQL and involved tasks such as handling missing values, correcting data types, and standardizing formats.

What I Did
Handled Missing Data: I identified missing entries in key columns, applied strategies to fill in or drop incomplete records where necessary.
Corrected Data Types: Ensured that data types were consistent across the dataset, such as converting numerical data stored as text back into numeric types.
Standardized Dates and Formats: Ensured that date columns and other data formats were consistent throughout the dataset to make future analysis easier.
Removed Duplicates: Found and removed duplicate records that could skew the results of any subsequent analysis.
Addressed Outliers: Identified and addressed potential outliers that could affect the accuracy of analysis.
Tools I Used
SQL: The primary language used to clean the dataset. All data transformation tasks, including handling missing values, removing duplicates, and standardizing formats, were performed with SQL queries.
PostgreSQL: I used PostgreSQL to store and manipulate the data.
Jupyter Notebook: For documenting the SQL queries and steps involved in cleaning the data.

# Project 4. Housesales Analysis - > Tableau project

Overview
In this project, I developed a Tableau dashboard to analyze house sales in King County, Washington. Inspired by Mo Chen’s approach to analyzing house sales data, I aimed to visualize key insights such as housing prices, locations, and factors affecting property value. The dataset includes information on house features like square footage, number of bedrooms and bathrooms, year built, and sale price, giving a comprehensive view of the real estate market in King County.

This project allowed me to practice data visualization and analysis using Tableau, and also provided insights into housing trends that could be useful for homebuyers, real estate agents, and investors.

What I Did
Data Cleaning & Preprocessing: Cleaned and transformed the dataset to ensure the data was ready for visualization. This included handling missing values, normalizing columns, and correcting data types.
Dashboard Creation: I used Tableau to create an interactive dashboard that highlights key housing metrics, enabling users to explore trends in sale prices, house sizes, and location-based insights.
Insight Generation: I analyzed the impact of different features, such as the number of bedrooms, lot size, and proximity to the city center, on house prices to provide data-driven insights into King County's housing market.
Tools I Used
Tableau: The primary tool used for data visualization. Tableau allowed me to build a dynamic, interactive dashboard that presents the insights in a user-friendly format.
Python (for data prep): I used Python and libraries like Pandas to clean and prepare the dataset before importing it into Tableau.
Tableau Public: I used Tableau Public to share the project online for others to explore.
Key Insights from the Dashboard
Price Distribution: Most houses in King County fall within the $300,000 - $600,000 range, with some high-end properties selling for over a million dollars, particularly near waterfront areas.
Impact of Location: Houses closer to downtown Seattle and near the water tend to have significantly higher sale prices, indicating the importance of location in real estate pricing.
Size and Price Correlation: As expected, larger houses (in terms of square footage) tend to sell for higher prices. However, there are exceptions where location and other factors increase value.
Renovation Effect: Homes that were renovated, especially older properties, typically saw a higher sale price than non-renovated properties of a similar age.
