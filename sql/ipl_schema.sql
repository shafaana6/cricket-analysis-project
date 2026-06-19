-- ============================================================
-- IPL DATA ANALYSIS PROJECT
-- Database Schema 
-- ============================================================

CREATE DATABASE ipl_db;
USE ipl_db;

-- ============================================================
-- DIMENSION TABLE: TEAM
-- ============================================================

CREATE TABLE dim_team AS
SELECT DISTINCT team1 AS team_name
FROM matches

UNION

SELECT DISTINCT team2
FROM matches;

-- ============================================================
-- DIMENSION TABLE: VENUE
-- ============================================================

CREATE TABLE dim_venue AS
SELECT DISTINCT
    venue,
    city
FROM matches;

-- ============================================================
-- DIMENSION TABLE: PLAYER
-- ============================================================

CREATE TABLE dim_player AS
SELECT DISTINCT batter AS player_name
FROM deliveries

UNION

SELECT DISTINCT bowler
FROM deliveries;

-- ============================================================
-- DIMENSION TABLE: MATCH
-- ============================================================

CREATE TABLE dim_match AS
SELECT
    match_id,
    season,
    date,
    venue,
    team1,
    team2,
    toss_winner,
    toss_decision,
    winner,
    win_by_runs,
    win_by_wickets,
    player_of_match
FROM matches;

-- ============================================================
-- FACT TABLE: DELIVERIES
-- ============================================================

CREATE TABLE fact_deliveries AS
SELECT
    match_id,
    inning,
    batting_team,
    bowling_team,
    `over`,
    ball,
    batter,
    bowler,
    runs_batter,
    runs_extras,
    runs_total,
    extra_type,
    wides,
    noballs,
    legbyes,
    byes,
    is_wicket,
    dismissal_kind,
    player_dismissed,
    fielder
FROM deliveries;

-- ============================================================
-- VERIFICATION QUERIES
-- ============================================================

SELECT COUNT(*) AS total_matches
FROM dim_match;

SELECT COUNT(*) AS total_deliveries
FROM fact_deliveries;

SELECT COUNT(*) AS total_players
FROM dim_player;

SELECT COUNT(*) AS total_teams
FROM dim_team;

SELECT COUNT(*) AS total_venues
FROM dim_venue;