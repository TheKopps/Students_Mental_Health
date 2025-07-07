# Mental Health Analysis of International Students

This project analyzes mental health indicators of international students based on their length of stay (Short, Medium, Long). The data was extracted from a student survey. The analysis focuses on:

- **PHQ-9** (depression score)
- **SCS** (social connectedness score)
- **AS** (anxiety score)
- The number of international students in each stay category

## 💾 Dataset

The dataset `students.csv` contains information about students' demographics, mental health scores, and length of stay. Only rows where `inter_dom = 'Inter'` were used for this analysis.

## 📊 SQL Query

We used a `WITH` clause to compute:
1. The number of international students per stay duration
2. The average scores for PHQ, SCS, and AS

Then we joined the two results by `stay`.

See [`analysis.sql`](analysis.sql) for the exact code.

## 📋 Result Summary

| Stay Duration | Students | Avg. PHQ | Avg. SCS | Avg. AS |
|---------------|----------|----------|----------|---------|
| Long          | 21       | 7.86     | 35.57    | 78.81   |
| Medium        | 85       | 8.72     | 37.11    | 77.85   |
| Short         | 95       | 7.48     | 38.11    | 72.80   |

## 📈 Visualizations

- `fig1_counts.png`: Number of international students by stay category
- `fig2_phq.png`: PHQ-9 score by stay duration
- `fig3_all_scores.png`: Comparison of PHQ, SCS, AS scores

## 🧠 Key Takeaways

- Students with medium stays report higher PHQ (depression) scores than short or long stays.
- Social connectedness (SCS) appears highest in short stays.
- Anxiety (AS) score increases with stay duration.

## 📌 Tools

- SQL (PostgreSQL syntax)
- Python (for visualization – matplotlib & seaborn)
- DataCamp project context

## ✍️ Author

**Adrien Monteiro**  
[GitHub Portfolio Project] – 2025
