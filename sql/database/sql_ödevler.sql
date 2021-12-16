select FirstName, LastName, City
from customers
where FirstName like "___";

SELECT FirstName, LastName, City
from customers
WHERE LastName LIKE "Sch%" or LastName LIKE "Go%";