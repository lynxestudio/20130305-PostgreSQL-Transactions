
begin;
insert into invoices(invoice_number,invoice_date,invoice_total)
values(20999,'02/02/2013',209.97);

insert into invoicedetails(invoice_id,invoiced_description,invoiced_quantity,invoiced_amount)
values(currval('invoices_invoice_id_seq'),'Answer calls',3,69.99);

Select count(invoice_id) from invoices;

Select count(invoice_id) from invoicedetails;

delete from invoicedetails where invoice_id in (3,4);

Select count(invoice_id) from invoicedetails;

rollback;
end;