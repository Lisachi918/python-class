/*一定是先刪多筆才刪一筆的table*/

DROP TABLE IF EXISTS stations;
CREATE TABLE IF NOT EXISTS stations(
 編號 INT PRIMARY KEY,
 名稱 VARCHAR(20) NOT NULL,
 英文名稱 VARCHAR(50),
 地名 VARCHAR(20),
 英文地名 VARCHAR(50),
 地址 VARCHAR(255),
 英文地址 VARCHAR(255),
 電話 VARCHAR(20),
 gps VARCHAR(50),
 youbike BOOL
);

CREATE TABLE IF NOT EXISTS gate_count(
    id SERIAL,
	日期 DATE NOT NULL,
	站點編號 INT,
	進站人數 INT DEFAULT 0,
	出站人數 INT DEFAULT 0,
	PRIMARY KEY(id),
	FOREIGN KEY(站點編號) REFERENCES stations(編號) 
	ON DELETE SET NULL
	ON UPDATE CASCADE	
);

SELECT * FROM stations;
SELECT * FROM gate_count;

SELECT COUNT(*) AS 筆數
FROM stations;