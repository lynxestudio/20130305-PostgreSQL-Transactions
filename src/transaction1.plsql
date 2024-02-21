
begin;
insert into invoices(invoice_number,invoice_date,invoice_total)
values(20987,'02/02/2013',200);

insert into invoicedetails(invoice_id,invoiced_description,invoiced_quantity
,invoiced_amount)
values(currval('invoices_invoice_id_seq'),'Adapter 100 AC',2,100);

END;
