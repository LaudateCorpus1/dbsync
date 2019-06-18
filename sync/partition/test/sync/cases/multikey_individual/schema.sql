DROP TABLE IF EXISTS events1;
CREATE TABLE events1
(
    id         INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    timestamp  DATETIME,
    event_type INTEGER,
    quantity   DECIMAL(7, 2) DEFAULT NULL,
    modified   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS events2;
CREATE TABLE events2
(
    id         INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    timestamp  DATETIME,
    event_type INTEGER,
    quantity   DECIMAL(7, 2) DEFAULT NULL,
    modified   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);


DROP TABLE IF EXISTS events2_tmp;
CREATE TABLE events2_tmp
(
    id         INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    timestamp  DATETIME,
    event_type INTEGER,
    quantity   DECIMAL(7, 2) DEFAULT NULL,
    modified   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);



DROP TABLE IF EXISTS events2_tmp3_m00001;
CREATE TABLE events2_tmp3_m00001
(
    id         INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    timestamp  DATETIME,
    event_type INTEGER,
    quantity   DECIMAL(7, 2) DEFAULT NULL,
    modified   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);



DROP TABLE IF EXISTS events2_tmp4_i00001;
CREATE TABLE events2_tmp4_i00001
(
    id         INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    timestamp  DATETIME,
    event_type INTEGER,
    quantity   DECIMAL(7, 2) DEFAULT NULL,
    modified   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);



DROP TABLE IF EXISTS events2_tmp5_d00001;
CREATE TABLE events2_tmp5_d00001
(
    id         INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    timestamp  DATETIME,
    event_type INTEGER,
    quantity   DECIMAL(7, 2) DEFAULT NULL,
    modified   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);




DROP TABLE IF EXISTS events2_tmp20190410_3;
CREATE TABLE events2_tmp20190410_3
(
    id         INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    timestamp  DATETIME,
    event_type INTEGER,
    quantity   DECIMAL(7, 2) DEFAULT NULL,
    modified   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);




DROP TABLE IF EXISTS events2_tmp20190328_4;
CREATE TABLE events2_tmp20190328_4
(
    id         INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    timestamp  DATETIME,
    event_type INTEGER,
    quantity   DECIMAL(7, 2) DEFAULT NULL,
    modified   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);




DROP TABLE IF EXISTS events2_tmp20190423_5;
CREATE TABLE events2_tmp20190423_5
(
    id         INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    timestamp  DATETIME,
    event_type INTEGER,
    quantity   DECIMAL(7, 2) DEFAULT NULL,
    modified   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);