-- buatdatabase
CREATE DATABASE KALBE;

-- buat table inventory
CREATE TABLE Inventory (
    item_code int not null,
    item_name varchar(255) not null,
    item_price int,
    item_total int,
    CONSTRAINT pk_code PRIMARY KEY (item_code)
);

-- Insert data ke table
INSERT INTO kalbe.inventory
(item_code, item_name, item_price, item_total)
VALUES 
(2341,	'Promag Tablet',	3000,	100),
(2342,	'Hydro Coco 250ML',	7000,	20),
(2343,	'Nutrive Benecol 100ML',	20000,	30),
(2344,	'Blackmores Vit C 500Mg',	95000,	45),
(2345,	'Entrasol Gold 370G',	90000,	120);

-- menampilkan item_name dengan item_total terbanyak
with max_item as (
    select item_name, item_total from inventory
)
select item_name, item_total from max_item
where item_total = (select max(item_total) from inventory)

-- update item_price dari hasil diatas
UPDATE inventory
set item_price = 100000
where item_code =2345;

-- insert data dengan item_code 2343
INSERT INTO kalbe.inventory
(item_code, item_name, item_price, item_total)
VALUES 
(2343,	'',	0,	0);

-- menghapus item dengan item_total terendah
with cte1 as (select item_total from inventory)
delete from inventory
where item_total = (select min(item_total) from cte1);