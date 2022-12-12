CREATE SCHEMA hw6;

USE hw6;

-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

drop table time_in_sec;

CREATE TABLE  time_in_sec 
(       
	POSITION_time_in_sec INT PRIMARY KEY AUTO_INCREMENT, 
	SECONDS_time_in_sec INT 
);

INSERT INTO time_in_sec (SECONDS_time_in_sec) VALUES
(123456),
(123457),
(123458);

SELECT * FROM time_in_sec;

DROP FUNCTION fromSecToDayAndTime;

DELIMITER |
CREATE FUNCTION fromSecToDayAndTime(val INT)
RETURNS char(45)
DETERMINISTIC
BEGIN
	DECLARE DD char(3);
	DECLARE HH, MI, SS char(2);
	DECLARE Result char(50);
	set DD = cast(floor(val/60/60/24) as char(3));
	set HH = cast(floor(mod(val/60/60/24,1)*24) as char(2));
	set MI = cast(floor(mod(mod(val/60/60/24,1)*24,1)*60) as char(2));
	set SS = cast(round(mod(mod(mod(val/60/60/24,1)*24,1)*60,1)*60) as char(2));
    set Result = concat(DD,' day(s) ',HH,' hour(s) ',MI,' minute(s) ',SS,' second(s) ');
return Result;
END |

SElECT fromSecToDayAndTime(SECONDS_time_in_sec) AS Result from time_in_sec; 


-- Выведите только четные числа от 1 до 10.

drop table even_numbers;

CREATE TABLE  even_numbers 
(       
	id_even_numbers INT PRIMARY KEY AUTO_INCREMENT, 
	Oddeven_even_numbers VARCHAR(4) 
);

INSERT INTO even_numbers (Oddeven_even_numbers) VALUES
('Even'),
('Odd'),
('Even'),
('Odd'),
('Even'),
('Even'),
('Odd'),
('Even'),
('Odd'),
('Even');

SELECT * FROM even_numbers;

SELECT id_even_numbers FROM even_numbers WHERE id_even_numbers % 2 = 0; 