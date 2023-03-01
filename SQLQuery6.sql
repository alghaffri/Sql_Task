CREATE TABLE departments (
  DEPARTMENT_ID INT PRIMARY KEY,
  DEPARTMENT_NAME VARCHAR(255),
  MANAGER_ID INT,
  LOCATION_ID INT
);

create table Employee (
	EMPLOYEE_ID int PRIMARY KEY,
	FIRST_NAME varchar(50),
	LAST_NAME varchar(50),
	EMAIL varchar(50),
	PHONE_NUMBER varchar(20),
	HIRE_DATE Date ,
	JOB_ID varchar(20) ,
	SALARY float,
	commission_pct DECIMAL(10,2),
	MANAGER_ID int,
	DEPARTMENT_ID nvarchar(50)
);

CREATE TABLE Locations (
LOCATION_ID INT PRIMARY KEY,
STREET_ADDRESS VARCHAR(255),
POSTAL_CODE VARCHAR(255),
CITY VARCHAR(255),
STATE_PROVINCE VARCHAR(255),
COUNTRY_ID CHAR(2)
);

INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
VALUES
  (10, 'Administration', 200, 1700),
  (20, 'Marketing', 201, 1800),
  (30, 'Purchasing', 114, 1700),
  (40, 'Human Resources', 203, 2400),
  (50, 'Shipping', 121, 1500),
  (60, 'IT', 103, 1400),
  (70, 'Public Relations', 204, 2700),
  (80, 'Sales', 145, 2500),
  (90, 'Executive', 100, 1700),
  (100, 'Finance', 108, 1700),
  (110, 'Accounting', 205, 1700),
  (120, 'Treasury', 0, 1700),
  (130, 'Corporate Tax', 0, 1700),
  (140, 'Control And Credit', 0, 1700),
  (150, 'Shareholder Services', 0, 1700),
  (160, 'Benefits', 0, 1700),
  (170, 'Manufacturing', 0, 1700),
  (180, 'Construction', 0, 1700),
  (190, 'Contracting', 0, 1700),
  (200, 'Operations', 0, 1700),
  (210, 'IT Support', 0, 1700),
  (220, 'NOC', 0, 1700),
  (230, 'IT Helpdesk', 0, 1700),
  (240, 'Government Sales', 0, 1700),
  (250, 'Retail Sales', 0, 1700),
  (260, 'Recruiting', 0, 1700),
  (270, 'Payroll', 0, 1700);


