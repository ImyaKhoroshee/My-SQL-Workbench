# Создаем БД
create database HW2;

# Выбираем нужную БД
use HW2;

# Создаем таблицу с товарами
create table NY_Goods
(
	Id_goods INT auto_increment primary key,
    Item_goods varchar(30) NOT NULL,
    Item_quantity_goods INT NOT NULL,
    Item_colour_goods varchar(15),
    Item_price_goods decimal,
    Manufacture_goods varchar(20) NOT NULL
);
# Проверяем, что все хорошо
Select * FROM NY_Goods;

# Заполняем данные в таблицу товаров
INSERT INTO NY_Goods (Item_goods, Item_quantity_goods, Item_colour_goods, Item_price_goods, Manufacture_goods)
VALUES
('Cristmas tree', 152, 'green', 3500, 'USA'),
('Ball', 50, 'red', 120, 'China'),
('Ball', 250, 'gold', 120, 'China'),
('Ball', 350, 'silver', 125, 'China'),
('Tinsel', 457, 'red', 50, 'China'),
('Tinsel', 10, 'gold', 50, 'China'),
('Tinsel', 101, 'silver', 55, 'China'),
('Ded Moroz', 250, 'coloured', 1500, 'Russia'),
('Snegurochka', 411, 'coloured', 1000, 'Russia')
;
# Проверяем, что все хорошо
Select * FROM NY_Goods;

# Создаем таблицу с продажами, связываем обе таблички по внешнему ключу
create table Sales
(
Id_sales INT auto_increment primary key,
Id_NY_Goods INT,
Sales_data date,
Count_sales INT,
FOREIGN KEY (Id_NY_Goods) REFERENCES NY_Goods (Id_goods)
);

# Проверяем, что все хорошо
Select * FROM Sales;

# Заполняем данные в таблицу продаж
INSERT INTO Sales (Id_NY_Goods, Sales_data, Count_sales)
VALUES
(1, '2022-11-25', 2),
(9, '2022-11-20', 1),
(8, '2022-11-20', 1),
(2, '2022-11-21', 30),
(3, '2022-11-25', 45),
(7, '2022-11-27', 5)
;

# Проверяем, что все хорошо
Select * FROM Sales;

# Групировка по количеству в 3 сегмента — меньше 100, 100-300 и больше 300.
select Item_goods, Item_quantity_goods,
CASE
	WHEN Item_quantity_goods < 100
		THEN 'Меньше 100 шт.'
	WHEN Item_quantity_goods > 100 AND Item_quantity_goods < 300
		THEN '100-300 шт.'
	ELSE 'Больше 300 шт.'
END AS Quantity_status
FROM NY_Goods;

# Создаем таблицу заказы (зачем-то). 
create table Orders
(
	Id_orders INT auto_increment primary key,
    IdSales INT,
    Idgoods INT,
    Balance_pc INT NOT NULL,
    FOREIGN KEY (IdSales) REFERENCES Sales (Id_sales),
    FOREIGN KEY (Idgoods) REFERENCES NY_Goods (Id_goods)
);

# Статус заказа виден по этой команде.
Select * FROM Sales;

# NULL соответствует понятию «пустое поле», то есть «поле, не содержащее никакого значения». О - это число.