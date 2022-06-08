-- DDL instructions (CREATE, ALTER, DROP)
CREATE TABLE "Product"
(
    id            integer                   PRIMARY KEY,
    name          character varying(121),
    price_value   numeric,
    price_unit    character varying(5),
    bar_code      character varying(15)     UNIQUE,
    quantity      integer
);










------------- HOMEWORK ---------------

ALTER TABLE "Product"
ADD COLUMN bar_code character varying;

ALTER TABLE "Product"
DROP COLUMN bar_code;

DROP TABLE "Product";

------------- HOMEWORK ---------------



-- DML instructions (CRUD)

INSERT INTO "Product" (id, name, price, bar_code)
VALUES (1, 'First Product', 100, '1234567890123');

INSERT INTO "Product" (id, name, price, bar_code)
VALUES (2, 'Second Product', 200, '2234567890123');

INSERT INTO "Product" (id, name, price, bar_code)
VALUES (3, 'Third Product', 300, '3234567890123');

SELECT * FROM "Product";

SELECT * FROM "Product"
ORDER BY id ASC;

------------- HOMEWORK ---------------

SELECT * FROM "Product"
WHERE price < 250;

------------- HOMEWORK ---------------

UPDATE "Product"
SET price = 0;

UPDATE "Product"
SET price = 100
WHERE id  = 1;

UPDATE "Product"
SET price = 200
WHERE id  = 2;

UPDATE "Product"
SET price = 300
WHERE id  = 3;

DELETE FROM "Product";

DELETE FROM "Product"
WHERE id = 2;
