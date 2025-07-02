CREATE TABLE "NETFLIXDB"."PUBLIC"."rawtitles" ( index NUMBER(38, 0) , id VARCHAR , title VARCHAR , type VARCHAR , release_year NUMBER(38, 0) , age_certification VARCHAR , runtime NUMBER(38, 0) , genres VARCHAR , production_countries VARCHAR , seasons NUMBER(38, 1) , imdb_id VARCHAR , imdb_score NUMBER(38, 1) , imdb_votes NUMBER(38, 1) ); 

CREATE TEMP FILE FORMAT "NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:25:39.326Z"
	TYPE=CSV
    SKIP_HEADER=1
    FIELD_DELIMITER=','
    TRIM_SPACE=TRUE
    FIELD_OPTIONALLY_ENCLOSED_BY='"'
    REPLACE_INVALID_CHARACTERS=TRUE
    DATE_FORMAT=AUTO
    TIME_FORMAT=AUTO
    TIMESTAMP_FORMAT=AUTO; 

COPY INTO "NETFLIXDB"."PUBLIC"."rawtitles" 
FROM (SELECT $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13
	FROM '@"NETFLIXDB"."PUBLIC"."__snowflake_temp_import_files__"') 
FILES = ('2025-07-02T04:25:15.199Z/raw_titles.csv') 
FILE_FORMAT = '"NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:25:39.326Z"' 
ON_ERROR=ABORT_STATEMENT 


----------------------------------------------------

CREATE TABLE "NETFLIXDB"."PUBLIC"."rawcredits" ( index NUMBER(38, 0) , person_id NUMBER(38, 0) , id VARCHAR , name VARCHAR , character VARCHAR , role VARCHAR ); 

CREATE TEMP FILE FORMAT "NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:26:40.255Z"
	TYPE=CSV
    SKIP_HEADER=1
    FIELD_DELIMITER=','
    TRIM_SPACE=TRUE
    FIELD_OPTIONALLY_ENCLOSED_BY='"'
    REPLACE_INVALID_CHARACTERS=TRUE
    DATE_FORMAT=AUTO
    TIME_FORMAT=AUTO
    TIMESTAMP_FORMAT=AUTO; 

COPY INTO "NETFLIXDB"."PUBLIC"."rawcredits" 
FROM (SELECT $1, $2, $3, $4, $5, $6
	FROM '@"NETFLIXDB"."PUBLIC"."__snowflake_temp_import_files__"') 
FILES = ('2025-07-02T04:26:18.963Z/raw_credits.csv') 
FILE_FORMAT = '"NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:26:40.255Z"' 
ON_ERROR=ABORT_STATEMENT 

----------------------------------------------------

CREATE TABLE "NETFLIXDB"."PUBLIC"."bestshows" ( index NUMBER(38, 0) , title VARCHAR , release_year NUMBER(38, 0) , score NUMBER(38, 1) , number_of_votes NUMBER(38, 0) , duration NUMBER(38, 0) , number_of_seasons NUMBER(38, 0) , main_genre VARCHAR , main_production VARCHAR ); 

CREATE TEMP FILE FORMAT "NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:20:59.334Z"
	TYPE=CSV
    SKIP_HEADER=1
    FIELD_DELIMITER=','
    TRIM_SPACE=TRUE
    FIELD_OPTIONALLY_ENCLOSED_BY='"'
    REPLACE_INVALID_CHARACTERS=TRUE
    DATE_FORMAT=AUTO
    TIME_FORMAT=AUTO
    TIMESTAMP_FORMAT=AUTO; 

COPY INTO "NETFLIXDB"."PUBLIC"."bestshows" 
FROM (SELECT $1, $2, $3, $4, $5, $6, $7, $8, $9
	FROM '@"NETFLIXDB"."PUBLIC"."__snowflake_temp_import_files__"') 
FILES = ('2025-07-02T04:20:29.840Z/Best Shows Netflix.csv') 
FILE_FORMAT = '"NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:20:59.334Z"' 
ON_ERROR=ABORT_STATEMENT 

