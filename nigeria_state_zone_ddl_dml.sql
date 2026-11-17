-- Create a table called Nigeria state 

CREATE TABLE Nigeria_state_zone (
states VARCHAR(50) PRIMARY KEY,
state_abb VARCHAR(7),
capital VARCHAR(20),
slogan VARCHAR(20),
date_created VARCHAR(20),
geopolitical_zone VARCHAR(50),
local_govt INT,
Pol_party VARCHAR(10)
);

SELECT *
FROM Nigeria_state_zone;

INSERT INTO Nigeria_state_zone(states, state_abb, capital, slogan, date_created,  geopolitical_zone, local_govt, Pol_party)
VALUES
('Jigawa', 'JIG', 'Duste', 'Liberal State', '1991-08-27', 'North West', 27, 'APC'),
('Dalta', 'DEL', 'Asaba', 'The Big Heart', '1991-08-27', 'South South', 25, 'APC'),
('Yobe', 'YOB', 'Damaturu', 'The Young Shall Grow', '1991-08-27', 'North East', 17, 'APC'),
('Zamfara', 'ZAM', 'Gusau', 'Home of Agricultural', '1976-02-03', 'North West', 14, 'APC'),
('Ebonyi', 'EBO', 'Abakaliki', 'Salt of the Nation', '1996-10-01', 'South East', 13, 'APC'),
('Gombe', 'GOM', 'Gombe', 'Land of Hope', '1998-10-01',	'North West', 11, 'APC'),
('Akwa-ibom', 'AKW', 'Uyo', 'Home of All', '1987-09-23', 'South South', 31, 'APC'),
('Taraba', 'TAR', 'Jalingo', 'Natures Gift Nation', '1992-08-01', 'North East', 17, 'APC');

SELECT *
FROM Nigeria_state_zone;

-- Change the slogan if the following state
UPDATE Nigeria_state_zone
	SET slogan = 'The New World'
WHERE states = 'Jigawa'

UPDATE Nigeria_state_zone
	SET slogan = 'Pride of the Sahel'
WHERE states = 'Yobe'

UPDATE Nigeria_state_zone
	SET slogan = 'Land of Promise'
WHERE states = 'Akwa-ibom'

UPDATE Nigeria_state_zone
	SET slogan = 'Farming is our Pride'
WHERE states = 'Zamfara'

UPDATE Nigeria_state_zone
	SET slogan = 'Jewel of Savannah'
WHERE states = 'Gombe'

SELECT *
FROM Nigeria_state_zone;

-- Add column called "number of current govt"

ALTER TABLE Nigeria_state_zone
ADD number_of_current_govt VARCHAR(30);

SELECT *
FROM Nigeria_state_zone;