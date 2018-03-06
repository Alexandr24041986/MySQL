SELECT * FROM goods
WHERE goods.id_goods NOT IN (
SELECT id_goods FROM basket_goods
WHERE basket_goods.id_basket = 2
);


SELECT 
(SELECT SUM(basket_goods.amount*goods.price) 
FROM basket_goods, goods
WHERE basket_goods.id_goods = goods.id_goods)/(SELECT COUNT(DISTINCT(id_basket)) FROM basket_goods);

