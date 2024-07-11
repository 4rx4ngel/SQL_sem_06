/*
Выведите только чётные числа от 1 до 10.
Пример: 2, 4, 6, 8, 10
*/

-- Решение:

DELIMITER $$

CREATE PROCEDURE foo(IN num INT, OUT result VARCHAR(100))

BEGIN
	DECLARE i INT DEFAULT 2;
		SET result = '';
			WHILE i <= num DO
				SET result = CONCAT(result, CAST(i AS CHAR), ' ');
				SET i = i + 2; 
			END WHILE;
    END $$
DELIMITER ;

CALL foo(10, @result);
SELECT @result AS 'result';
