-- these scripts correspond to the APP logic



--  HIGH LEVEL (APP) LOGIC
-- ----> translate
--                 ----> LOW LEVEL (DB) LOGIC

/*
    ADMIN LOGIC
*/

--Add product
INSERT INTO "Product"
VALUES (1, 'First Product', 100, 'USD', '1234567890123', 10);
INSERT INTO "Product"
VALUES (2, 'Second Product', 200, 'USD', '2234567890123', 20);
INSERT INTO "Product"
VALUES (3, 'Third Product', 300, 'USD', '3234567890123', 30);

-- view product stock
SELECT * FROM "Product";



/*
    CLIENT LOGIC
*/

-- sign up
INSERT INTO "Client"
VALUES (1, 'First Client', 'first_client@t.com', '+123456789', true);

-- add to bag
INSERT INTO "Bag"
VALUES(1, 1);

INSERT INTO "BagItem"
VALUES(1, 3, 10);

UPDATE "Product"
Set quantity = quantity - 10
WHERE id = 3;

-- view bag / not complete
SELECT * FROM "BagItem"
WHERE bag_id = 1;
