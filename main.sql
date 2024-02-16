-- task 1
-- 
CREATE TABLE cooks(
food_id INT,
food_name VARCHAR(20), 
food_description VARCHAR(20),
food_price INT,
creat_date DATE,
is_favorite BOOLEAN
);
-- DROP TABLE cooks;
-- task2
select * from cooks;

-- task3
INSERT  INTO cooks
VALUES(1,'pizza','peperoni',30000,'2024-02-15',true),
      (2,'salad','Cucumber-tomato',15000,'2024-02-15',true),
      (3,'shaurma','meal',20000,'2024-02-16',true),
      (4,'egg','oil',500,'2024-01-09',false),
      (5,'apple','',150,'2024-02-01',false),
      (6,'fish','oil',35000,'2024-02-16',false),
      (7,'xinkali','meal',30000,'2024-01-06',true),
      (8,'cababi','bread,meal',15000,'2024-02-11',false),
      (9,'banana','',80,'2024-02-10',true),
      (10,'olivie','cucumber,mayonnaise',250,'2024-02-14',false);

-- task4
SELECT * FROM  cooks;

-- task5
SELECT * from cooks WHERE food_name LIKE 'p%';

-- task6
SELECT * FROM  cooks WHERE food_name LIKE '%a%';

-- task7
SELECT * FROM cooks ORDER BY (food_price) ASC;

-- task8
SELECT * FROM cooks ORDER BY (food_price) DESC;

-- task9
SELECT food_name FROM cooks
WHERE food_price <= 100 and food_price >=50
ORDER BY food_price ASC;

-- task10
SELECT food_name from cooks WHERE is_favorite=TRUE ;

-- task11
SELECT food_name
FROM cooks
WHERE food_price = (SELECT MAX(food_price) FROM cooks);

-- task12
SELECT food_description,food_price from cooks 
WHERE food_price =(SELECT MIN(food_price)from cooks);

-- task13
UPDATE cooks  set food_description='olive'   WHERE food_name='pizza';

-- task14
UPDATE cooks set food_price=20000 WHERE food_name='pizza';

-- task15
DELETE from cooks WHERE food_name='pizza';

-- task16
DELETE FROM cooks WHERE food_price = (SELECT MIN(food_price)FROM cooks);

-- task17
delete from cooks;

-- task18
DROP TABLE cooks;
