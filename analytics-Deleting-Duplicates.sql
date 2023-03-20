REM   Script: Analytics - Deleting Duplicates
REM   SQL from the KISS (Keep It Simply SQL) Analytic video series by Developer Advocate Connor McDonald. This script looks at how to delete duplicate rows with the ROW_NUMBER function.

Run this script standalone, or take it as part of the complete Analytics class at https://tinyurl.com/devgym-classes

drop table perth_weather purge;

create table perth_weather (
SAMPLED             DATE  not null,       
MIN_TEMP            NUMBER(8,2)  not null,
MAX_TEMP            NUMBER(8,2)  not null,
RAINFALL            NUMBER(8,2)  not null,
EVAP                NUMBER(8,2)  not null,
SUNSHINE            NUMBER(8,2)  not null,
WIND_DIR            VARCHAR2(6) ,
MAX_WIND            NUMBER(8,2) ,
MAX_WIND_TIME       VARCHAR2(8) ,
TEMP_9AM            NUMBER(8,2)  not null,
HUMIDITY_9AM        NUMBER(8,2) ,
CLOUD_9AM           NUMBER(8,2) ,
WIND_DIR_9AM        VARCHAR2(6) ,
WIND_SPEED_9AM      NUMBER(8,2) ,
PRESSURE_9AM        NUMBER(8,2) ,
TEMP_3PM            NUMBER(8,2)  not null,
HUMIDITY_3PM        NUMBER(8,2) ,
CLOUD_3PM           NUMBER(8,2) ,
WIND_DIR_3PM        VARCHAR2(6) ,
WIND_SPEED_3PM      NUMBER(8,2) ,
PRESSURE_3PM        NUMBER(8,2) 
);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('01/MAR/16','DD/MON/RR'),15.7,25.3,0,7.4,11.2,'SSW',37,'13:52',20.7,63,2,'SE',9,1020.3,23.6,48,0,'SSW',20,1017.7);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('02/MAR/16','DD/MON/RR'),13.3,31.4,0,8.4,11.9,'SSW',28,'15:33',22.4,55,1,'E',9,1019.3,30.8,34,0,'SW',15,1015.7);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('03/MAR/16','DD/MON/RR'),15.1,26.8,0,8.4,9.5,'SSW',39,'16:04',21.8,57,6,'SW',9,1017.1,24.8,58,3,'WSW',15,1016);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('04/MAR/16','DD/MON/RR'),15.4,26.9,0,7.6,11.9,'SW',37,'16:05',19.9,65,1,'S',15,1020.5,25.7,53,1,'SW',19,1016.5);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('05/MAR/16','DD/MON/RR'),17.3,28.7,0,7.8,11.9,'SW',33,'16:24',21.9,57,1,'E',11,1019.3,25.9,49,1,'SSW',19,1016.3);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('06/MAR/16','DD/MON/RR'),18.5,32,0,8.4,11.8,'ESE',31,'23:34',23.8,59,5,'E',13,1019.7,31.2,34,3,'E',11,1016.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('07/MAR/16','DD/MON/RR'),19,33,0,8,11.8,'NE',39,'09:02',24,57,1,'E',15,1019.3,32.1,29,1,'SSE',13,1015.7);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('08/MAR/16','DD/MON/RR'),19.5,35.1,0,9.4,11.7,'SW',31,'16:13',26.1,45,0,'ENE',13,1015.8,33.3,27,1,'W',17,1012);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('09/MAR/16','DD/MON/RR'),17.8,37.2,0,11,11.7,'SW',28,'17:08',27.7,43,1,'NE',11,1012.9,34.4,27,1,'WSW',13,1009.9);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('10/MAR/16','DD/MON/RR'),16.5,29.8,0,8,7.6,'SW',39,'16:05',23.5,74,7,'S',11,1012.5,27.8,39,7,'SW',17,1010.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('11/MAR/16','DD/MON/RR'),18.7,29.5,0,8.6,11.1,'SW',33,'13:34',23.2,55,1,'SSE',13,1015.9,27.6,49,1,'SW',20,1013.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('12/MAR/16','DD/MON/RR'),18.7,33,0,8.4,11.2,'SSW',39,'15:29',24.9,57,0,'ESE',9,1016.1,29.7,49,0,'SW',17,1012.7);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('13/MAR/16','DD/MON/RR'),21.1,39.7,0,8.4,10.6,'E',31,'08:02',29.5,42,2,'E',11,1014.6,38.6,17,2,'E',11,1011.3);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('14/MAR/16','DD/MON/RR'),26,39.8,0,13.8,10.8,'NE',48,'09:13',31,31,7,'NE',24,1013.4,39.3,17,7,'ENE',15,1008.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('15/MAR/16','DD/MON/RR'),22.6,28.9,0,11,8.9,'WSW',26,'11:40',25.8,73,3,'W',7,1009.8,27.2,64,7,'W',13,1007.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('16/MAR/16','DD/MON/RR'),19.5,26.2,0,6.8,9.4,'SW',43,'15:16',20.3,69,7,'S',17,1012.1,24.6,50,1,'SSW',22,1010.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('17/MAR/16','DD/MON/RR'),16.2,28.5,0,7.6,9.6,'SE',39,'21:29',19.9,53,1,'SE',15,1016.1,27.9,26,3,'ESE',11,1011.4);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('18/MAR/16','DD/MON/RR'),16.9,29.8,0,9.8,10.7,'ESE',41,'00:25',21.3,54,1,'ESE',13,1014.5,28.9,38,7,'ESE',13,1010);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('19/MAR/16','DD/MON/RR'),20.7,25.2,0,9,1.2,'ENE',37,'01:34',21.7,54,7,'ESE',7,1012,25.1,59,7,'E',11,1009);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('20/MAR/16','DD/MON/RR'),17.1,31.6,1.2,2,10.9,'SW',28,'15:29',24.4,64,1,'E',9,1013.6,30.2,46,3,'SSW',13,1010.3);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('21/MAR/16','DD/MON/RR'),19.1,33.3,0.2,8,6.8,'SW',31,'15:44',26.4,52,7,'ENE',6,1011.5,27.8,46,7,'SSW',17,1009.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('01/FEB/16','DD/MON/RR'),9.9,22.9,0.2,5.6,11.9,'SW',41,'16:24',18.1,49,1,'SSE',15,1011.7,21.7,40,2,'SSW',19,1010.8);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('02/FEB/16','DD/MON/RR'),10,26.4,0,7.2,12.7,'SSW',41,'15:14',18.6,49,0,'SSE',13,1019.1,25.1,45,0,'SSW',17,1016.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('03/FEB/16','DD/MON/RR'),16.2,31.5,0,8.8,12.8,'SE',50,'13:13',22.7,50,0,'ENE',15,1020.9,30.5,22,1,'SE',11,1017);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('04/FEB/16','DD/MON/RR'),16.4,34.4,0,9.2,12.6,'SSW',35,'17:10',25.2,43,1,'ENE',11,1019.3,34,19,0,'ENE',11,1014.4);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('05/FEB/16','DD/MON/RR'),15.5,36.1,0,11.4,12.7,'SW',37,'14:06',28.9,32,0,'NNE',11,1015,32.1,26,0,'SW',17,1012.8);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('06/FEB/16','DD/MON/RR'),19.1,34.3,0,11.8,12.7,'SSW',33,'16:20',27.1,40,0,'NE',9,1015.3,31,37,1,'WSW',19,1013.3);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('07/FEB/16','DD/MON/RR'),20.1,40.4,0,12,12.7,'ENE',35,'03:01',27.2,45,0,'ENE',17,1015.8,39.8,12,1,'SSE',9,1012.9);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('08/FEB/16','DD/MON/RR'),21.2,42.5,0,13.2,12.5,'NE',39,'08:36',33.2,18,0,'NE',22,1015.7,42.1,10,0,'NE',11,1012.2);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('09/FEB/16','DD/MON/RR'),19.2,41.2,0,13.4,12.6,'W',28,'15:31',33.4,19,0,'NE',9,1014.8,39.8,12,0,'WSW',13,1012.3);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('10/FEB/16','DD/MON/RR'),21.7,40.3,0,12,12.5,'SW',26,'12:41',30.4,30,1,'NE',9,1013.8,37.2,20,1,'WSW',13,1011.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('11/FEB/16','DD/MON/RR'),20,33.7,0,11.8,12.3,'SW',30,'14:56',28,63,0,'N',4,1013,32.9,37,1,'SW',19,1011.3);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('12/FEB/16','DD/MON/RR'),19.1,29.8,0,9.8,12.4,'SW',41,'13:44',25.2,66,1,'S',7,1017.3,28.2,50,1,'SW',20,1015.7);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('13/FEB/16','DD/MON/RR'),19,31.3,0,10,12.5,'SW',39,'16:40',22.6,57,1,'SE',17,1021.3,31,24,0,'SSW',19,1017.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('14/FEB/16','DD/MON/RR'),16.6,32.3,0,9.6,12,'SE',35,'01:34',21.9,46,3,'E',15,1021.4,31.4,25,1,'SE',15,1017.3);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('15/FEB/16','DD/MON/RR'),17.9,33.9,0,11.8,12.1,'ESE',43,'08:08',23.2,50,0,'E',13,1021.1,32.6,23,1,'ESE',15,1016.3);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('16/FEB/16','DD/MON/RR'),19.8,39.5,0,10.6,11.5,'ENE',44,'09:17',26.1,35,2,'ENE',22,1016.4,38.3,16,1,'NE',11,1012.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('17/FEB/16','DD/MON/RR'),19.8,33.1,0,9.2,12.4,'WSW',35,'17:32',31.4,22,1,'NW',9,1012.3,27.8,51,1,'WSW',17,1012);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('18/FEB/16','DD/MON/RR'),18.7,31.1,0,11.4,10,'SE',39,'23:07',23.2,57,6,'SSE',13,1016.7,29.7,37,6,'SE',13,1013.8);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('19/FEB/16','DD/MON/RR'),19.7,30.6,0,9,12.1,'SE',43,'11:47',24.2,49,1,'ESE',15,1016.1,29.9,34,3,'ESE',17,1012.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('20/FEB/16','DD/MON/RR'),19.1,33.6,0,11.2,10.3,'ESE',35,'00:05',24.1,53,1,'E',7,1012.1,31.7,34,3,'WSW',17,1007.9);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('21/FEB/16','DD/MON/RR'),18.3,26.7,0,8.4,9.2,'WNW',30,'12:55',23.5,68,6,'NW',13,1011.7,25.2,58,5,'WNW',11,1011.3);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('22/FEB/16','DD/MON/RR'),18.8,24.9,0.2,5.8,9.2,'SW',37,'14:05',21.6,60,6,'SW',17,1016.9,22.7,53,5,'WSW',20,1016.5);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('23/FEB/16','DD/MON/RR'),13.1,24.5,0,8,8.7,'WSW',35,'14:45',20.5,61,6,'NNW',4,1016.3,22.6,49,3,'WSW',19,1014);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('24/FEB/16','DD/MON/RR'),12.5,24,0.2,8.2,12,'SW',43,'18:33',19.1,55,2,'SE',11,1019,22.1,41,1,'SSW',20,1016.8);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('25/FEB/16','DD/MON/RR'),14.7,28.3,0,6.8,12.2,'SW',39,'15:42',20.3,47,0,'ESE',9,1021.9,25.5,39,0,'SSW',20,1018.5);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('26/FEB/16','DD/MON/RR'),17,36.8,0,10,12.1,'NE',31,'09:39',23.3,42,0,'E',13,1018.8,36.5,22,2,'S',9,1013.4);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('27/FEB/16','DD/MON/RR'),20.8,38,0,10.8,10.8,'NW',41,'14:24',33,31,0,'NNE',17,1012.4,32.9,38,1,'WNW',20,1010.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('28/FEB/16','DD/MON/RR'),21.6,27.4,0,8.8,10,'SSW',28,'16:12',23.2,69,7,'W',11,1015.9,25.8,54,1,'SW',15,1014.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('29/FEB/16','DD/MON/RR'),17.3,25.2,0,7.6,10.1,'WSW',33,'15:25',21.2,65,5,'W',11,1016.3,23.7,55,2,'WSW',17,1016.4);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('01/JAN/16','DD/MON/RR'),17.1,35,0,13.2,12.2,'ESE',44,'02:24',23.2,48,3,'ESE',17,1015.9,33.5,23,7,'ESE',15,1010.8);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('02/JAN/16','DD/MON/RR'),21.9,36,0,13.2,11.4,'SSW',43,'16:55',26.4,46,2,'E',13,1011.4,34.6,30,1,'SSW',17,1008);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('03/JAN/16','DD/MON/RR'),23.1,36.7,0,10.8,12.3,'SW',35,'14:55',28.9,44,4,'E',9,1012.1,32.3,37,4,'WSW',22,1009.5);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('04/JAN/16','DD/MON/RR'),23.4,31.5,0,13.4,4.2,'WSW',28,'11:36',28,47,8,'N',6,1010.9,29.3,42,7,'W',13,1010.2);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('05/JAN/16','DD/MON/RR'),20.4,27.9,0,7,10.3,'W',26,'12:51',23.1,72,6,'N',9,1012.2,26.5,62,1,'WSW',15,1010.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('06/JAN/16','DD/MON/RR'),19.9,33.5,0,6.4,12.6,'W',31,'14:54',26.1,59,0,'E',6,1014.8,29.7,53,1,'W',17,1012.4);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('07/JAN/16','DD/MON/RR'),21.7,41.9,0,11.8,12.6,'NE',44,'13:20',33.2,28,1,'ENE',19,1014.6,41,15,5,'NE',13,1010.5);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('08/JAN/16','DD/MON/RR'),25.6,37.7,0,15.4,6.1,null,null,null,30.5,39,6,'ENE',11,1012.3,34.7,26,7,'ESE',19,1010.9);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('09/JAN/16','DD/MON/RR'),18.9,34.7,0,10.4,11.6,'WNW',35,'14:54',29.2,43,1,'NNE',9,1012.4,31.2,45,5,'WNW',17,1009.5);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('10/JAN/16','DD/MON/RR'),18.9,26.4,0,9.6,4.7,'SSW',28,'14:26',23,66,7,'W',11,1013.1,24.3,53,5,'WSW',17,1012.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('11/JAN/16','DD/MON/RR'),16.5,27.4,0,5.4,7.9,'W',30,'15:42',22,72,4,'N',9,1013,26.2,56,3,'W',15,1011.8);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('12/JAN/16','DD/MON/RR'),18.6,26,0,7,7,'SW',39,'12:20',21.4,83,7,'W',17,1014.3,24.8,57,5,'SSW',19,1014.7);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('13/JAN/16','DD/MON/RR'),15.3,31,0.6,8.8,13.3,'ESE',43,'23:52',20.7,50,6,'ESE',17,1023.4,30,22,1,'SE',17,1019.7);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('14/JAN/16','DD/MON/RR'),15.9,34.2,0,12.4,13.2,'ESE',37,'02:03',22.7,42,1,'ENE',15,1023.8,32.3,19,1,'ENE',13,1018.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('15/JAN/16','DD/MON/RR'),19.1,36.7,0,13.4,11.6,'ENE',33,'10:37',29.6,29,1,'NE',15,1019,35.5,17,3,'SSW',17,1014.9);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('16/JAN/16','DD/MON/RR'),21.2,38.7,0,11.4,8.4,'NNE',39,'08:36',32.4,27,7,'NE',20,1013.5,35.2,24,6,'WSW',17,1011);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('17/JAN/16','DD/MON/RR'),19.9,31.4,0,9.6,9.2,'SSW',31,'16:48',27.9,54,5,'WSW',7,1010.5,29.7,48,7,'SW',13,1007.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('18/JAN/16','DD/MON/RR'),18.2,23.6,1.2,8,2.9,'W',50,'16:20',19.9,84,8,'WSW',13,1006.2,22.6,60,7,'WSW',13,1004.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('19/JAN/16','DD/MON/RR'),13.9,26.3,0.4,5.2,5.5,'NE',41,'17:08',18.6,66,6,'NE',17,1005.2,24.5,42,5,'SSW',15,1003.5);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('20/JAN/16','DD/MON/RR'),14.6,26.7,0.4,3.1,9,'WSW',31,'16:40',21.3,67,2,null,0,1008.4,26,54,7,'SW',15,1007.2);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('21/JAN/16','DD/MON/RR'),16.8,27.5,0,6.4,8.6,'SSW',37,'17:11',21.3,64,7,'S',11,1014.2,27,52,3,'SSW',19,1012.9);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('22/JAN/16','DD/MON/RR'),16.7,28.9,0,8.2,13.1,'SW',35,'16:56',22.1,51,1,'ENE',13,1018.2,26.2,49,1,'SSW',19,1015.1);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('23/JAN/16','DD/MON/RR'),17.3,34.9,0,10,11.1,'SW',37,'15:41',27.8,45,1,'E',9,1014.8,32,36,2,'SW',19,1011.5);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('24/JAN/16','DD/MON/RR'),19.2,35.6,1,9.4,12.8,'SW',37,'15:52',27.1,59,1,'E',9,1015.3,32.6,44,4,'SSW',20,1011.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('25/JAN/16','DD/MON/RR'),20.8,33.6,4.4,10.6,9.2,'SSW',31,'17:10',25.5,67,5,'E',13,1010.6,32.6,50,2,'S',13,1007.9);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('26/JAN/16','DD/MON/RR'),21.1,33.1,0.8,6.6,11.6,'SW',43,'15:57',27.1,61,3,'ESE',9,1012.5,29.9,51,4,'SSW',22,1010.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('27/JAN/16','DD/MON/RR'),21.5,33.1,0,11.4,11.1,'E',35,'23:19',25.3,52,7,'ESE',11,1015.6,32,31,7,'SSE',19,1013.2);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('28/JAN/16','DD/MON/RR'),17.6,34.4,0,11.2,11.9,'E',37,'07:43',23.3,55,1,'E',15,1016.9,33.7,26,3,'ESE',11,1013.5);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('29/JAN/16','DD/MON/RR'),19.5,37.1,0,12.6,11.2,'ENE',43,'09:27',24.5,49,7,'ENE',19,1013.1,35.9,23,4,'NE',19,1008.6);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date('30/JAN/16','DD/MON/RR'),24.5,27,0,15.8,1.3,'S',35,'11:35',27,39,7,'E',7,1006.3,20.5,88,8,'ENE',7,1006);

Insert into perth_weather (SAMPLED,MIN_TEMP,MAX_TEMP,RAINFALL,EVAP,SUNSHINE,WIND_DIR,MAX_WIND,MAX_WIND_TIME,TEMP_9AM,HUMIDITY_9AM,CLOUD_9AM,WIND_DIR_9AM,WIND_SPEED_9AM,PRESSURE_9AM,TEMP_3PM,HUMIDITY_3PM,CLOUD_3PM,WIND_DIR_3PM,WIND_SPEED_3PM,PRESSURE_3PM) 
 values (to_date;
