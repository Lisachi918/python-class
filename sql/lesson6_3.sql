
SELECT customer_id, COUNT(*) AS 筆數
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;

/*取出PAYMENT的所有客戶的應收帳款總合，SUM()*/
SELECT customer_id, SUM(amount) AS 總和
FROM payment
GROUP BY customer_id
ORDER BY 總和 DESC;


SELECT store_id,staff_id
FROM payment LEFT JOIN customer USING (customer_id);

/*須重聽*/
SELECT first_name || ' ' || last_name AS full_name,
	   SUM(amount) AS 總合
FROM payment LEFT JOIN customer USING (customer_id)
GROUP BY full_name
ORDER BY 總合 DESC;

#### H1我自己