----------------------------------------------------

CREATE TABLE "NETFLIXDB"."PUBLIC"."bestshowbyyear" ( index NUMBER(38, 0) , title VARCHAR , release_year NUMBER(38, 0) , score NUMBER(38, 1) , number_of_seasons NUMBER(38, 0) , main_genre VARCHAR , main_production VARCHAR ); 

CREATE TEMP FILE FORMAT "NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:27:36.048Z"
	TYPE=CSV
    SKIP_HEADER=1
    FIELD_DELIMITER=','
    TRIM_SPACE=TRUE
    FIELD_OPTIONALLY_ENCLOSED_BY='"'
    REPLACE_INVALID_CHARACTERS=TRUE
    DATE_FORMAT=AUTO
    TIME_FORMAT=AUTO
    TIMESTAMP_FORMAT=AUTO; 

COPY INTO "NETFLIXDB"."PUBLIC"."bestshowbyyear" 
FROM (SELECT $1, $2, $3, $4, $5, $6, $7
	FROM '@"NETFLIXDB"."PUBLIC"."__snowflake_temp_import_files__"') 
FILES = ('2025-07-02T04:27:10.318Z/Best Show by Year Netflix.csv') 
FILE_FORMAT = '"NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:27:36.048Z"' 
ON_ERROR=ABORT_STATEMENT 

----------------------------------------------------

CREATE TABLE "NETFLIXDB"."PUBLIC"."bestmovies" ( index NUMBER(38, 0) , title VARCHAR , release_year NUMBER(38, 0) , score NUMBER(38, 1) , number_of_votes NUMBER(38, 0) , duration NUMBER(38, 0) , main_genre VARCHAR , main_production VARCHAR ); 

CREATE TEMP FILE FORMAT "NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:29:13.391Z"
	TYPE=CSV
    SKIP_HEADER=1
    FIELD_DELIMITER=','
    TRIM_SPACE=TRUE
    FIELD_OPTIONALLY_ENCLOSED_BY='"'
    REPLACE_INVALID_CHARACTERS=TRUE
    DATE_FORMAT=AUTO
    TIME_FORMAT=AUTO
    TIMESTAMP_FORMAT=AUTO; 

COPY INTO "NETFLIXDB"."PUBLIC"."bestmovies" 
FROM (SELECT $1, $2, $3, $4, $5, $6, $7, $8
	FROM '@"NETFLIXDB"."PUBLIC"."__snowflake_temp_import_files__"') 
FILES = ('2025-07-02T04:28:54.048Z/Best Movies Netflix.csv') 
FILE_FORMAT = '"NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:29:13.391Z"' 
ON_ERROR=ABORT_STATEMENT 

----------------------------------------------------

CREATE TABLE "NETFLIXDB"."PUBLIC"."bestmoviebyyear" ( index NUMBER(38, 0) , title VARCHAR , release_year NUMBER(38, 0) , score NUMBER(38, 1) , main_genre VARCHAR , main_production VARCHAR ); 

CREATE TEMP FILE FORMAT "NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:31:10.606Z"
	TYPE=CSV
    SKIP_HEADER=1
    FIELD_DELIMITER=','
    TRIM_SPACE=TRUE
    FIELD_OPTIONALLY_ENCLOSED_BY='"'
    REPLACE_INVALID_CHARACTERS=TRUE
    DATE_FORMAT=AUTO
    TIME_FORMAT=AUTO
    TIMESTAMP_FORMAT=AUTO; 

COPY INTO "NETFLIXDB"."PUBLIC"."bestmoviebyyear" 
FROM (SELECT $1, $2, $3, $4, $5, $6
	FROM '@"NETFLIXDB"."PUBLIC"."__snowflake_temp_import_files__"') 
FILES = ('2025-07-02T04:30:46.486Z/Best Movie by Year Netflix.csv') 
FILE_FORMAT = '"NETFLIXDB"."PUBLIC"."temp_file_format_2025-07-02T04:31:10.606Z"' 
ON_ERROR=ABORT_STATEMENT 

----------------------------------------------------