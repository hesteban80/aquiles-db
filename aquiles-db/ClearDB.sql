-- Script to clear all data from database tables except USERS
-- Disable foreign key checks
EXEC sp_msforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL';

-- Delete data in correct order (though with FK disabled, order doesn't matter)
DELETE FROM CLIENT_WEEK_SESSIONS;
DELETE FROM CLIENT_WEEK_INTENSIVE_SESSIONS;
DELETE FROM FREE_DAYS;
DELETE FROM FEES;
DELETE FROM CLIENTS;
DELETE FROM PRODUCTS;
DELETE FROM DISCOUNTS;
DELETE FROM PRODUCT_TYPES;
DELETE FROM CLOSING_DAYS;

-- Re-enable foreign key checks
EXEC sp_msforeachtable 'ALTER TABLE ? CHECK CONSTRAINT ALL';