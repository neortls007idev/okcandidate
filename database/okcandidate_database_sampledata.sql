﻿---------------
-- Geography --
---------------
INSERT INTO geography (id, geography_name)
VALUES (1, 'Super Ward 6'), (2, 'Super Ward 7');

------------
-- Survey --
------------
INSERT INTO survey (id, survey_name)
VALUES (1, '2016 Norfolk Mayor & Council Race');

--------------
-- Category --
--------------
INSERT INTO category (id, category_name) VALUES
(1, 'Transportation'),
(2, 'Economic Development'),
(3, 'City Engagement & Government'),
(4, 'Public Safety & Crime'),
(5, 'Sea Level Rise & The Environment'),
(6, 'Neighborhoods and Quality of Life'),
(7, 'Education');

--------------
-- Question --
--------------
INSERT INTO question (id, survey_id, category_id, question_text) VALUES
(1,1,1,'Do you support the city’s Complete Streets initiative?'),
(2,1,1,'Was The Tide a good use of city money?'),
(3,1,1,'Where should The Tide go next?'),
(4,1,1,'Choose one project'),
(5,1,1,'Do you own a bike?'),
(6,1,1,'Have you ridden public transit in the past three months?'),
(7,1,7,'Is the city spending enough on schools?'),
(8,1,7,'Do you support magnet schools?'),
(9,1,7,'Do you support charter schools?'),
(10,1,5,'Pick one project'),
(11,1,5,'Should the city be more aggressive in changing codes to require green infrastructure (i.e., green roofs, permeable pavement)?'),
(12,1,5,'How should the city deal with coal dust?'),
(13,1,3,'Which word better describes the City of Norfolk government:'),
(14,1,3,'What is your opinion on government meetings?'),
(15,1,3,'Have Norfolk’s efforts to engage citizens on major decisions been:'),
(16,1,3,'Should the Norfolk mayor and city council members have term limits?'),
(17,1,3,'Should municipal elections be moved to November?'),
(18,1,6,'What do you think should be done to preserve distressed properties in historic districts?'),
(19,1,6,'Pick one spending priority for the neighborhoods outside of downtown:'),
(20,1,6,'How would you help Norfolk’s waterfront?'),
(21,1,6,'Norfolk’s park system is:'),
(22,1,6,'Should the city require affordable housing in new developments?'),
(23,1,6,'Should there be incentives to encourage reuse of vacant properties?'),
(24,1,6,'Should backyard chickens be legal in Norfolk?'),
(25,1,2,'What should the city emphasize first?'),
(26,1,2,'Was The Main a good use of city money?'),
(27,1,2,'How will the new Waterside affect local businesses?'),
(28,1,2,'Has the city spent too much, too little or the right amount of money downtown?'),
(29,1,2,'What is your opinion on the best method of luring business to Norfolk?'),
(30,1,2,'Should Norfolk embrace the sharing economy (things like Uber, AirBNB)?'),
(31,1,2,'Would you have voted for $18 million to redevelop J.C. Penney at Military Circle?'),
(32,1,2,'Is the city doing enough to keep the Navy and other military installations here in Norfolk?'),
(33,1,4,'What do you think should be done to decrease crime in Norfolk?'),
(34,1,4,'My feelings on marijuana in Norfolk are:'),
(35,1,4,'How should the city address the disparate incarceration rates between white and black citizens?'),
(36,1,4,'Does Norfolk need protected bicycle lanes on streets?');

