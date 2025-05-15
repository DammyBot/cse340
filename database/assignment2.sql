--
--Task 1
--
-- Inserting Tony into the account table
INSERT INTO account (
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES (
        'Tony',
        'Stark',
        'tony@starknet.com',
        'Iam1ronM@n'
    );
-- Updating Tony's account to Admin
UPDATE account
SET account_type = 'Admin'
WHERE account_id = 1;
-- Deleting Tony's account
DELETE FROM account
where account_id = 1;
-- Modifying GM Hummer record description
UPDATE inventory
SET inv_description = REPLACE(
        inv_description,
        'small interiors',
        'a huge interior'
    )
WHERE inv_id = 10;
-- Selecting make, model and classification name
SELECT inv_make,
    inv_model,
    classification_name
FROM inventory i
    JOIN classification c ON i.classification_id = c.classification_id;
-- Updating inventory to add "/vehicle" to middle of file path
UPDATE inventory
SET inv_image = replace(inv_image, '/images', '/images/vehicles'),
    inv_thumbnail = replace(inv_thumbnail, '/images', '/images/vehicles');