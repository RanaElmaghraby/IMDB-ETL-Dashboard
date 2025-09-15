Rana Elmaghraby — Movies Data Pipeline (ETL & Dashboard)
Project Summary

This project implements an end-to-end ETL pipeline and exploratory analysis for film and celebrity data collected from multiple sources:

Web-scraped data from IMDb (top celebrities, roles, works, seasons/years, top popular films, ratings, etc.).

Supplementary dataset from Kaggle (posters URLs and additional film metadata — replace with the exact dataset link you used).

Data was cleaned and pre-processed to correct types and handle missing values, then loaded into a database for analysis and reporting.

What I built

A web-scraper that extracts film & celebrity information from IMDb.

Python scripts to clean, transform, and enrich the data.

A relational database schema to store the processed tables.

SQL queries and Python analyses to extract actionable insights.

A dashboard (visualization layer) that presents the most important findings in a clear, user-friendly way.

Key Findings & Insights

(Summary of the most important results extracted using Python & SQL)

Top films & series: Identified highest-rated films by critic (Meta score) and audience (IMDb rating) — a shortlist of titles that performed well on both measures.

Celebrity & crew trends: 2022 (example) showed high activity with a notable number of celebrities appearing in the "Top Celeb" lists; common top professions include writer, sound, and actor.

Financial vs. critical success: Average gross for films in the dataset ~$68M (approx.). Analysis shows that financially top-earning films are not always the same as the highest critically rated films; genre plays an important role in both revenue and ratings.
