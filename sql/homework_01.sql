CREATE TABLE IF NOT EXISTS invoices(
    invoiceid serial primary key,
	customerid int,
	invoicedate timestamp,
	address varchar,
	city varchar,
	state varchar,
	country varchar,
	postal varchar,
	total numeric(4,2) 
	
);
 
drop table invoices;

select * from invoices;