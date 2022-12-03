use hw4;

CREATE TABLE  AUTO 
(       
	REGNUM VARCHAR(10) PRIMARY KEY, 
	MARK VARCHAR(10), 
	COLOR VARCHAR(15),
	RELEASEDT DATE, 
	PHONENUM VARCHAR(15)
);
INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM ) VALUES
(111114,'LADA', 'КРАСНЫЙ', date'2008-01-01', '9152222221'),
(111115,'VOLVO', 'КРАСНЫЙ', date'2013-01-01', '9173333334'),
(111116,'BMW', 'СИНИЙ', date'2015-01-01', '9173333334'),
(111121,'AUDI', 'СИНИЙ', date'2009-01-01', '9173333332'),
(111122,'AUDI', 'СИНИЙ', date'2011-01-01', '9213333336'),
(111113,'BMW', 'ЗЕЛЕНЫЙ', date'2007-01-01', '9214444444'),
(111126,'LADA', 'ЗЕЛЕНЫЙ', date'2005-01-01', null),
(111117,'BMW', 'СИНИЙ', date'2005-01-01', null),
(111119,'LADA', 'СИНИЙ', date'2017-01-01', 9213333331);

# Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA
SELECT MARK, color, count(color) AS 'Quantity of cars' FROM AUTO
where MARK = 'LADA'
group by color, mark 
union select MARK, color, count(color) AS 'Quantity of cars' FROM AUTO
where MARK = 'BMW'
group by color, mark;

# Вывести на экран марку авто и количество AUTO не этой марки
SELECT MARK, (count(color) - 1) AS 'Quantity of cars' FROM AUTO
group by MARK;
create table test_a 
(id_number int, 
data varchar(1)
);

create table test_b 
(id_number int);

insert into test_a(id_number, data) values
(10, 'A'),
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');

insert into test_b(id_number) values
(10),
(30),
(50);

# Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, 
# НЕ используя ключевого слова NOT.
# C NOT
SELECT * FROM test_a
WHERE NOT EXISTS
(SELECT * FROM test_b WHERE test_a.id_number = test_b.id_number);

#БЕЗ NOT
SELECT * FROM test_a
NATURAL LEFT JOIN test_b
WHERE test_b.id_number IS NULL