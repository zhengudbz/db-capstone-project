Use littlelemondb;

create view OrderView as Select OrderID, Quantities, TotalCost from Orders where Quantities > 2;

Select * from OrderView;

Select c.CustomerID, c.FullName, o.OrderID, o.TotalCost, Cuisine
From orders as o
inner join bookings as b
on o.BookingID = b.BookingID
inner join customers as c
on b.CustomerID = c.CustomerID
inner join menu as m
on o.MenuID = m.MenuID;


select Cuisine from menu where MenuID = any (select quantities from orders where quantities > 2);