INSERT INTO Employee (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES
 
(100,'Steven'   ,'King' ,'SKING'    , '515.123.4567'    , '2003-06-17'  ,'AD_PRES'         ,   24000.00 ,           0.00 ,          0 ,            90     ),
(101,'Neena'    ,'Kochhar'  ,'NKOCHHAR' , '515.123.4568'    , '2005-09-21'  ,'AD_VP'           ,   17000.00 ,           0.00 ,        100 ,            90 ),
(102,'Lex'  ,'De Haan'  ,'LDEHAAN'  , '515.123.4569'    , '2001-01-13'  ,'AD_VP'           ,   17000.00 ,           0.00 ,        100 ,            90     ),
(103,'Alexand'  ,'Hunold'   ,'AHUNOLD'  , '590.423.4567'    , '2006-01-03'  ,'IT_PROG'     ,    9000.00 ,           0.00 ,        102 ,            60     ),
(104,'Bruce'    ,'Ernst'    ,'BERNST'   , '590.423.4568'    , '2007-05-21'  ,'IT_PROG'         ,    6000.00 ,           0.00 ,        103 ,            60 ),
(105,'David'    ,'Austin'   ,'DAUSTIN'  , '590.423.4569'    , '2005-06-25'  ,'IT_PROG'         ,    4800.00 ,           0.00 ,        103 ,            60 ),
(106,'Valli'    ,'Pataballa'    ,'VPATABAL' , '590.423.4560'    , '2006-02-05'  ,'IT_PROG'     ,    4800.00 ,           0.00 ,        103 ,            60 ),
(107,'Diana'    ,'Lorentz'  ,'DLORENTZ' , '590.423.5567'    , '2007-02-07'  ,'IT_PROG'         ,    4200.00 ,           0.00 ,        103 ,            60 ),
(108,'Nancy'    ,'Greenberg'    ,'NGREENBE' , '515.124.4569'    , '2002-08-17'  ,'FI_MGR'      ,   12008.00 ,           0.00 ,        101 ,           100 ),
(109,'Daniel'   ,'Faviet'   ,'DFAVIET'  , '515.124.4169'    , '2002-08-16'  ,'FI_ACCOUNT'  ,    9000.00 ,           0.00 ,        108 ,           100     ),
(110,'John' ,'Chen' ,'JCHEN'    , '515.124.4269'    , '2005-09-28'  ,'FI_ACCOUNT'          ,    8200.00 ,           0.00 ,        108 ,           100     ),
(111,'Ismael'   ,'Sciarra'  ,'ISCIARRA' , '515.124.4369'    , '2005-09-30'  ,'FI_ACCOUNT'  ,    7700.00 ,           0.00 ,        108 ,           100     ),
(112,'Jose Ma'  ,'Urman'    ,'JMURMAN'  , '515.124.4469'    , '2006-03-07'  ,'FI_ACCOUNT'  ,    7800.00 ,           0.00 ,        108 ,           100     ),
(113,'Luis' ,'Popp' ,'LPOPP'    , '515.124.4567'    , '2007-12-07'  ,'FI_ACCOUNT'          ,    6900.00 ,           0.00 ,        108 ,           100     ),
(114,'Den'  ,'Raphaely' ,'DRAPHEAL' , '515.127.4561'    , '2002-12-07'  ,'PU_MAN'          ,   11000.00 ,           0.00 ,        100 ,            30     ),
(115,'Alexand'  ,'Khoo' ,'AKHOO'    , '515.127.4562'    , '2003-05-18'  ,'PU_CLERK'        ,    3100.00 ,           0.00 ,        114 ,            30     ),
(116,'Shelli'   ,'Baida'    ,'SBAIDA'   , '515.127.4563'    , '2005-12-24'  ,'PU_CLERK'    ,    2900.00 ,           0.00 ,        114 ,            30     ),
(117,'Sigal'    ,'Tobias'   ,'STOBIAS'  , '515.127.4564'    , '2005-07-24'  ,'PU_CLERK'        ,    2800.00 ,           0.00 ,        114 ,            30 ),
(118,'Guy'  ,'Himuro'   ,'GHIMURO'  , '515.127.4565'    , '2006-11-15'  ,'PU_CLERK'        ,    2600.00 ,           0.00 ,        114 ,            30     ),
(119,'Karen'    ,'Colmenares'   ,'KCOLMENA' , '515.127.4566'    , '2007-08-10'  ,'PU_CLERK'    ,    2500.00 ,           0.00 ,        114 ,            30 ),
(120,'Matthew'  ,'Weiss'    ,'MWEISS'   , '650.123.1234'    , '2004-07-18'  ,'ST_MAN'      ,    8000.00 ,           0.00 ,        100 ,            50     ),
(121,'Adam' ,'Fripp'    ,'AFRIPP'   , '650.123.2234'    , '2005-04-10'  ,'ST_MAN'          ,    8200.00 ,           0.00 ,        100 ,            50     ),
(122,'Payam'    ,'Kaufling' ,'PKAUFLIN' , '650.123.3234'    , '2003-05-01'  ,'ST_MAN'          ,    7900.00 ,           0.00 ,        100 ,            50 ),
(123,'Shanta'   ,'Vollman'  ,'SVOLLMAN' , '650.123.4234'    , '2005-10-10'  ,'ST_MAN'      ,    6500.00 ,           0.00 ,        100 ,            50     ),
(124,'Kevin'    ,'Mourgos'  ,'KMOURGOS' , '650.123.5234'    , '2007-11-16'  ,'ST_MAN'          ,    5800.00 ,           0.00 ,        100 ,            50 ),
(125,'Julia'    ,'Nayer'    ,'JNAYER'   , '650.124.1214'    , '2005-07-16'  ,'ST_CLERK'        ,    3200.00 ,           0.00 ,        120 ,            50 ),
(126,'Irene'    ,'Mikkilinen'   ,'IMIKKILI' , '650.124.1224'    , '2006-09-28'  ,'ST_CLERK'    ,    2700.00 ,           0.00 ,        120 ,            50 ),
(127,'James'    ,'Landry'   ,'JLANDRY'  , '650.124.1334'    , '2007-01-14'  ,'ST_CLERK'        ,    2400.00 ,           0.00 ,        120 ,            50 ),
(128,'Steven'   ,'Markle'   ,'SMARKLE'  , '650.124.1434'    , '2008-03-08'  ,'ST_CLERK'    ,    2200.00 ,           0.00 ,        120 ,            50     ),
(129,'Laura'    ,'Bissot'   ,'LBISSOT'  , '650.124.5234'    , '2005-08-20'  ,'ST_CLERK'        ,    3300.00 ,           0.00 ,        121 ,            50 ),
(130,'Mozhe'    ,'Atkinson' ,'MATKINSO' , '650.124.6234'    , '2005-10-30'  ,'ST_CLERK'        ,    2800.00 ,           0.00 ,        121 ,            50 ),
(131,'James'    ,'Marlow'   ,'JAMRLOW'  , '650.124.7234'    , '2005-02-16'  ,'ST_CLERK'        ,    2500.00 ,           0.00 ,        121 ,            50 ),
(132,'TJ'   ,'Olson'    ,'TJOLSON'  , '650.124.8234'    , '2007-04-10'  ,'ST_CLERK'        ,    2100.00 ,           0.00 ,        121 ,            50     ),
(133,'Jason'    ,'Mallin'   ,'JMALLIN'  , '650.127.1934'    , '2004-06-14'  ,'ST_CLERK'        ,    3300.00 ,           0.00 ,        122 ,            50 ),
(134,'Michael'  ,'Rogers'   ,'MROGERS'  , '650.127.1834'    , '2006-08-26'  ,'ST_CLERK'    ,    2900.00 ,           0.00 ,        122 ,            50     ),
(135,'Ki'   ,'Gee'  ,'KGEE' , '650.127.1734'    , '2007-12-12'  ,'ST_CLERK'                ,    2400.00 ,           0.00 ,        122 ,            50     ),
(136,'Hazel'    ,'Philtanker'   ,'HPHILTAN' , '650.127.1634'    , '2008-02-06'  ,'ST_CLERK'    ,    2200.00 ,           0.00 ,        122 ,            50 ),
(137,'Renske'   ,'Ladwig'   ,'RLADWIG'  , '650.121.1234'    , '2003-07-14'  ,'ST_CLERK'    ,    3600.00 ,           0.00 ,        123 ,            50     ),
(138,'Stephen'  ,'Stiles'   ,'SSTILES'  , '650.121.2034'    , '2005-10-26'  ,'ST_CLERK'    ,    3200.00 ,           0.00 ,        123 ,            50     ),
(139,'John' ,'Seo'  ,'JSEO' , '650.121.2019'    , '2006-02-12'  ,'ST_CLERK'                ,    2700.00 ,           0.00 ,        123 ,            50     ),
(140,'Joshua'   ,'Patel'    ,'JPATEL'   , '650.121.1834'    , '2006-04-06'  ,'ST_CLERK'    ,    2500.00 ,           0.00 ,        123 ,            50     ),
(141,'Trenna'   ,'Rajs' ,'TRAJS'    , '650.121.8009'    , '2003-10-17'  ,'ST_CLERK'        ,    3500.00 ,           0.00 ,        124 ,            50     ),
(142,'Curtis'   ,'Davies'   ,'CDAVIES'  , '650.121.2994'    , '2005-01-29'  ,'ST_CLERK'    ,    3100.00 ,           0.00 ,        124 ,            50     ),
(143,'Randall'  ,'Matos'    ,'RMATOS'   , '650.121.2874'    , '2006-03-15'  ,'ST_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50     ),
(144,'Peter'    ,'Vargas'   ,'PVARGAS'  , '650.121.2004'    , '2006-07-09'  ,'ST_CLERK'        ,    2500.00 ,           0.00 ,        124 ,            50 ),
(145,'John' ,'Russell'  ,'JRUSSEL'  , '011.44.1344.429' , '2004-10-01'  ,'SA_MAN'          ,   14000.00 ,           0.40 ,        100 ,            80     ),
(146,'Karen'    ,'Partners' ,'KPARTNER' , '011.44.1344.467' , '2005-01-05'  ,'SA_MAN'          ,   13500.00 ,           0.30 ,        100 ,            80 ),
(147,'Alberto'  ,'Errazuriz'    ,'AERRAZUR' , '011.44.1344.429' , '2005-03-10'  ,'SA_MAN'  ,   12000.00 ,           0.30 ,        100 ,            80     ),
(148,'Gerald'   ,'Cambrault'    ,'GCAMBRAU' , '011.44.1344.619' , '2007-10-15'  ,'SA_MAN'  ,   11000.00 ,           0.30 ,        100 ,            80     ),
(149,'Eleni'    ,'Zlotkey'  ,'EZLOTKEY' , '011.44.1344.429' , '2008-01-29'  ,'SA_MAN'          ,   10500.00 ,           0.20 ,        100 ,            80 ),
(150,'Peter'    ,'Tucker'   ,'PTUCKER'  , '011.44.1344.129' , '2005-01-30'  ,'SA_REP'          ,   10000.00 ,           0.30 ,        145 ,            80 ),
(151,'David'    ,'Bernstein'    ,'DBERNSTE' , '011.44.1344.345' , '2005-03-24'  ,'SA_REP'      ,    9500.00 ,           0.25 ,        145 ,            80 ),
(152,'Peter'    ,'Hall' ,'PHALL'    , '011.44.1344.478' , '2005-08-20'  ,'SA_REP'              ,    9000.00 ,           0.25 ,        145 ,            80 ),
(153,'Christo'  ,'Olsen'    ,'COLSEN'   , '011.44.1344.498' , '2006-03-30'  ,'SA_REP'      ,    8000.00 ,           0.20 ,        145 ,            80     ),
(154,'Nanette'  ,'Cambrault'    ,'NCAMBRAU' , '011.44.1344.987' , '2006-12-09'  ,'SA_REP'  ,    7500.00 ,           0.20 ,        145 ,            80     ),
(155,'Oliver'   ,'Tuvault'  ,'OTUVAULT' , '011.44.1344.486' , '2007-11-23'  ,'SA_REP'      ,    7000.00 ,           0.15 ,        145 ,            80     ),
(156,'Janette'  ,'King' ,'JKING'    , '011.44.1345.429' , '2004-01-30'  ,'SA_REP'          ,   10000.00 ,           0.35 ,        146 ,            80     ),
(157,'Patrick'  ,'Sully'    ,'PSULLY'   , '011.44.1345.929' , '2004-03-04'  ,'SA_REP'      ,    9500.00 ,           0.35 ,        146 ,            80     ),
(158,'Allan'    ,'McEwen'   ,'AMCEWEN'  , '011.44.1345.829' , '2004-08-01'  ,'SA_REP'          ,    9000.00 ,           0.35 ,        146 ,            80 ),
(159,'Lindsey'  ,'Smith'    ,'LSMITH'   , '011.44.1345.729' , '2005-03-10'  ,'SA_REP'      ,    8000.00 ,           0.30 ,        146 ,            80     ),
(160,'Louise'   ,'Doran'    ,'LDORAN'   , '011.44.1345.629' , '2005-12-15'  ,'SA_REP'      ,    7500.00 ,           0.30 ,        146 ,            80     ),
(161,'Sarath'   ,'Sewall'   ,'SSEWALL'  , '011.44.1345.529' , '2006-11-03'  ,'SA_REP'      ,    7000.00 ,           0.25 ,        146 ,            80     ),
(162,'Clara'    ,'Vishney'  ,'CVISHNEY' , '011.44.1346.129' , '2005-11-11'  ,'SA_REP'          ,   10500.00 ,           0.25 ,        147 ,            80 ),
(163,'Daniell'  ,'Greene'   ,'DGREENE'  , '011.44.1346.229' , '2007-03-19'  ,'SA_REP'      ,    9500.00 ,           0.15 ,        147 ,            80     ),
(164,'Mattea'   ,'Marvins'  ,'MMARVINS' , '011.44.1346.329' , '2008-01-24'  ,'SA_REP'      ,    7200.00 ,           0.10 ,        147 ,            80     ),
(165,'David'    ,'Lee'  ,'DLEE' , '011.44.1346.529' , '2008-02-23'  ,'SA_REP'                  ,    6800.00 ,           0.10 ,        147 ,            80 ),
(166,'Sundar'   ,'Ande' ,'SANDE'    , '011.44.1346.629' , '2008-03-24'  ,'SA_REP'          ,    6400.00 ,           0.10 ,        147 ,            80     ),
(167,'Amit' ,'Banda'    ,'ABANDA'   , '011.44.1346.729' , '2008-04-21'  ,'SA_REP'          ,    6200.00 ,           0.10 ,        147 ,            80     ),
(168,'Lisa' ,'Ozer' ,'LOZER'    , '011.44.1343.929' , '2005-03-11'  ,'SA_REP'              ,   11500.00 ,           0.25 ,        148 ,            80     ),
(169,'Harriso'  ,'Bloom'    ,'HBLOOM'   , '011.44.1343.829' , '2006-03-23'  ,'SA_REP'      ,   10000.00 ,           0.20 ,        148 ,            80     ),
(170,'Tayler'   ,'Fox'  ,'TFOX' , '011.44.1343.729' , '2006-01-24'  ,'SA_REP'              ,    9600.00 ,           0.20 ,        148 ,            80     ),
(171,'William'  ,'Smith'    ,'WSMITH'   , '011.44.1343.629' , '2007-02-23'  ,'SA_REP'      ,    7400.00 ,           0.15 ,        148 ,            80     ),
(172,'Elizabe'  ,'Bates'    ,'EBATES'   , '011.44.1343.529' , '2007-03-24'  ,'SA_REP'      ,    7300.00 ,           0.15 ,        148 ,            80     ),
(173,'Sundita'  ,'Kumar'    ,'SKUMAR'   , '011.44.1343.329' , '2008-04-21'  ,'SA_REP'      ,    6100.00 ,           0.10 ,        148 ,            80     ),
(174,'Ellen'    ,'Abel' ,'EABEL'    , '011.44.1644.429' , '2004-05-11'  ,'SA_REP'              ,   11000.00 ,           0.30 ,        149 ,            80 ),
(175,'Alyssa'   ,'Hutton'   ,'AHUTTON'  , '011.44.1644.429' , '2005-03-19'  ,'SA_REP'      ,    8800.00 ,           0.25 ,        149 ,            80     ),
(176,'Jonatho'  ,'Taylor'   ,'JTAYLOR'  , '011.44.1644.429' , '2006-03-24'  ,'SA_REP'      ,    8600.00 ,           0.20 ,        149 ,            80     ),
(177,'Jack' ,'Livingston'   ,'JLIVINGS' , '011.44.1644.429' , '2006-04-23'  ,'SA_REP'      ,    8400.00 ,           0.20 ,        149 ,            80     ),
(178,'Kimbere'  ,'Grant'    ,'KGRANT'   , '011.44.1644.429' , '2007-05-24'  ,'SA_REP'      ,    7000.00 ,           0.15 ,        149 ,             0     ),
(179,'Charles'  ,'Johnson'  ,'CJOHNSON' , '011.44.1644.429' , '2008-01-04'  ,'SA_REP'      ,    6200.00 ,           0.10 ,        149 ,            80     ),
(180,'Winston'  ,'Taylor'   ,'WTAYLOR'  , '650.507.9876'    , '2006-01-24'  ,'SH_CLERK'    ,    3200.00 ,           0.00 ,        120 ,            50     ),
(181,'Jean' ,'Fleaur'   ,'JFLEAUR'  , '650.507.9877'    , '2006-02-23'  ,'SH_CLERK'        ,    3100.00 ,           0.00 ,        120 ,            50     ),
(182,'Martha'   ,'Sullivan' ,'MSULLIVA' , '650.507.9878'    , '2007-06-21'  ,'SH_CLERK'    ,    2500.00 ,           0.00 ,        120 ,            50     ),
(183,'Girard'   ,'Geoni'    ,'GGEONI'   , '650.507.9879'    , '2008-02-03'  ,'SH_CLERK'    ,    2800.00 ,           0.00 ,        120 ,            50     ),
(184,'Nandita'  ,'Sarchand' ,'NSARCHAN' , '650.509.1876'    , '2004-01-27'  ,'SH_CLERK'    ,    4200.00 ,           0.00 ,        121 ,            50     ),
(185,'Alexis'   ,'Bull' ,'ABULL'    , '650.509.2876'    , '2005-02-20'  ,'SH_CLERK'        ,    4100.00 ,           0.00 ,        121 ,            50     ),
(186,'Julia'    ,'Dellinger'    ,'JDELLING' , '650.509.3876'    , '2006-06-24'  ,'SH_CLERK'    ,    3400.00 ,           0.00 ,        121 ,            50 ),
(187,'Anthony'  ,'Cabrio'   ,'ACABRIO'  , '650.509.4876'    , '2007-02-07'  ,'SH_CLERK'    ,    3000.00 ,           0.00 ,        121 ,            50     ),
(188,'Kelly'    ,'Chung'    ,'KCHUNG'   , '650.505.1876'    , '2005-06-14'  ,'SH_CLERK'        ,    3800.00 ,           0.00 ,        122 ,            50 ),
(189,'Jennife'  ,'Dilly'    ,'JDILLY'   , '650.505.2876'    , '2005-08-13'  ,'SH_CLERK'    ,    3600.00 ,           0.00 ,        122 ,            50     ),
(190,'Timothy'  ,'Gates'    ,'TGATES'   , '650.505.3876'    , '2006-07-11'  ,'SH_CLERK'    ,    2900.00 ,           0.00 ,        122 ,            50     ),
(191,'Randall'  ,'Perkins'  ,'RPERKINS' , '650.505.4876'    , '2007-12-19'  ,'SH_CLERK'    ,    2500.00 ,           0.00 ,        122 ,            50     ),
(192,'Sarah'    ,'Bell' ,'SBELL'    , '650.501.1876'    , '2004-02-04'  ,'SH_CLERK'            ,    4000.00 ,           0.00 ,        123 ,            50 ),
(193,'Britney'  ,'Everett'  ,'BEVERETT' , '650.501.2876'    , '2005-03-03'  ,'SH_CLERK'    ,    3900.00 ,           0.00 ,        123 ,            50     ),
(194,'Samuel'   ,'McCain'   ,'SMCCAIN'  , '650.501.3876'    , '2006-07-01'  ,'SH_CLERK'    ,    3200.00 ,           0.00 ,        123 ,            50     ),
(195,'Vance'    ,'Jones'    ,'VJONES'   , '650.501.4876'    , '2007-03-17'  ,'SH_CLERK'        ,    2800.00 ,           0.00 ,        123 ,            50 ),
(196,'Alana'    ,'Walsh'    ,'AWALSH'   , '650.507.9811'    , '2006-04-24'  ,'SH_CLERK'        ,    3100.00 ,           0.00 ,        124 ,            50 ),
(197,'Kevin'    ,'Feeney'   ,'KFEENEY'  , '650.507.9822'    , '2006-05-23'  ,'SH_CLERK'        ,    3000.00 ,           0.00 ,        124 ,            50 ),
(198,'Donald'   ,'OConnell' ,'DOCONNEL' , '650.507.9833'    , '2007-06-21'  ,'SH_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50     ),
(199,'Douglas'  ,'Grant'    ,'DGRANT'   , '650.507.9844'    , '2008-01-13'  ,'SH_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50     ),
(200,'Jennife'  ,'Whalen'   ,'JWHALEN'  , '515.123.4444'    , '2003-09-17'  ,'AD_ASST'     ,    4400.00 ,           0.00 ,        101 ,            10     ),
(201,'Michael'  ,'Hartstein'    ,'MHARTSTE' , '515.123.5555'    , '2004-02-17'  ,'MK_MAN'  ,   13000.00 ,           0.00 ,        100 ,            20     ),
(202,'Pat'  ,'Fay'  ,'PFAY' , '603.123.6666'    , '2005-08-17'  ,'MK_REP'                  ,    6000.00 ,           0.00 ,        201 ,            20     ),
(203,'Susan'    ,'Mavris'   ,'SMAVRIS'  , '515.123.7777'    , '2002-06-07'  ,'HR_REP'          ,    6500.00 ,           0.00 ,        101 ,            40 ),
(204,'Hermann'  ,'Baer' ,'HBAER'    , '515.123.8888'    , '2002-06-07'  ,'PR_REP'          ,   10000.00 ,           0.00 ,        101 ,            70     ),
(205,'Shelley'  ,'Higgins'  ,'SHIGGINS' , '515.123.8080'    , '2002-06-07'  ,'AC_MGR'      ,   12008.00 ,           0.00 ,        101 ,           110     ),
(206,'William'  ,'Gietz'    ,'WGIETZ'   , '515.123.8181'    , '2002-06-07'  ,'AC_ACCOUNT'  ,    8300.00 ,           0.00 ,        205 ,           110     );




INSERT INTO Locations (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID)
VALUES
(1000, '1297 Via Cola di Rie', '989', 'Roma', '', 'IT'),
(1100, '93091 Calle della Testa', '10934', 'Venice', '', 'IT'),
(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'),
(1300, '9450 Kamiya-cho', '6823', 'Hiroshima', '', 'JP'),
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
(1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'),
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
(1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'),
(2000, '40-5-12 Laogianggen', '190518', 'Beijing', '', 'CN'),
(2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'),
(2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'),
(2300, '198 Clementi North', '540198', 'Singapore', '', 'SG'),
(2400, '8204 Arthur St', '', 'London', '', 'UK'),
(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'),
(2600, '9702 Chester Road', '9629850 293', 'Stretford', 'Manchester', 'UK'),
(2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'),
(2800, 'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'),
(2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'),
(3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'),
(3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'),
(3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX');


CREATE TABLE Salesman ( 
    salesman_id INT PRIMARY KEY, 
    name VARCHAR(20) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    commission DECIMAL(4, 2) NOT NULL 
); 
  
INSERT INTO Salesman (salesman_id, name, city, commission) 
VALUES 
    (5001, 'James Hoog', 'New York', 0.15), 
    (5002, 'Nail Knite', 'Paris', 0.13), 
    (5005, 'Pit Alex', 'London', 0.11), 
    (5006, 'Mc Lyon', 'Paris', 0.14), 
    (5007, 'Paul Adam', 'Rome', 0.13), 
    (5003, 'Lauson Hen', 'San Jose', 0.12); 
 
 
 
 
 
 
 
 
 
 
CREATE TABLE Customer ( 
    customer_id INT PRIMARY KEY, 
    cust_name VARCHAR(20) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    grade INT, 
    salesman_id INT, 
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id) 
); 
  
INSERT INTO Customer (customer_id, cust_name, city, grade, salesman_id) 
VALUES 
    (3002, 'Nick Rimando', 'New York', 100, 5001), 
    (3007, 'Brad Davis', 'New York', 200, 5001), 
    (3005, 'Graham Zusi', 'California', 200, 5002), 
    (3008, 'Julian Green', 'London', 300, 5002), 
    (3004, 'Fabian Johnson', 'Paris', 300, 5006), 
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
    (3001, 'Brad Guzan', 'London', NULL, 5005); 
 
 
 
 
 
 
 
 
 
CREATE TABLE Orders ( 
    ord_no INT PRIMARY KEY, 
    purch_amt DECIMAL(8, 2) NOT NULL, 
    ord_date DATE NOT NULL, 
    customer_id INT, 
    salesman_id INT, 
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id), 
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id) 
); 
  
INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) 
VALUES 
    (70001, 150.5, '2012-10-05', 3005, 5002), 
    (70009, 270.65, '2012-09-10', 3001, 5005), 
    (70002, 65.26, '2012-10-05', 3002, 5001), 
    (70004, 110.5, '2012-08-17', 3009, 5003), 
    (70007, 948.5, '2012-09-10', 3005, 5002), 
    (70005, 2400.6, '2012-07-27', 3007, 5001), 
    (70008, 5760, '2012-09-10', 3002, 5001), 
    (70010, 1983.43, '2012-10-10', 3004, 5006), 
    (70003, 2480.4, '2012-10-10', 3009, 5003), 
    (70012, 250.45, '2012-06-27', 3008, 5002), 
    (70011, 75.29, '2012-08-17', 3003, 5007), 
    (70013, 3045.6, '2012-04-25', 3002, 5001); 
 
 
 
 
CREATE TABLE Company_mast ( 
    COM_ID INT PRIMARY KEY, 
    COM_NAME VARCHAR(30) NOT NULL 
); 
  
INSERT INTO Company_mast (COM_ID, COM_NAME) 
VALUES 
    (11, 'Samsung'), 
    (12, 'iBall'), 
    (13, 'Epsion'), 
    (14, 'Zebronics'), 
    (15, 'Asus'), 
    (16, 'Frontech'); 
 
 
create table item_mast ( 
PRO_ID int PRIMARY KEY, 
PRO_NAME varchar(50), 
PRO_PRICE float, 
PRO_COM int) 
  
 
 
 
 
 
 
insert into item_mast values  
(101,'Mother Board', 3200.00,15), 
(102, 'Key Board', 450.00, 16), 
(103, 'ZIP drive', 250.00,14), 
(104, 'Speaker' , 550.00,16), 
(105, 'Monitor' , 5000.00,11), 
(106, 'DVD drive', 900.00, 12), 
(107, 'CD drive', 800.00, 12), 
(108, 'Printer', 2600.00, 13), 
(109, 'Refill cartridge' , 350.00, 13), 
(110, ' Mouse', 250.00, 12); 
 
CREATE TABLE DEPARTMENTSS ( 
    DPT_CODE INT PRIMARY KEY, 
    DPT_NAME VARCHAR(20) NOT NULL, 
    DPT_ALLOTMENT FLOAT NOT NULL 
); 
  
INSERT INTO DEPARTMENTSS (DPT_CODE, DPT_NAME, DPT_ALLOTMENT) 
VALUES 
(57, 'IT', 65000), 
(63, 'Finance', 15000), 
(47, 'HR', 240000), 
(27, 'RD', 55000), 
(89, 'QC', 75000); 
 
 CREATE TABLE EMP_DETAILS ( 
    EMP_IDNO INT PRIMARY KEY, 
    EMP_FNAME VARCHAR(50) NOT NULL, 
    EMP_LNAME VARCHAR(50) NOT NULL, 
    EMP_DEPT INT NOT NULL 
); 
  
INSERT INTO EMP_DETAILS (EMP_IDNO, EMP_FNAME, EMP_LNAME, 
EMP_DEPT) 
VALUES  
(127323, 'Michale', 'Robbin', 57), 
(526689, 'Carlos', 'Snares', 63), 
(843795, 'Enric', 'Dosio', 57), 
(328717, 'Jhon', 'Snares', 63), 
(444527, 'Joseph', 'Dosni', 47), 
(659831, 'Zanifer', 'Emily', 47), 
(847674, 'Kuleswar', 'Sitaraman', 57), 
(748681, 'Henrey', 'Gabriel', 47), 
(555935, 'Alex', 'Manuel', 57), 
(539569, 'George', 'Mardy', 27), 
(733843, 'Mario', 'Saule', 63), 
(631548, 'Alan', 'Snappy', 27), 
(839139, 'Maria', 'Foster', 57);





---Q1.
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employee e
JOIN departments d
ON e.department_id = d.department_id;


---Q2.
SELECT E.first_name,E.last_name, 
   D.department_name, L.city, L.state_province
     FROM employee E 
      JOIN departments D  
        ON E.department_id = D.department_id  
          JOIN locations L
           ON D.location_id = L.location_id;

---Q3.
SELECT first_name, last_name, salary, JOB_ID
FROM employee;





---Q4.
SELECT E.first_name , E.last_name , 
       E.department_id ,  D.department_name 
         FROM employee E 
         JOIN departments D 
          ON E.department_id = D.department_id 
          AND E.department_id IN (60 , 50)
          ORDER BY E.last_name;


SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employee e
JOIN departments d ON e.department_id = d.department_id
WHERE e.department_id IN (60, 50);

---Q5.
SELECT E.first_name,E.last_name,
   D.department_name, L.city, L.state_province
     FROM employee E 
      JOIN departments D  
       ON E.department_id = D.department_id 
        JOIN locations L 
         ON D.location_id = L.location_id 
           WHERE E.first_name LIKE  '%z%';


---Q6.
SELECT E.first_name, E.last_name, D.department_id, D.department_name 
 FROM employee E 
   RIGHT OUTER JOIN departments D
     ON E.department_id = D.department_id;



---Q7.
SELECT E.first_name, E.last_name, E.salary 
  FROM employee E 
   JOIN employee S
     ON E.salary < S.salary 
      AND S.employee_id = 130;


---Q8.
SELECT E.first_name AS "Employee Name", 
   M.first_name AS "Manager"
     FROM employee E 
       JOIN employee M
         ON E.manager_id = M.employee_id;

---Q9.
SELECT D.department_name , L.city , L.state_province
  FROM  departments D 
    JOIN locations L 
      ON  D.location_id = L.location_id;

---Q11.
SELECT E.first_name AS "Employee Name",
   M.first_name AS "Manager"
    FROM employee E 
      LEFT OUTER JOIN employee M
       ON E.manager_id = M.employee_id;

---Q12.
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID from Employee
WHERE LAST_NAME = 'Taylor'
ORDER BY DEPARTMENT_ID;


---Q13.
SELECT d.department_name, AVG(e.Salary) AS AverageSalary, COUNT(CASE WHEN e.COMMISSION_PCT IS NOT NULL THEN 1 END) AS CommissionEmployeeCount
FROM Departments AS d
JOIN Employee AS e
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY d.department_name;


---Q14.
SELECT 
  Departments.department_name, 
  Employee.first_name, 
  Employee.last_name 
FROM 
  Employee 
  INNER JOIN Departments ON Employee.DEPARTMENT_ID = Departments.DEPARTMENT_ID;


---Q15.
SELECT department_name, first_name + ' ' + last_name AS name_of_manager, city
FROM departments D
JOIN employee E
ON D.manager_id=E.employee_id
JOIN locations L
ON D.location_id = L.location_id;

---Q16.
SELECT first_name, last_name, salary,CITY
FROM employee e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l  ON D.location_id = L.location_id 
		 WHERE CITY  = 'London'

---Q17.
SELECT Departments.Department_Name, Departments.Department_ID, COUNT(Employee.Employee_ID) AS Employee_Count
FROM Departments
LEFT JOIN Employee
ON Departments.Department_ID = Employee.Department_ID
GROUP BY Departments.Department_Name, Departments.Department_ID

---Q18.
SELECT salesman.name AS "Salesman",
customer.cust_name, customer.city 
FROM Salesman,customer 
WHERE Salesman.city=customer.city;

---Q19.
SELECT  a.ord_no,a.purch_amt,
b.cust_name,b.city 
FROM orders a,customer b 
WHERE a.customer_id=b.customer_id 
AND a.purch_amt BETWEEN 500 AND 2000;



---Q20.
SELECT a.cust_name AS "Customer Name", 
a.city, b.name AS "Salesman", b.commission 
FROM customer a 
INNER JOIN salesman b 
ON a.salesman_id=b.salesman_id;

---Q21.

SELECT c.cust_name AS "Customer Name", c.city AS "Customer City", 
       s.name AS "Salesman", s.commission
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
JOIN salesman s ON c.salesman_id = s.salesman_id
WHERE s.commission > 0.12


---Q22.
SELECT c.cust_name AS "Customer Name", c.city AS "Customer City", s.name AS "Salesman Name", 
 s.city AS "Salesman City", s.commission
FROM salesman s
INNER JOIN orders o ON s.salesman_id = o.salesman_id
INNER JOIN customer c ON o.customer_id = c.customer_id
WHERE s.city <> c.city AND s.commission > 0.12;


---Q23.

SELECT o.ord_no, o.ord_date, o.purch_amt, c.cust_name AS "Customer Name", c.grade, s.name AS "Salesman", s.commission
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
JOIN Orders od ON o.ord_no = o.ord_no
JOIN salesman s ON c.salesman_id = s.salesman_id AND s.salesman_id = od.salesman_id;


---Q24.
SELECT o.ord_no, o.ord_date, o.purch_amt, c.cust_name, s.name AS salesman_name, s.commission
FROM orders o
INNER JOIN customer c ON o.customer_id = c.customer_id
INNER JOIN salesman s ON c.salesman_id = s.salesman_id;

---Q25.
SELECT c.cust_name AS "Customer Name", 
       c.city AS "Customer City", 
       c.grade, 
       s.name AS "Salesman", 
       s.city AS "Salesman City"
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
JOIN salesman s ON o.salesman_id = s.salesman_id
ORDER BY c.customer_id ASC;

---Q26.
SELECT c.cust_name, c.city AS "customer city", c.grade, 
       s.name AS "Salesman", s.city AS "salesmancity"
FROM customer c 
JOIN salesman s ON c.salesman_id = s.salesman_id 
WHERE c.grade < 300
ORDER BY c.customer_id ASC;

---Q27.
SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY o.ord_date ASC;

---Q28.
SELECT c.cust_name AS "Customer Name", c.city AS "Customer City",
       o.ord_no AS "Order Number", o.ord_date AS "Order Date", o.purch_amt AS "Order Amount",
       s.name AS "Salesperson Name", s.commission AS "Commission"
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN salesman s ON c.salesman_id = s.salesman_id
ORDER BY o.ord_date ASC;

---Q29.
SELECT s.name AS Salesperson, COUNT(c.customer_id) AS Num_Customers
FROM salesman s
LEFT JOIN customer c ON s.salesman_id = c.salesman_id
GROUP BY s.salesman_id, s.name
ORDER BY Num_Customers ASC;


---Q30.
SELECT s.name AS Salesman, c.cust_name AS Customer, c.city AS CustomerCity, 
  c.grade, o.ord_no AS OrderNumber, o.ord_date AS OrderDate, o.purch_amt AS OrderAmount
FROM salesman s
LEFT JOIN customer c ON s.salesman_id = c.salesman_id
LEFT JOIN orders o ON c.customer_id = o.customer_id
--LEFT JOIN grade g ON c.grade = c.grade
ORDER BY s.salesman_id;


---Q31.
SELECT s.name AS Salesman, c.cust_name AS Customer, c.city AS Customer_City, 
o.ord_no AS Order_No, o.ord_date AS Order_Date, o.purch_amt AS Order_Amount
FROM salesman s
LEFT JOIN customer c ON s.salesman_id = c.salesman_id
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.purch_amt >= 2000 OR o.ord_no IS NULL
ORDER BY s.salesman_id;


---Q32.
SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt 
FROM customer c 
LEFT JOIN orders o ON c.customer_id = o.customer_id 
WHERE c.customer_id IN (SELECT customer_id FROM orders) 
OR c.customer_id NOT IN (SELECT customer_id FROM customer WHERE customer_id IN (SELECT customer_id FROM orders));

---Q33.
SELECT c.cust_name AS "Customer Name", c.city AS "Customer City", 
o.ord_no AS "Order Number", o.ord_date AS "Order Date", 
o.purch_amt AS "Purchase Amount"
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE (c.grade IS NOT NULL AND o.ord_no IS NOT NULL) 
OR (c.grade IS NULL AND o.ord_no IS NOT NULL AND c.customer_id NOT IN (SELECT customer_id FROM customer))
ORDER BY c.cust_name, o.ord_date;

---Q34.
SELECT *
FROM salesman
CROSS JOIN customer;

---Q35.
SELECT *
FROM salesman
CROSS JOIN customer
WHERE salesman.city = customer.city;


---Q36.
SELECT *
FROM salesman
CROSS JOIN customer
WHERE salesman.city is not null and grade is not null;

---Q37.



