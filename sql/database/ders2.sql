SELECT *
FROM invoices
where total>10
order by InvoiceDate DESC
LIMIT 10;

select *
from invoices
where  not BillingCountry="USA"
order by total DESC;

select *
from invoices
where BillingCountry="USA" or BillingCountry="Germany"
order by InvoiceId

select *
from invoices
WHERE InvoiceDate BETWEEN "2009-01-01" and "2011-12-30"
order by InvoiceDate DESC
limit 1;


select FirstName, LastName, country
from customers
where country in("Belgium","Norway", "USA","Canada");

SELECT *
from employees
WHERE FirstName like "EL%";

select name, Composer
from tracks
where Composer LIKE "%Bach";

SELECT *
from albums
where Title LIKE "%Greatest%";


select *
from invoices
WHERE InvoiceDate LIKE "201_-02%";


