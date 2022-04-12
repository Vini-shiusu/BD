create database PetShop;

use PetShop;

create table PET
(
idPet int primary key auto_increment,
AnimalType varchar(45),
raca varchar(30),
peso decimal(4, 2) check (peso > 0),
fkCliente int,
foreign key (fkCliente) references CLIENTE (idCLIENTE)
)auto_increment = 101;

drop table CLIENTE;

drop table PET;

create table CLIENTE
(
idCLIENTE int primary key auto_increment,
Nome varchar(45),
TelefoneFx char(9),
calular char(11),
endereco varchar(90)
);

insert into CLIENTE (Nome, TelefoneFx, calular, endereco) values
('Marcus', '355356493', '11972332055', 'Baetão');

insert into CLIENTE (Nome, TelefoneFx, calular, endereco) values('Eduardo','930495987','11993833212','Kennedy'),
                                                                ('Marco','199283288','11100234857','Vergueiro'),
                                                                ('Arthur','332142636','11423548596','São paulo 2');
                                                                

                                                                
insert into PET (AnimalType, raca, peso, fkCliente) values('Gato', 'Norueguês da Floresta', '7', '1'),
                                                          ('Gato', 'maine coon', '8', '1'),
                                                          ('Cachorro', 'Pitbull', '22', '2');

insert into PET (AnimalType, raca, peso, fkCliente) values('Gato', 'Siberiano', '7', '3'),
                                                          ('Gato', 'Angora Turco', '10', '4'),
                                                          ('Macaco', 'Sagui', '4', '4');
                                                          
select * from pet;

select * from CLIENTE

