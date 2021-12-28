
SET @UserIds = ( SELECT  GROUP_CONCAT(`id` separator ',') FROM `User` WHERE `id` < 1000 ); -- https://stackoverflow.com/a/276949/13296592
SELECT @UserIds AS `ids`;

SELECT * FROM `User`
	WHERE FIND_IN_SET(`id`, @UserIds) != 0 -- https://stackoverflow.com/a/4156063/13296592
;