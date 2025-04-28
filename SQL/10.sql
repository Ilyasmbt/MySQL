CREATE TABLE Company (
    Company_ID INT PRIMARY KEY,
    Company_Name VARCHAR(50),
    Company_City VARCHAR(50)
);

INSERT INTO Company (Company_ID, Company_Name, Company_City) VALUES
(18, 'Akas Foods', 'Boston'),
(15, 'Foodies', 'New York'),
(16, 'Sagar Ltd', 'Delhi'),
(17, 'Sip-n-Bite', 'London'),
(19, 'Anna', 'Kolkata');
CREATE TABLE Item(
    Item_ID INT PRIMARY KEY,
    Item_Name VARCHAR(50),
    Item_Unit INT,
    Company_ID INT
    );

INSERT INTO Item (Item_ID, Item_Name, Item_Unit, Company_ID) VALUES
(1, 'Cheese', 15, 15),
(2, 'Rice', 5, 17),
(3, 'Cake', 2, 15),
(4, 'Salt', 10, 16),
(5, 'Biscuit', 25, 15),
(6, 'Cornflakes', 5, 18),
(7, 'Chocolate', 40, null);

select item.item_name,company_name
 from item inner join company
where company.company_id=item.company_id;
select item.item_name,company.company_city
 from item inner join company
 where item_name="cornflakes" and company.company_id=item.company_id;
 select item_name,item_unit from item
 where item_unit >10;
 select item_name,item_unit from item
 where item_unit <10;
 select item.item_name,company_name 
 from item inner join company
where  company_name='foodies' and company.company_id=item.company_id;
 select item_name,item_unit from item
 where item_unit>(select avg(item_unit) from item);
 select item_name as name from item union select company_name from company;
 