------------
-- Answer --
------------
INSERT INTO answer (id, question_id, answer_label, answer_value) VALUES
(1,1,'Yes, streets should accommodate bikes and pedestrians in addition to cars.','Yes, streets should accommodate bikes and pedestrians in addition to cars.'),
(2,1,'To a degree.','To a degree.'),
(3,1,'No. Our city was designed for vehicular traffic and should stay that way.','No. Our city was designed for vehicular traffic and should stay that way.'),
(4,2,'Absolutely. The Tide showed visionary leadership.','Absolutely. The Tide showed visionary leadership.'),
(5,2,'It remains to be seen.','It remains to be seen.'),
(6,2,'No. This was inefficient transportation spending.','No. This was inefficient transportation spending.'),
(7,3,'ODU','ODU'),
(8,3,'Norfolk International Airport','Norfolk International Airport'),
(9,3,'Naval Station Norfolk','Naval Station Norfolk'),
(10,3,'Nowhere','Nowhere'),
(11,4,'Bus service to the Norfolk International Airport','Bus service to the Norfolk International Airport'),
(12,4,'A citywide bike share program','A citywide bike share program'),
(13,4,'Expanded waterway transportation','Expanded waterway transportation'),
(14,5,'Yes','Yes'),
(15,5,'No','No'),
(16,6,'Yes','Yes'),
(17,6,'No','No'),
(18,7,'Yes','Yes'),
(19,7,'No','No'),
(20,8,'Yes','Yes'),
(21,8,'No','No'),
(22,9,'Yes','Yes'),
(23,9,'No','No'),
(24,10,'A storm wall at the mouth of the Hague','A storm wall at the mouth of the Hague'),
(25,10,'Creek and wetland restoration in the St. Paul’s quadrant','Creek and wetland restoration in the St. Paul’s quadrant'),
(26,10,'Lifting houses and streets in vulnerable neighborhoods','Lifting houses and streets in vulnerable neighborhoods'),
(27,10,'Replenishing beaches','Replenishing beaches'),
(28,11,'Yes. This is a priority','Yes. This is a priority'),
(29,11,'No. Private property rights are sacred.','No. Private property rights are sacred.'),
(30,12,'Leave it alone. Norfolk Southern is following the law.','Leave it alone. Norfolk Southern is following the law.'),
(31,12,'The city should hire an independent researcher to test the impact on citizen health.','The city should hire an independent researcher to test the impact on citizen health.'),
(32,12,'The city should push Norfolk Southern to minimize impact on the surrounding neighborhoods, regardless of the EPA report.','The city should push Norfolk Southern to minimize impact on the surrounding neighborhoods, regardless of the EPA report.'),
(33,13,'Transparent','Transparent'),
(34,13,'Closed','Closed'),
(35,14,'More can be done to increase transparency including recording meetings in their entirety.','More can be done to increase transparency including recording meetings in their entirety.'),
(36,14,'Enough is being done.','Enough is being done.'),
(37,14,'I think transparent government processes are unnecessary.','I think transparent government processes are unnecessary.'),
(38,15,'Good; people feel their voices are heard.','Good; people feel their voices are heard.'),
(39,15,'Adequate, if maybe too top down.','Adequate, if maybe too top down.'),
(40,15,'What citizen engagement?','What citizen engagement?'),
(41,16,'Yes','Yes'),
(42,16,'No','No'),
(43,17,'Yes','Yes'),
(44,17,'No','No'),
(45,18,'Increase incentives to companies willing to invest.','Increase incentives to companies willing to invest.'),
(46,18,'Increase flexibility of local ordinances/codes/zoning to allow a greater flexibility of uses in historic structures as long as the building is preserved.','Increase flexibility of local ordinances/codes/zoning to allow a greater flexibility of uses in historic structures as long as the building is preserved.'),
(47,18,'Historic properties should not be given priority or special treatment by local ordinances.','Historic properties should not be given priority or special treatment by local ordinances.'),
(48,18,'Code enforcement should require property owners to adhere to the law','Code enforcement should require property owners to adhere to the law'),
(49,19,'Economic development.','Economic development.'),
(50,19,'Entertainment and tourist attractions','Entertainment and tourist attractions'),
(51,19,'Parks and schools','Parks and schools'),
(52,20,'City should spend money on boat slips, kayak launches, watercraft rental.','City should spend money on boat slips, kayak launches, watercraft rental.'),
(53,20,'City should spend money on cleaning up and rehabilitating the waterfront.','City should spend money on cleaning up and rehabilitating the waterfront.'),
(54,20,'City should spend money on making the waterfront more appealing through entertainment options like restaurants or Ferris wheels.','City should spend money on making the waterfront more appealing through entertainment options like restaurants or Ferris wheels.'),
(55,21,'A gem.','A gem.'),
(56,21,'Adequate and should be maintained.','Adequate and should be maintained.'),
(57,21,'Needs a lot of work.','Needs a lot of work.'),
(58,22,'Yes','Yes'),
(59,22,'No','No'),
(60,23,'Yes','Yes'),
(61,23,'No','No'),
(62,24,'Yes','Yes'),
(63,24,'No','No'),
(64,25,'Expansion of existing businesses','Expansion of existing businesses'),
(65,25,'Attraction of businesses from outside the region','Attraction of businesses from outside the region'),
(66,25,'Development of new local businesses','Development of new local businesses'),
(67,26,'Absolutely','Absolutely'),
(68,26,'The jury is out','The jury is out'),
(69,26,'No','No'),
(70,27,'Healthy competition will benefit everyone.','Healthy competition will benefit everyone.'),
(71,27,'They’re appealing to different demographics, so it’s a moot point.','They’re appealing to different demographics, so it’s a moot point.'),
(72,27,'Negatively. The city is betting against itself.','Negatively. The city is betting against itself.'),
(73,28,'Too much','Too much'),
(74,28,'The right amount','The right amount'),
(75,28,'Not enough','Not enough'),
(76,29,'Incentives for small businesses including tax/rent reductions and other perks (similar to Vibrant Spaces).','Incentives for small businesses including tax/rent reductions and other perks (similar to Vibrant Spaces).'),
(77,29,'Tax breaks and real estate incentives for large companies to relocate.','Tax breaks and real estate incentives for large companies to relocate.'),
(78,29,'A mix of both methods.','A mix of both methods.'),
(79,30,'Yes, and quickly.','Yes, and quickly.'),
(80,30,'Yes, but it should wait for the state to develop a framework.','Yes, but it should wait for the state to develop a framework.'),
(81,30,'No. Everyone should play by the same rules.','No. Everyone should play by the same rules.'),
(82,31,'Yes','Yes'),
(83,31,'No','No'),
(84,32,'Yes','Yes'),
(85,32,'We can always do more','We can always do more'),
(86,32,'No','No'),
(87,33,'Increased staffing of the police department.','Increased staffing of the police department.'),
(88,33,'Increased community outreach and assistance to low-income families.','Increased community outreach and assistance to low-income families.'),
(89,33,'Increased investment in struggling neighborhoods to increase the quality of living and increase quality of local services.','Increased investment in struggling neighborhoods to increase the quality of living and increase quality of local services.'),
(90,34,'We need more police resources on the issue.','We need more police resources on the issue.'),
(91,34,'Norfolk’s approach is appropriate.','Norfolk’s approach is appropriate.'),
(92,34,'Marijuana should be regulated and policed like alcohol.','Marijuana should be regulated and policed like alcohol.'),
(93,35,'It shouldn’t. The people who commit crimes are incarcerated blind to race.','It shouldn’t. The people who commit crimes are incarcerated blind to race.'),
(94,35,'The city should evaluate the possibility that law enforcement processes can be made more equitable.','The city should evaluate the possibility that law enforcement processes can be made more equitable.'),
(95,35,'America’s laws are inherently racist.','America’s laws are inherently racist.'),
(96,36,'Yes','Yes'),
(97,36,'Yes, but not at the expense of car lanes','Yes, but not at the expense of car lanes'),
(98,36,'No','No');

