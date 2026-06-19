USE ipl_db;

-- =====================================================
-- Q1: Top 10 Run Scorers with Average & Strike Rate
-- =====================================================

SELECT
    batter,
    SUM(runs_batter) AS total_runs,
    COUNT(runs_batter) AS balls_faced,
    SUM(is_wicket) AS dismissals,
    ROUND(SUM(runs_batter) * 100.0 / COUNT(runs_batter), 2) AS strike_rate,
    ROUND(SUM(runs_batter) / NULLIF(SUM(is_wicket), 0), 2) AS average
FROM fact_deliveries
GROUP BY batter
ORDER BY total_runs DESC
LIMIT 10;


-- =====================================================
-- Q2: Most Sixes and Fours by Batsman
-- =====================================================

SELECT
    batter,
    SUM(CASE WHEN runs_batter = 6 THEN 1 ELSE 0 END) AS sixes,
    SUM(CASE WHEN runs_batter = 4 THEN 1 ELSE 0 END) AS fours,
    SUM(CASE WHEN runs_batter IN (4,6) THEN 1 ELSE 0 END) AS total_boundaries
FROM fact_deliveries
GROUP BY batter
ORDER BY sixes DESC
LIMIT 10;


-- =====================================================
-- Q3: Top 10 Wicket Takers
-- =====================================================

SELECT
    bowler,
    SUM(is_wicket) AS total_wickets,
    COUNT(ball) AS balls_bowled,
    ROUND(COUNT(ball)/6.0,1) AS overs_bowled,
    SUM(runs_total) AS runs_conceded,
    ROUND(SUM(runs_total)*6.0/COUNT(ball),2) AS economy_rate,
    ROUND(SUM(runs_total)/NULLIF(SUM(is_wicket),0),2) AS bowling_average
FROM fact_deliveries
GROUP BY bowler
ORDER BY total_wickets DESC
LIMIT 10;


-- =====================================================
-- Q4: Most Economical Bowlers in Death Overs
-- =====================================================

SELECT
    bowler,
    SUM(runs_total) AS runs_conceded,
    ROUND(COUNT(ball)/6.0,1) AS overs_bowled,
    SUM(is_wicket) AS wickets,
    ROUND(SUM(runs_total)*6.0/COUNT(ball),2) AS economy_rate
FROM fact_deliveries
WHERE `over` BETWEEN 15 AND 19
GROUP BY bowler
HAVING overs_bowled >= 10
ORDER BY economy_rate ASC
LIMIT 10;


-- =====================================================
-- Q5: Team Win Count Across All IPL Seasons
-- =====================================================

SELECT
    winner AS team,
    COUNT(*) AS total_wins,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*)
         FROM dim_match
         WHERE winner NOT IN ('No Result','Tie')),
        2
    ) AS win_percentage
FROM dim_match
WHERE winner NOT IN ('No Result','Tie')
GROUP BY winner
ORDER BY total_wins DESC;


-- =====================================================
-- Q6: Chasing vs Defending Wins
-- =====================================================

SELECT
    winner AS team,
    SUM(
        CASE
            WHEN toss_decision='field'
            AND toss_winner=winner
            THEN 1 ELSE 0
        END
    ) AS wins_chasing,

    SUM(
        CASE
            WHEN toss_decision='bat'
            AND toss_winner=winner
            THEN 1 ELSE 0
        END
    ) AS wins_defending

FROM dim_match
WHERE winner NOT IN ('No Result','Tie')
GROUP BY winner
ORDER BY wins_chasing DESC;


-- =====================================================
-- Q7: Toss Impact on Match Result
-- =====================================================

SELECT
    COUNT(*) AS total_matches,

    SUM(
        CASE
            WHEN toss_winner=winner
            THEN 1 ELSE 0
        END
    ) AS toss_winner_won,

    ROUND(
        SUM(
            CASE
                WHEN toss_winner=winner
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS toss_win_percentage

FROM dim_match
WHERE winner NOT IN ('No Result','Tie');


-- =====================================================
-- Q7b: Toss Impact by Venue
-- =====================================================

SELECT
    venue,
    COUNT(*) AS total_matches,

    SUM(
        CASE
            WHEN toss_winner=winner
            THEN 1 ELSE 0
        END
    ) AS toss_winner_won,

    ROUND(
        SUM(
            CASE
                WHEN toss_winner=winner
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS toss_win_pct

FROM dim_match
WHERE winner NOT IN ('No Result','Tie')
GROUP BY venue
HAVING total_matches >= 10
ORDER BY toss_win_pct DESC
LIMIT 10;


-- =====================================================
-- Q8: Average First Innings Score Per Venue
-- =====================================================

SELECT
    d.venue,

    COUNT(DISTINCT f.match_id) AS total_matches,

    ROUND(
        SUM(f.runs_total) /
        COUNT(DISTINCT f.match_id),
        2
    ) AS avg_first_innings_score

FROM fact_deliveries f
JOIN dim_match d
ON f.match_id = d.match_id

WHERE f.inning = 1

GROUP BY d.venue

HAVING total_matches >= 5

ORDER BY avg_first_innings_score DESC
LIMIT 10;


-- =====================================================
-- Q9: Average Team Score Per Season
-- =====================================================

SELECT
    d.season,

    COUNT(DISTINCT f.match_id) AS total_matches,

    ROUND(
        SUM(f.runs_total) /
        COUNT(DISTINCT f.match_id),
        2
    ) AS avg_score_per_match

FROM fact_deliveries f
JOIN dim_match d
ON f.match_id = d.match_id

WHERE f.inning = 1

GROUP BY d.season

ORDER BY d.season ASC;


-- =====================================================
-- Q10: Most Player of the Match Awards
-- =====================================================

SELECT
    player_of_match,
    COUNT(*) AS potm_awards

FROM dim_match

WHERE player_of_match NOT IN ('Not Awarded')

GROUP BY player_of_match

ORDER BY potm_awards DESC

LIMIT 10;