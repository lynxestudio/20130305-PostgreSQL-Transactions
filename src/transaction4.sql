
BEGIN;

Select count(invoice_id) from invoicedetails;

SAVEPOINT  Test_savepoint;

DELETE FROM invoicedetails;

Select count(invoice_id) from invoicedetails;

ROLLBACK to Test_savepoint;

Select count(invoice_id) from invoicedetails;