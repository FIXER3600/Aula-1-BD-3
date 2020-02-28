USE master;
create table tbl_cad_prod(
id_prod int identity(1,1),
nome varchar(100) not null,
preco float not null,
lot int not null,
val Date,
PRIMARY KEY (id_prod));
create table tbl_cli(
id_cli int,
nome char(50),
Age int,
ender varchar(200),
PRIMARY KEY (id_cli));
create table tbl_vda(
id_vda int,
data Date,
id_cli int ,
vl_tot float not null,
merc varchar,
func char,
PRIMARY KEY (id_vda),
FOREIGN KEY (id_cli) REFERENCES tbl_cli(id_cli));
create table tbl_prod_vendido(
id_vdido int,
id_vda int, 
id_prod int,
qtd int,
lot int,
val Date,
PRIMARY KEY (id_vdido),
FOREIGN KEY (id_vda) REFERENCES tbl_vda(id_vda),
FOREIGN KEY (id_prod) REFERENCES tbl_cad_prod(id_prod));
 
Insert into tbl_cad_prod values ('Vassoura',5.00, 1,'18-06-12');
Insert into tbl_cad_prod values ('Prato',2.00, 2,'29-06-12');
Insert into tbl_cad_prod values ('Miojo',1.50, 3,'50-06-12');

Insert into tbl_cli values (1,'Guilherme',18,'Rua Pierre Varney,148');
Insert into tbl_cli values (2,'José',50,'Rua Pierre Varney,159');
Insert into tbl_cli values (3,'Carolina',25,'Rua Dom Pedro,123');

Insert into tbl_vda values (50,'16-02-12',1,7.00,'Higas','George');
Insert into tbl_vda values (52,'16-05-20',2,6.00,'Sondas','Ana');
Insert into tbl_vda values (53,'16-10-06',3,5.00,'Nagumo','Maria');

Insert into tbl_prod_vendido values (1,50,1,1,1,'18-06-12');
Insert into tbl_prod_vendido values (5,52,2,5,2,'05-06-12');
Insert into tbl_prod_vendido values (10,53,3,3,3,'09-06-12');

