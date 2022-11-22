-- Создать БД
CREATE SCHEMA `mobile_phones` ;

-- Создать таблицу
CREATE TABLE `mobile_phones`.`mob_phones` (
  `mob_phones_id` INT NOT NULL AUTO_INCREMENT,
  `mob_phones_brand` VARCHAR(45) NOT NULL,
  `mob_phones_model` VARCHAR(45) NOT NULL,
  `mob_phones_year` YEAR NOT NULL,
  `mob_phones_operating_system` VARCHAR(10) NOT NULL,
  `mob_phones_screen` DECIMAL NULL,
  `mob_phones_color` VARCHAR(10) NULL,
  `mob_phones_price_in_rub` DECIMAL NOT NULL,
  `mob_phones_quantity_in_pс` INT NOT NULL,
  `mob_phones_tag` VARCHAR(45) NULL,
  PRIMARY KEY (`mob_phones_id`));

-- Вставить данные в таблицу
INSERT INTO `mobile_phones`.`mob_phones` (`mob_phones_brand`, `mob_phones_model`, `mob_phones_year`, `mob_phones_operating_system`, `mob_phones_screen`, `mob_phones_color`, `mob_phones_price_in_rub`, `mob_phones_quantity_in_pс`) VALUES ('Apple', 'iPhone 14 Pro', 2022, 'iOS 16', '6.1', 'Black', '11800', '5');
INSERT INTO `mobile_phones`.`mob_phones` (`mob_phones_brand`, `mob_phones_model`, `mob_phones_year`, `mob_phones_operating_system`, `mob_phones_screen`, `mob_phones_color`, `mob_phones_price_in_rub`, `mob_phones_quantity_in_pс`) VALUES ('Apple', 'iPhone 13', 2021, 'iOS 15', '6.1', 'Gold', '75000', '3');
INSERT INTO `mobile_phones`.`mob_phones` (`mob_phones_brand`, `mob_phones_model`, `mob_phones_year`, `mob_phones_operating_system`, `mob_phones_screen`, `mob_phones_color`, `mob_phones_price_in_rub`, `mob_phones_quantity_in_pс`) VALUES ('Apple', 'iPhone 12 Pro Max', 2020, 'iOS 14', '6.7', 'Blue', '102995', '1');
INSERT INTO `mobile_phones`.`mob_phones` (`mob_phones_brand`, `mob_phones_model`, `mob_phones_year`, `mob_phones_operating_system`, `mob_phones_screen`, `mob_phones_color`, `mob_phones_price_in_rub`, `mob_phones_quantity_in_pс`) VALUES ('Samsung', 'Galaxy S22 Ultra', 2022, 'Android 12', '6.8', 'Green', '84999', '10');
INSERT INTO `mobile_phones`.`mob_phones` (`mob_phones_brand`, `mob_phones_model`, `mob_phones_year`, `mob_phones_operating_system`, `mob_phones_screen`, `mob_phones_color`, `mob_phones_price_in_rub`, `mob_phones_quantity_in_pс`) VALUES ('Samsung', 'Galaxy A53', 2021, 'Android 12', '6.5', 'Black', '29499', '26');
INSERT INTO `mobile_phones`.`mob_phones` (`mob_phones_brand`, `mob_phones_model`, `mob_phones_year`, `mob_phones_operating_system`, `mob_phones_screen`, `mob_phones_color`, `mob_phones_price_in_rub`, `mob_phones_quantity_in_pс`) VALUES ('Samsung', 'Galaxy A03', 2020, 'Android 11', '6.5', 'Blue', '8999', '1');
INSERT INTO `mobile_phones`.`mob_phones` (`mob_phones_brand`, `mob_phones_model`, `mob_phones_year`, `mob_phones_operating_system`, `mob_phones_screen`, `mob_phones_color`, `mob_phones_price_in_rub`, `mob_phones_quantity_in_pс`) VALUES ('Huawei', 'Mate Xs  ', 2022, 'Android 12', '7.8', 'White', '139999', '1');
INSERT INTO `mobile_phones`.`mob_phones` (`mob_phones_brand`, `mob_phones_model`, `mob_phones_year`, `mob_phones_operating_system`, `mob_phones_screen`, `mob_phones_color`, `mob_phones_price_in_rub`, `mob_phones_quantity_in_pс`) VALUES ('Huawei', 'P50 Pocket', 2022, 'Android 11', '6.9', 'Gold', '89990', '7');
INSERT INTO `mobile_phones`.`mob_phones` (`mob_phones_brand`, `mob_phones_model`, `mob_phones_year`, `mob_phones_operating_system`, `mob_phones_screen`, `mob_phones_color`, `mob_phones_price_in_rub`, `mob_phones_quantity_in_pс`) VALUES ('Huawei', 'Nova Y70 4', 2022, 'Android 12', '6.75', 'Black', '11990', '90');

--Выборка (название, производитель и цена для товаров, количество которых превышает 2)
USE mobile_phones;
SELECT mob_phones_brand, mob_phones_model, mob_phones_price_in_rub FROM mob_phones
WHERE mob_phones_quantity_in_pс > 2;

--Выборка (весь ассортимент товаров марки “Samsung”)
USE mobile_phones;
SELECT * FROM mob_phones
WHERE mob_phones_brand = "Samsung";