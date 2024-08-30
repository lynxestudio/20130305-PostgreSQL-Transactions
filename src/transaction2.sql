
BEGIN

insert into invoices(invoice_number,invoice_date,invoice_total)
values(20988,'02/04/2013',778);

insert into invoicedetails(invoice_id,invoiced_description,invoiced_quantity,invoiced_amount)
values(currval('invoices_invoice_id_seq'),'DVD for recording',6,111);

COMMIT;
