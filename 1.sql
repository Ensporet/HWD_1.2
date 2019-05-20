use hw01;

ALTER TABLE developers ADD COLUMN salary DOUBLE;
UPDATE developers SET salary = 500 WHERE  age < 20;
UPDATE developers SET salary = 1000 WHERE  age > 20 and age < 50;
UPDATE developers SET salary = 5000 WHERE  age > 50;
SELECT* FROM developers;

