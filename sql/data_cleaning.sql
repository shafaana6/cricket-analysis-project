USE ipl_db;

-- Delhi Daredevils → Delhi Capitals
UPDATE dim_match
SET team1='Delhi Capitals'
WHERE team1='Delhi Daredevils';

UPDATE dim_match
SET team2='Delhi Capitals'
WHERE team2='Delhi Daredevils';

UPDATE dim_match
SET winner='Delhi Capitals'
WHERE winner='Delhi Daredevils';

-- Kings XI Punjab → Punjab Kings
UPDATE dim_match
SET team1='Punjab Kings'
WHERE team1='Kings XI Punjab';

UPDATE dim_match
SET team2='Punjab Kings'
WHERE team2='Kings XI Punjab';

UPDATE dim_match
SET winner='Punjab Kings'
WHERE winner='Kings XI Punjab';

-- Royal Challengers Bengaluru → Royal Challengers Bangalore
UPDATE dim_match
SET team1='Royal Challengers Bangalore'
WHERE team1='Royal Challengers Bengaluru';

UPDATE dim_match
SET team2='Royal Challengers Bangalore'
WHERE team2='Royal Challengers Bengaluru';

UPDATE dim_match
SET winner='Royal Challengers Bangalore'
WHERE winner='Royal Challengers Bengaluru';

-- Season Fix
UPDATE dim_match
SET season=2008
WHERE season=2007;

USE ipl_db;

-- =====================================================
-- VENUE STANDARDIZATION
-- =====================================================

-- Rajiv Gandhi International Stadium
UPDATE matches
SET venue = 'Rajiv Gandhi International Stadium, Uppal, Hyderabad'
WHERE venue IN (
    'Rajiv Gandhi International Stadium',
    'Rajiv Gandhi International Stadium, Uppal'
);

UPDATE dim_match
SET venue = 'Rajiv Gandhi International Stadium, Uppal, Hyderabad'
WHERE venue IN (
    'Rajiv Gandhi International Stadium',
    'Rajiv Gandhi International Stadium, Uppal'
);

-- M Chinnaswamy Stadium
UPDATE matches
SET venue = 'M. Chinnaswamy Stadium, Bengaluru'
WHERE venue IN (
    'M.Chinnaswamy Stadium',
    'M Chinnaswamy Stadium',
    'M Chinnaswamy Stadium, Bengaluru'
);

UPDATE dim_match
SET venue = 'M. Chinnaswamy Stadium, Bengaluru'
WHERE venue IN (
    'M.Chinnaswamy Stadium',
    'M Chinnaswamy Stadium',
    'M Chinnaswamy Stadium, Bengaluru'
);

-- Feroz Shah Kotla / Arun Jaitley Stadium
UPDATE matches
SET venue = 'Arun Jaitley Stadium, Delhi'
WHERE venue IN (
    'Feroz Shah Kotla',
    'Arun Jaitley Stadium'
);

UPDATE dim_match
SET venue = 'Arun Jaitley Stadium, Delhi'
WHERE venue IN (
    'Feroz Shah Kotla',
    'Arun Jaitley Stadium'
);

-- Punjab Cricket Association Stadium
UPDATE matches
SET venue = 'Punjab Cricket Association IS Bindra Stadium, Mohali'
WHERE venue IN (
    'Punjab Cricket Association IS Bindra Stadium',
    'Punjab Cricket Association IS Bindra Stadium, Mohali, Chandigarh',
    'Punjab Cricket Association Stadium, Mohali'
);

UPDATE dim_match
SET venue = 'Punjab Cricket Association IS Bindra Stadium, Mohali'
WHERE venue IN (
    'Punjab Cricket Association IS Bindra Stadium',
    'Punjab Cricket Association IS Bindra Stadium, Mohali, Chandigarh',
    'Punjab Cricket Association Stadium, Mohali'
);

-- MA Chidambaram Stadium
UPDATE matches
SET venue = 'MA Chidambaram Stadium, Chepauk, Chennai'
WHERE venue IN (
    'MA Chidambaram Stadium',
    'MA Chidambaram Stadium, Chepauk'
);

UPDATE dim_match
SET venue = 'MA Chidambaram Stadium, Chepauk, Chennai'
WHERE venue IN (
    'MA Chidambaram Stadium',
    'MA Chidambaram Stadium, Chepauk'
);

