-- Count of international students per stay category
WITH inter_count AS (
    SELECT stay, COUNT(inter_dom) AS count_int
    FROM students
    WHERE inter_dom = 'Inter'
    GROUP BY stay
),

-- Average PHQ, SCS, and AS scores per stay category
average_scores AS (
    SELECT stay,
           ROUND(AVG(todep), 2) AS average_phq,
           ROUND(AVG(tosc), 2) AS average_scs,
           ROUND(AVG(toas), 2) AS average_as
    FROM students
    GROUP BY stay
)

-- Final result: join both subqueries on 'stay'
SELECT a.stay, a.count_int, b.average_phq, b.average_scs, b.average_as
FROM inter_count a
JOIN average_scores b ON a.stay = b.stay
ORDER BY a.stay DESC;