---------------------
--- Candidate Type --
---------------------
INSERT INTO candidate_type (id, type_name)
VALUES (1, 'Mayor'), (2, 'City Council');

---------------
-- Candidate --
---------------
INSERT INTO candidate (id, candidate_name, candidate_type_id) VALUES
(1, 'Kenneth Cooper Alexander', 1),
(2, 'Robert J. McCabe', 1),
(3, 'Andy A. Protogyrou', 1),
(4, 'Andria P. McClellan', 2),
(5, 'Warren A. Stewart', 2),
(6, 'Barclay C. Winn', 2),
(7, 'Harry David Candela', 2),
(8, 'G.W. "Billy" Cook, Jr.', 2),
(9, 'Angelia Williams Graves', 2),
(10, 'Kendrick J. Turner', 2);

----------------------
-- Candidate Answer --
----------------------
INSERT INTO candidate_answer (id, candidate_id, question_id, answer_id, intensity) VALUES
(1,6,1,1,5),
(2,6,2,4,4),
(3,6,3,9,4),
(4,6,4,12,4),
(5,6,5,14,5),
(6,6,6,16,5),
(7,6,7,19,5),
(8,6,8,20,5),
(9,6,9,23,2),
(10,6,10,27,5),
(11,6,11,28,5),
(12,6,12,31,5),
(13,6,13,33,5),
(14,6,14,35,5),
(15,6,15,38,5),
(16,6,16,42,1),
(17,6,17,43,4),
(18,6,18,46,5),
(19,6,19,51,5),
(20,6,20,53,5),
(21,6,21,56,5),
(22,6,22,58,5),
(23,6,23,60,5),
(24,6,24,62,3),
(25,6,25,66,5),
(26,6,26,67,4),
(27,6,27,70,5),
(28,6,28,74,5),
(29,6,29,76,5),
(30,6,30,80,4),
(31,6,31,82,5),
(32,6,32,85,5),
(33,6,33,89,5),
(34,6,34,91,2),
(35,6,35,93,4),
(36,6,36,96,4),
(37,8,1,1,3),
(38,8,2,5,4),
(39,8,3,9,4),
(40,8,4,11,4),
(41,8,5,15,3),
(42,8,6,16,4),
(43,8,7,19,4),
(44,8,8,20,3),
(45,8,9,23,3),
(46,8,10,27,4),
(47,8,11,29,3),
(48,8,12,31,5),
(49,8,13,34,5),
(50,8,14,35,4),
(51,8,15,39,5),
(52,8,16,42,3),
(53,8,17,43,4),
(54,8,18,46,4),
(55,8,19,49,5),
(56,8,20,53,5),
(57,8,21,56,4),
(58,8,22,58,5),
(59,8,23,60,4),
(60,8,24,62,3),
(61,8,25,66,5),
(62,8,26,68,3),
(63,8,27,70,4),
(64,8,28,74,3),
(65,8,29,78,5),
(66,8,30,80,3),
(67,8,31,83,5),
(68,8,32,85,5),
(69,8,33,89,5),
(70,8,34,91,4),
(71,8,35,94,4),
(72,8,36,96,4),
(73,7,1,1,5),
(74,7,2,4,5),
(75,7,3,8,5),
(76,7,4,13,5),
(77,7,5,14,5),
(78,7,6,16,5),
(79,7,7,18,5),
(80,7,8,20,5),
(81,7,9,22,5),
(82,7,10,26,5),
(83,7,11,29,5),
(84,7,12,32,5),
(85,7,13,34,5),
(86,7,14,35,5),
(87,7,15,40,5),
(88,7,16,41,5),
(89,7,17,43,5),
(90,7,18,46,5),
(91,7,19,49,5),
(92,7,20,52,5),
(93,7,21,57,5),
(94,7,22,58,5),
(95,7,23,60,5),
(96,7,24,62,5),
(97,7,25,66,5),
(98,7,26,69,5),
(99,7,27,71,5),
(100,7,28,73,5),
(101,7,29,78,5),
(102,7,30,79,5),
(103,7,31,83,5),
(104,7,32,86,5),
(105,7,33,89,5),
(106,7,34,90,5),
(107,7,35,93,5),
(108,7,36,96,5),
(109,10,1,1,5),
(110,10,2,4,5),
(111,10,3,9,5),
(112,10,4,11,5),
(113,10,5,14,5),
(114,10,6,16,5),
(115,10,7,19,5),
(116,10,8,20,5),
(117,10,9,22,5),
(118,10,10,26,5),
(119,10,11,28,5),
(120,10,12,31,5),
(121,10,13,33,5),
(122,10,14,35,5),
(123,10,15,38,5),
(124,10,16,41,5),
(125,10,17,43,5),
(126,10,18,46,5),
(127,10,19,49,5),
(128,10,20,53,5),
(129,10,21,56,5),
(130,10,22,58,5),
(131,10,23,60,5),
(132,10,24,62,5),
(133,10,25,66,5),
(134,10,26,67,5),
(135,10,27,70,5),
(136,10,28,73,5),
(137,10,29,78,5),
(138,10,30,79,5),
(139,10,31,82,5),
(140,10,32,84,5),
(141,10,33,87,5),
(142,10,34,90,5),
(143,10,35,94,5),
(144,10,36,96,5),
(145,4,1,1,5),
(146,4,2,4,5),
(147,4,3,9,5),
(148,4,4,12,5),
(149,4,5,14,5),
(150,4,6,17,5),
(151,4,7,19,5),
(152,4,8,20,5),
(153,4,9,23,1),
(154,4,10,24,5),
(155,4,11,28,5),
(156,4,12,31,5),
(157,4,13,34,5),
(158,4,14,35,5),
(159,4,15,40,5),
(160,4,16,41,5),
(161,4,17,43,5),
(162,4,18,46,5),
(163,4,19,50,5),
(164,4,20,52,5),
(165,4,21,57,5),
(166,4,22,58,5),
(167,4,23,60,5),
(168,4,24,62,3),
(169,4,25,66,5),
(170,4,26,69,2),
(171,4,27,71,4),
(172,4,28,73,4),
(173,4,29,78,5),
(174,4,30,80,5),
(175,4,31,83,5),
(176,4,32,85,5),
(177,4,33,88,5),
(178,4,34,92,3),
(179,4,35,94,4),
(180,4,36,96,5),
(181,2,1,1,5),
(182,2,2,4,5),
(183,2,3,9,5),
(184,2,4,12,5),
(185,2,5,14,5),
(186,2,6,16,5),
(187,2,7,19,5),
(188,2,8,20,5),
(189,2,9,22,5),
(190,2,10,26,5),
(191,2,11,28,5),
(192,2,12,32,5),
(193,2,13,34,5),
(194,2,14,35,5),
(195,2,15,40,5),
(196,2,16,41,5),
(197,2,17,44,3),
(198,2,18,45,5),
(199,2,19,50,5),
(200,2,20,52,5),
(201,2,21,57,5),
(202,2,22,58,5),
(203,2,23,60,5),
(204,2,24,62,3),
(205,2,25,66,5),
(206,2,26,69,5),
(207,2,27,70,5),
(208,2,28,73,5),
(209,2,29,78,5),
(210,2,30,79,5),
(211,2,31,83,5),
(212,2,32,85,5),
(213,2,33,88,5),
(214,2,34,91,4),
(215,2,35,94,5),
(216,2,36,96,5),
(217,5,1,2,3),
(218,5,2,5,3),
(219,5,3,9,3),
(220,5,4,13,3),
(221,5,5,14,4),
(222,5,6,17,4),
(223,5,7,18,5),
(224,5,8,20,2),
(225,5,9,23,1),
(226,5,10,27,4),
(227,5,11,28,3),
(228,5,12,31,5),
(229,5,13,34,5),
(230,5,14,35,5),
(231,5,15,40,5),
(232,5,16,42,2),
(233,5,17,43,5),
(234,5,18,46,3),
(235,5,19,50,4),
(236,5,20,53,3),
(237,5,21,57,4),
(238,5,22,58,5),
(239,5,23,60,4),
(240,5,24,63,2),
(241,5,25,64,3),
(242,5,26,68,3),
(243,5,27,71,2),
(244,5,28,73,3),
(245,5,29,78,4),
(246,5,30,81,2),
(247,5,31,83,4),
(248,5,32,84,5),
(249,5,33,87,5),
(250,5,34,92,1),
(251,5,35,94,3),
(252,5,36,97,5),
(253,1,1,1,5),
(254,1,2,4,5),
(255,1,3,7,5),
(256,1,4,12,5),
(257,1,5,14,4),
(258,1,6,16,5),
(259,1,7,19,5),
(260,1,8,20,5),
(261,1,9,23,1),
(262,1,10,26,5),
(263,1,11,28,5),
(264,1,12,32,5),
(265,1,13,34,5),
(266,1,14,35,5),
(267,1,15,40,5),
(268,1,16,42,1),
(269,1,17,44,5),
(270,1,18,48,5),
(271,1,19,50,5),
(272,1,20,53,5),
(273,1,21,57,5),
(274,1,22,59,5),
(275,1,23,61,5),
(276,1,24,62,1),
(277,1,25,65,5),
(278,1,26,68,3),
(279,1,27,70,3),
(280,1,28,74,4),
(281,1,29,76,5),
(282,1,30,81,3),
(283,1,31,83,5),
(284,1,32,85,5),
(285,1,33,89,5),
(286,1,34,92,1),
(287,1,35,94,5),
(288,1,36,97,5);

-------------------------
-- Candidate Geography --
-------------------------
INSERT INTO candidate_geography (candidate_id, geography_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 2);
