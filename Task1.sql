/*
Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.

Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
*/

-- Решение:

DELIMITER $$

CREATE FUNCTION sec_to_days(secs INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
  DECLARE days INT;
  DECLARE hours INT;
  DECLARE minutes INT;
  DECLARE result VARCHAR(100);

  SET days = secs DIV 86400;
  SET secs = secs MOD 86400;
    
  SET hours = secs DIV 3600;
  SET secs = secs MOD 3600;
    
  SET minutes = secs DIV 60;
  SET secs = secs MOD 60;
    
  SET result = CONCAT(days, ' days ', hours, ' hours ', minutes,' minutes ', secs, ' seconds ');
  RETURN result;
END $$
DELIMITER ;

SELECT sec_to_days(123456) AS 'number of days';
