-- HW1
ALTER TABLE "Product"
DROP COLUMN bar_code;

-- HW2
SELECT * FROM "Product"
WHERE price_value < 250;

-- HW4
INSERT INTO "Client"
VALUES (1, 'First Client', '+123456789', true);
INSERT INTO "Client"
VALUES (2, 'Second Client', '+223456789', false);
INSERT INTO "Client"
VALUES (3, 'Third Client', '+323456789', false);
INSERT INTO "Client"
VALUES (4, 'Four Client', '+423456789', true);
INSERT INTO "Client"
VALUES (5,'Five', '+523456789', false);

-- HW5
SELECT * FROM "Client"
WHERE LENGTH(name) > 5;

--HW6
DELETE FROM "Client"
WHERE id = 3;

--HW7
SELECT * FROM "Client"
WHERE is_vip = false;

--HW8
ALTER TABLE "Client"
ADD COLUMN email character varying(121);

--HW9
UPDATE "Client"
SET email = 'first_client@t.com'
WHERE id  = 1;
UPDATE "Client"
SET email = 'secondt_client@t.com'
WHERE id  = 2;
UPDATE "Client"
SET email = 'third_client@t.com'
WHERE id  = 3;
UPDATE "Client"
SET email = 'fourth_client@t.com'
WHERE id  = 4;
UPDATE "Client"
SET email = 'fifth_client@t.com'
WHERE id  = 5;