
create table Invoices 
(
invoice_id serial primary key,
invoice_number int not null,
invoice_date timestamp null default current_timestamp,
invoice_total money null default 0
);

create table InvoiceDetails 
(
invoiced_id serial primary key,
invoice_id int null references Invoices(invoice_id) on update cascade,
invoiced_description varchar(512) null,
invoiced_quantity smallint,
invoiced_amount money
);