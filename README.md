# cricket-analysis-project
# 🏏 IPL Data Analysis Project (2008–2026)

A comprehensive End-to-End Data Analysis project on the Indian Premier League (IPL) covering 18 seasons from 2008–2026.

This project demonstrates the complete Data Analytics workflow including:

- Data Extraction from 1,000+ JSON files
- Data Cleaning & Transformation
- MySQL Database Design
- Star Schema Data Modelling
- SQL Analysis
- Data Visualization using Power BI
- DAX Measures & Dashboard Creation

---

## 📌 Project Overview

The IPL generates massive amounts of ball-by-ball cricket data every season. This project analyzes over **295,732 deliveries across 1,243 matches** to uncover insights related to:

- Batting performance
- Bowling performance
- Team dominance
- Toss impact
- Venue behaviour
- Season-wise scoring trends
- Player achievements

---

## 📊 Dataset Information

| Attribute | Value |
|------------|---------|
| Source | Cricsheet.org |
| Seasons | 2008 – 2026 |
| Matches | 1,243 |
| Deliveries | 295,732+ |
| JSON Files | 1,000+ |
| Project Type | End-to-End Data Analysis |
| Status | Completed |

---

## 🛠️ Tools & Technologies

### Programming & Analysis
- Python
- Pandas
- JSON
- Matplotlib

### Database
- MySQL
- SQLAlchemy

### Business Intelligence
- Power BI
- DAX

### Development Environment
- Jupyter Notebook
- MySQL Workbench

---

## 📂 Project Workflow

### 1. Data Extraction
- Parsed 1,000+ JSON files
- Extracted match metadata
- Extracted innings and delivery-level information

### 2. Data Cleaning
- Fixed null values
- Corrected data types
- Removed inconsistencies
- Standardized team names
- Standardized venue names

### 3. Database Design
- Created MySQL database
- Implemented Star Schema
- Created Fact and Dimension tables

### 4. SQL Analysis
- Wrote analytical SQL queries
- Answered 10 business questions

### 5. Visualization
- Generated charts using Matplotlib
- Built interactive Power BI dashboard

---

## ⭐ Star Schema Design

### Fact Table
- fact_deliveries

### Dimension Tables
- dim_match
- dim_player
- dim_team
- dim_venue

---

## ❓ Business Questions Answered

### Batting Analysis
1. Who are the top run scorers?
2. Which batsmen hit the most sixes and fours?

### Bowling Analysis
3. Who are the top wicket takers?
4. Which bowlers are most economical in death overs?

### Team Analysis
5. Which team has the highest win count?
6. Which teams perform better while chasing vs defending?

### Match Analysis
7. Does winning the toss increase winning probability?

### Venue Analysis
8. What is the average first innings score by venue?

### Trend Analysis
9. How has scoring evolved across IPL seasons?

### Player Analysis
10. Which players have won the most Player of the Match awards?

---

## 🔥 Key Findings

### 🏏 Batting
- Virat Kohli is the highest run scorer in IPL history.
- Chris Gayle holds the record for most sixes.

### 🎯 Bowling
- Bhuvneshwar Kumar leads wicket-taking charts.
- Jasprit Bumrah and Rashid Khan are among the most economical death-over bowlers.

### 🏆 Team Performance
- Mumbai Indians have the highest overall win count.
- Chennai Super Kings closely follow.

### 🎲 Toss Impact
- Toss winners win approximately 51.56% of matches.
- Toss has only a marginal influence on match outcomes.

### 🏟️ Venue Insights
- Narendra Modi Stadium and Wankhede Stadium are among the highest-scoring venues.

### 📈 Scoring Trends
- Average first innings scores have increased significantly from 2008 to recent seasons.

### 🌟 Player Awards
- AB de Villiers leads Player of the Match awards.

---

## 🚧 Challenges Faced

### Team Name Inconsistencies
Examples:
- Delhi Daredevils → Delhi Capitals
- Kings XI Punjab → Punjab Kings
- Royal Challengers Bangalore → Royal Challengers Bengaluru

### Venue Name Variations
Multiple stadiums appeared under different names and formats.

### Large Dataset Handling
- 1,000+ JSON files
- 295,732+ delivery records

### MySQL Import Issues
Solved large CSV import problems using SQLAlchemy.

---

## 📊 Dashboard Features

### Page 1: Team & Match Overview
- Total Matches KPI
- Total Seasons KPI
- Team Analysis
- Toss Impact Analysis

### Page 2: Player & Venue Analysis
- Top Run Scorers
- Top Wicket Takers
- Player of the Match Analysis
- Venue Performance Analysis

---

## 💡 Skills Demonstrated

- Python Programming
- Data Cleaning
- Data Transformation
- SQL Query Writing
- Database Design
- Star Schema Modelling
- Data Visualization
- Power BI Development
- DAX Calculations
- Analytical Thinking
- Problem Solving

---

## 📁 Project Structure

```text
IPL-Data-Analysis/
│
├── data/
│   ├── matches_raw.csv
│   ├── deliveries_raw.csv
│   ├── matches_clean.csv
│   └── deliveries_clean.csv
│
├── sql/
│   ├── schema.sql
│   ├── data_cleaning.sql
│   └── analysis_queries.sql
│
├── notebooks/
│   └── IPL_Analysis.ipynb
│
├── dashboard/
│   └── IPL_Dashboard.pbix
│
├── charts/
│   └── analysis_visualizations.png
│
├── README.md
│
└── requirements.txt
