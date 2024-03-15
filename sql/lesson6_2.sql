SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號=編號;

SELECT 日期,進站人數,出站人數,名稱,地名,地址,youbike
FROM gate_count LEFT JOIN stations ON 站點編號=編號;

SELECT DISTINCT 名稱
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 地址 LIKE '基隆市%';

SELECT DISTINCT 名稱,進站人數,出站人數,地名,日期
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 名稱 LIKE'基隆' and 日期 = '2022-03-01';

SELECT 日期,名稱,進站人數
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 名稱='基隆' AND (日期 BETWEEN '2022-03-01' AND '2022-03-31')
ORDER BY 日期 ASC;

/*純粹使用進站人數來排序前10名*/
SELECT 進站人數
FROM gate_count 
ORDER BY 進站人數 DESC
LIMIT 10;

/*要關連到日期跟名稱(gate_count以外的資料)*/
SELECT 日期,名稱,進站人數 
FROM gate_count LEFT JOIN stations ON 站點編號=編號
ORDER BY 進站人數 DESC
LIMIT 10;