-- Wankhede Stadium
UPDATE matches
SET venue = 'Wankhede Stadium, Mumbai'
WHERE venue = 'Wankhede Stadium';

UPDATE dim_match
SET venue = 'Wankhede Stadium, Mumbai'
WHERE venue = 'Wankhede Stadium';

-- Eden Gardens
UPDATE matches
SET venue = 'Eden Gardens, Kolkata'
WHERE venue = 'Eden Gardens';

UPDATE dim_match
SET venue = 'Eden Gardens, Kolkata'
WHERE venue = 'Eden Gardens';

-- Sheikh Zayed Stadium
UPDATE matches
SET venue = 'Sheikh Zayed Stadium, Abu Dhabi'
WHERE venue IN (
    'Sheikh Zayed Stadium',
    'Zayed Cricket Stadium, Abu Dhabi'
);

UPDATE dim_match
SET venue = 'Sheikh Zayed Stadium, Abu Dhabi'
WHERE venue IN (
    'Sheikh Zayed Stadium',
    'Zayed Cricket Stadium, Abu Dhabi'
);

-- ACA-VDCA Stadium
UPDATE matches
SET venue = 'Dr. Y.S. Rajasekhara Reddy ACA-VDCA Cricket Stadium, Visakhapatnam'
WHERE venue = 'Dr. Y.S. Rajasekhara Reddy ACA-VDCA Cricket Stadium';

UPDATE dim_match
SET venue = 'Dr. Y.S. Rajasekhara Reddy ACA-VDCA Cricket Stadium, Visakhapatnam'
WHERE venue = 'Dr. Y.S. Rajasekhara Reddy ACA-VDCA Cricket Stadium';

-- Maharashtra Cricket Association Stadium
UPDATE matches
SET venue = 'Maharashtra Cricket Association Stadium, Pune'
WHERE venue = 'Maharashtra Cricket Association Stadium';

UPDATE dim_match
SET venue = 'Maharashtra Cricket Association Stadium, Pune'
WHERE venue = 'Maharashtra Cricket Association Stadium';

-- Brabourne Stadium
UPDATE matches
SET venue = 'Brabourne Stadium, Mumbai'
WHERE venue = 'Brabourne Stadium';

UPDATE dim_match
SET venue = 'Brabourne Stadium, Mumbai'
WHERE venue = 'Brabourne Stadium';

-- DY Patil Stadium
UPDATE matches
SET venue = 'Dr DY Patil Sports Academy, Mumbai'
WHERE venue = 'Dr DY Patil Sports Academy';

UPDATE dim_match
SET venue = 'Dr DY Patil Sports Academy, Mumbai'
WHERE venue = 'Dr DY Patil Sports Academy';

-- HPCA Stadium
UPDATE matches
SET venue = 'Himachal Pradesh Cricket Association Stadium, Dharamsala'
WHERE venue = 'Himachal Pradesh Cricket Association Stadium';

UPDATE dim_match
SET venue = 'Himachal Pradesh Cricket Association Stadium, Dharamsala'
WHERE venue = 'Himachal Pradesh Cricket Association Stadium';

-- Sawai Mansingh Stadium
UPDATE matches
SET venue = 'Sawai Mansingh Stadium, Jaipur'
WHERE venue = 'Sawai Mansingh Stadium';

UPDATE dim_match
SET venue = 'Sawai Mansingh Stadium, Jaipur'
WHERE venue = 'Sawai Mansingh Stadium';

-- Raipur Stadium
UPDATE matches
SET venue = 'Shaheed Veer Narayan Singh International Stadium, Raipur'
WHERE venue = 'Shaheed Veer Narayan Singh International Stadium';

UPDATE dim_match
SET venue = 'Shaheed Veer Narayan Singh International Stadium, Raipur'
WHERE venue = 'Shaheed Veer Narayan Singh International Stadium';

-- Mullanpur Stadium
UPDATE matches
SET venue = 'Maharaja Yadavindra Singh International Cricket Stadium, New Chandigarh'
WHERE venue = 'Maharaja Yadavindra Singh International Cricket Stadium, Mullanpur';

UPDATE dim_match
SET venue = 'Maharaja Yadavindra Singh International Cricket Stadium, New Chandigarh'
WHERE venue = 'Maharaja Yadavindra Singh International Cricket Stadium, Mullanpur';
