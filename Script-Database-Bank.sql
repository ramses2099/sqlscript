-- CREATE DATABASE --

--drop database bank;
-- create database bank;

drop table if exists states;

create table states(
	state_id serial primary key,
	state_description varchar(350),
	created timestamp default now()
);

insert into states(state_description)values('Active');
insert into states(state_description)values('Inactive');

select * from states;

drop table if exists ref_customer_types;

create table ref_customer_types(
	customer_type_id serial primary key,
	customer_type_descripcion varchar(350),
	state_id int,
	created timestamp default now(),
	constraint fk_ref_customer_types_states
		foreign key(state_id) references states(state_id)
);



insert into ref_customer_types(customer_type_descripcion,state_id)values('Administrators',1);
insert into ref_customer_types(customer_type_descripcion,state_id)values('Organisations',1);
insert into ref_customer_types(customer_type_descripcion,state_id)values('Engineers',1);

select * from ref_customer_types;

drop table if exists customers;

create table customers(
	customer_id serial primary key,
	customer_type_id int,
	customer_first_name varchar(350),
	customer_last_name varchar(350),
	customer_phone varchar(150),
	customer_email varchar(150),
	state_id int,
	date_became_customer timestamp default now(),
	created timestamp default now(),
	constraint fk_customers_ref_customer_types
		foreign key(customer_type_id) references ref_customer_types(customer_type_id),
	constraint fk_customers_states
		foreign key(state_id) references states(state_id)
);


insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Craggie', 'Mathouse', '686-237-8462', 'cmathouse0@odnoklassniki.ru', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Hedwiga', 'MacCarrick', '192-718-7881', 'hmaccarrick1@diigo.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Antonie', 'Willox', '845-512-6720', 'awillox2@virginia.edu', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Paquito', 'Porcher', '927-304-4640', 'pporcher3@phpbb.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Beale', 'Beddo', '988-753-5414', 'bbeddo4@loc.gov', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Bentley', 'Whyley', '872-525-7589', 'bwhyley5@businesswire.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Leopold', 'Strongman', '233-138-9359', 'lstrongman6@sina.com.cn', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Mable', 'Tackett', '745-984-4610', 'mtackett7@ed.gov', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Kelly', 'Malafe', '944-150-8669', 'kmalafe8@google.com.au', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Sharona', 'Peal', '332-373-9641', 'speal9@list-manage.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Dory', 'Yon', '327-507-8632', 'dyona@wisc.edu', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Kayla', 'Dabs', '321-627-9740', 'kdabsb@usgs.gov', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Maureene', 'Dailey', '863-628-9524', 'mdaileyc@free.fr', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Danni', 'Brunetti', '264-477-4317', 'dbrunettid@spiegel.de', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Mal', 'Rickardsson', '730-506-1330', 'mrickardssone@skype.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Elwin', 'D''Costa', '449-376-8430', 'edcostaf@jugem.jp', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Bale', 'Swinburne', '313-345-3277', 'bswinburneg@histats.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Monique', 'Jakaway', '370-722-7140', 'mjakawayh@narod.ru', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Katey', 'O''Fallowne', '453-193-7429', 'kofallownei@google.cn', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Ber', 'Crennell', '316-540-9884', 'bcrennellj@virginia.edu', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Cookie', 'Dikle', '332-507-6540', 'cdiklek@nhs.uk', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Carilyn', 'Woollends', '674-906-2158', 'cwoollendsl@whitehouse.gov', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Annecorinne', 'Jekyll', '276-727-5287', 'ajekyllm@networksolutions.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Noel', 'Ballantine', '544-546-7549', 'nballantinen@ftc.gov', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Odessa', 'Luckcock', '289-512-6705', 'oluckcocko@arizona.edu', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Giordano', 'Baxstare', '835-251-7256', 'gbaxstarep@home.pl', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Jarret', 'Whiscard', '370-354-9708', 'jwhiscardq@about.me', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Devon', 'Kenwell', '284-445-9838', 'dkenwellr@mozilla.org', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Georgeanne', 'Lebell', '277-503-3095', 'glebells@va.gov', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Julian', 'Cartman', '515-471-2405', 'jcartmant@youtube.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Calypso', 'Tipling', '693-534-5779', 'ctiplingu@uiuc.edu', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Vergil', 'Barbera', '143-882-7625', 'vbarberav@sciencedirect.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Samson', 'Beranek', '540-603-7325', 'sberanekw@va.gov', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Filberto', 'Clear', '521-600-2567', 'fclearx@skyrock.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Rhianna', 'Shirer', '744-220-7792', 'rshirery@privacy.gov.au', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Darline', 'Burnsyde', '965-302-1150', 'dburnsydez@creativecommons.org', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Wylie', 'Lampbrecht', '314-463-9858', 'wlampbrecht10@angelfire.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Jilly', 'Andryushchenko', '997-849-1795', 'jandryushchenko11@unblog.fr', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Dasie', 'Folker', '724-580-9661', 'dfolker12@ustream.tv', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Sheppard', 'Impey', '473-608-8355', 'simpey13@slashdot.org', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Richart', 'Maasz', '950-375-7885', 'rmaasz14@devhub.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Kizzee', 'Andreas', '524-567-9551', 'kandreas15@cbc.ca', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Welsh', 'Tourner', '862-173-1793', 'wtourner16@umn.edu', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Gerrard', 'McKellen', '270-552-1346', 'gmckellen17@house.gov', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Cahra', 'Gerbel', '754-375-9142', 'cgerbel18@ezinearticles.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Isis', 'Prosch', '112-467-6492', 'iprosch19@ucla.edu', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Sonnnie', 'Edison', '914-310-8120', 'sedison1a@de.vu', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Corina', 'Rozzell', '389-200-4083', 'crozzell1b@msn.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Hilliary', 'Sporrij', '405-283-3534', 'hsporrij1c@phpbb.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Marjy', 'Jaspar', '102-819-8375', 'mjaspar1d@ocn.ne.jp', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Merrili', 'Jeggo', '951-741-7920', 'mjeggo1e@springer.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Nolie', 'Hartlebury', '862-460-5346', 'nhartlebury1f@archive.org', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Lela', 'Zipsell', '102-362-5578', 'lzipsell1g@twitpic.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Geordie', 'Braybrook', '719-196-8897', 'gbraybrook1h@un.org', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Langston', 'Rowatt', '605-805-5036', 'lrowatt1i@netscape.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Prudi', 'Levins', '708-533-9113', 'plevins1j@google.fr', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Sallyanne', 'Gypson', '449-906-9675', 'sgypson1k@woothemes.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Dore', 'Daltry', '908-755-8179', 'ddaltry1l@ezinearticles.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Kirbie', 'Freddi', '336-671-8666', 'kfreddi1m@rakuten.co.jp', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Fiorenze', 'Leil', '465-298-9049', 'fleil1n@thetimes.co.uk', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Jermayne', 'Matula', '861-484-2254', 'jmatula1o@miitbeian.gov.cn', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Kele', 'MacDiarmond', '742-326-1909', 'kmacdiarmond1p@tiny.cc', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Myrvyn', 'Haylock', '665-884-9176', 'mhaylock1q@nytimes.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Lelia', 'Saggs', '205-278-3424', 'lsaggs1r@tinypic.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Emanuel', 'Hector', '839-218-8270', 'ehector1s@ft.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Travis', 'Fishbourne', '859-474-9063', 'tfishbourne1t@mapy.cz', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Yul', 'Geere', '121-777-3644', 'ygeere1u@businessweek.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Joice', 'Bonds', '996-420-1065', 'jbonds1v@freewebs.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Bianca', 'Perelli', '826-393-8641', 'bperelli1w@scribd.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Alix', 'Oldam', '321-250-8836', 'aoldam1x@hexun.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Haroun', 'Waples', '419-287-6135', 'hwaples1y@constantcontact.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Jaime', 'Aykroyd', '102-494-1569', 'jaykroyd1z@seesaa.net', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Pattie', 'Bleasdille', '506-483-2859', 'pbleasdille20@goo.ne.jp', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Shela', 'Trillo', '914-673-5366', 'strillo21@g.co', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Wolfy', 'Gull', '687-848-5821', 'wgull22@delicious.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Ariel', 'O'' Cloney', '884-759-0416', 'aocloney23@sina.com.cn', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Baryram', 'Dufer', '978-871-6518', 'bdufer24@ox.ac.uk', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Cy', 'Edworthye', '471-178-1545', 'cedworthye25@mozilla.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Barri', 'Ludy', '156-831-2833', 'bludy26@stumbleupon.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Jillian', 'Gouinlock', '819-788-3774', 'jgouinlock27@nyu.edu', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Quent', 'Mooreed', '871-751-3232', 'qmooreed28@meetup.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Corey', 'Colcomb', '277-709-1342', 'ccolcomb29@rediff.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Heddi', 'Bloxsome', '855-592-5171', 'hbloxsome2a@hexun.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Royall', 'Maine', '832-611-1438', 'rmaine2b@nytimes.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Karrie', 'Grent', '578-218-2945', 'kgrent2c@unesco.org', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Ginnie', 'Tuxill', '243-563-9824', 'gtuxill2d@omniture.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Daisey', 'Durbyn', '492-533-6793', 'ddurbyn2e@opera.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Padgett', 'Pym', '976-622-7335', 'ppym2f@youtu.be', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Adda', 'Jedrys', '262-445-1019', 'ajedrys2g@tripod.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Tanner', 'Perroni', '177-415-2825', 'tperroni2h@webs.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Cointon', 'Daborne', '754-311-4938', 'cdaborne2i@domainmarket.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Nadean', 'Hatley', '272-855-9766', 'nhatley2j@seattletimes.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Tiena', 'Hymas', '369-244-7029', 'thymas2k@wordpress.org', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Vally', 'Brewers', '351-393-6156', 'vbrewers2l@flavors.me', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'May', 'Settle', '827-615-6926', 'msettle2m@spotify.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (3, 'Loise', 'Salkild', '231-943-3735', 'lsalkild2n@sfgate.com', 2);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Paquito', 'Breache', '188-517-5354', 'pbreache2o@japanpost.jp', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (2, 'Devin', 'Hallstone', '569-445-9416', 'dhallstone2p@eventbrite.com', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Cami', 'Hacquard', '218-282-8940', 'chacquard2q@census.gov', 1);
insert into customers (customer_type_id, customer_first_name, customer_last_name, customer_phone, customer_email, state_id) values (1, 'Adan', 'Vel', '877-893-7489', 'avel2r@sbwire.com', 1);

select * from customers;


drop table if exists ref_account_types;

create table ref_account_types(
	account_type_id serial primary key,
	account_type_description varchar(350),
	state_id int,
	created timestamp default now(),
	constraint fk_ref_account_types_states
		foreign key(state_id) references states(state_id)
);


insert into ref_account_types(account_type_description,state_id)values('Current',1);
insert into ref_account_types(account_type_description,state_id)values('Deposit',1);

select * from ref_account_types;


drop table if exists accounts;

create table accounts(
    account_id serial primary key,
    account_type_id int,
    account_number varchar(100),
    customer_id int,
    timestamp_opend timestamp default now(),
    timestamp_closed timestamp,
    current_balance numeric(15,6),
    state_id int,
	created timestamp default now(),
	constraint fk_accounts_customers
		foreign key(customer_id) references customers(customer_id),
	constraint fk_accounts_ref_account_types
		foreign key(account_type_id) references ref_account_types(account_type_id),
	constraint fk_accounts_states
		foreign key(state_id) references states(state_id)
);



insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '42291-146', 40, 327.42, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '53808-0688', 11, 151.38, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '60505-2547', 39, 476.41, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '55714-2264', 36, 442.75, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '54838-147', 43, 179.98, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '0485-0208', 24, 141.42, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '68516-3603', 61, 409.55, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '39822-0615', 38, 255.56, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '0378-4092', 71, 461.42, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '47682-101', 60, 410.96, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '64661-092', 57, 481.75, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '61957-2070', 86, 246.77, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '68990-001', 20, 197.11, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '36987-1991', 31, 281.92, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '68308-502', 59, 160.57, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '61010-1112', 89, 280.16, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '68391-242', 86, 489.95, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '0008-0843', 85, 349.08, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '60512-1017', 81, 472.71, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '67253-140', 84, 250.8, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '48951-1206', 72, 297.11, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '37000-017', 81, 407.93, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '55910-707', 68, 121.15, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '49035-151', 33, 172.48, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '58503-023', 27, 435.74, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '68151-0155', 67, 193.48, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '44597-5505', 54, 369.06, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '10337-301', 79, 218.48, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '55154-6814', 93, 468.73, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '53329-042', 46, 326.6, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '35356-704', 35, 193.77, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '13668-153', 61, 166.16, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '49999-468', 4, 459.37, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '52374-001', 5, 355.27, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '60429-250', 8, 273.37, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '52544-065', 68, 474.31, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '63459-504', 9, 219.31, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '36800-170', 52, 113.31, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '0168-0040', 29, 133.88, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '49035-957', 60, 255.29, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '98132-303', 74, 196.51, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '52125-906', 60, 271.65, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '67296-0042', 13, 308.94, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '75847-1708', 40, 499.3, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '48951-4089', 71, 106.47, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '43742-0356', 7, 450.32, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '0268-6548', 66, 267.87, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '60429-141', 94, 363.86, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '0498-0160', 27, 212.77, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '0113-0548', 78, 332.1, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '66685-1001', 45, 123.84, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '65483-393', 1, 256.06, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '10631-407', 54, 118.0, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '63323-269', 55, 429.71, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '0378-4253', 22, 105.17, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '61481-0020', 41, 390.55, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '40046-0062', 65, 214.89, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '51346-021', 55, 135.76, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '0456-2280', 8, 355.64, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '41520-140', 86, 394.87, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '0054-0084', 77, 311.34, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '61957-1024', 2, 444.09, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '67510-0069', 85, 382.5, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '49999-097', 83, 339.51, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '0093-1174', 76, 428.25, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '49035-668', 8, 282.28, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '55154-4230', 35, 425.41, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '49738-217', 2, 128.22, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '31722-269', 68, 354.68, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '49726-005', 17, 335.18, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '41167-0961', 11, 192.3, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '59316-109', 62, 386.48, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '36987-2441', 76, 224.67, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '10812-364', 45, 363.0, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '60289-030', 82, 153.71, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '75990-773', 70, 338.2, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '51346-242', 94, 147.5, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '55312-107', 94, 480.84, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '51141-0235', 63, 479.52, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '0781-1684', 93, 148.73, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '68016-021', 65, 325.33, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '21130-312', 88, 399.67, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '48951-7076', 3, 460.8, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '68275-320', 14, 235.37, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '0924-5603', 19, 250.54, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '42799-403', 89, 377.4, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '49349-369', 75, 328.94, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '0603-0894', 65, 106.73, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '36987-1608', 63, 146.14, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '53389-211', 22, 338.82, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '49348-077', 68, 386.43, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '76354-013', 59, 345.12, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '61727-301', 53, 435.88, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '50419-491', 82, 346.19, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '69179-490', 83, 286.34, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '0527-1393', 76, 162.55, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (1, '51141-0057', 40, 407.26, 1);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '54868-5687', 65, 174.47, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '68405-032', 64, 134.42, 2);
insert into accounts (account_type_id, account_number, customer_id, current_balance, state_id) values (2, '55316-489', 2, 129.38, 1);



select * from accounts a 



drop table if exists ref_transaction_types;

create table ref_transaction_types(
	transaction_type_id serial primary key,
	transaction_type_description varchar(350),
	state_id int,
	created timestamp default now(),
	constraint fk_ref_transaction_types_states
		foreign key(state_id) references states(state_id)

);

insert into ref_transaction_types(transaction_type_description,state_id)values('Deposit',1);
insert into ref_transaction_types(transaction_type_description,state_id)values('Withdrawal',1);

select * from ref_transaction_types;


drop table if exists transactions;

create table transactions(
	transaction_id serial primary key,
	account_id int,
	transaction_type_id int,
	amount numeric(15,6),
	transaction_timestamp timestamp default now(),
	balance numeric(15,6),
	state_id int,
	created timestamp default now(),
	constraint fk_transactions_accounts
		foreign key(account_id) references accounts(account_id),
	constraint fk_transactions_ref_transaction_types
		foreign key(transaction_type_id) references ref_transaction_types(transaction_type_id),
	constraint fk_transactions_states
		foreign key(state_id) references states(state_id)
);


insert into transactions (account_id, transaction_type_id, amount, state_id) values (44, 1, 151.88, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (17, 1, 199.4, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (62, 1, 204.09, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (52, 1, 337.53, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (22, 1, 354.66, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (90, 2, 140.4, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (76, 2, 102.3, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (29, 2, 351.59, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (58, 2, 234.65, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (78, 1, 159.97, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (53, 1, 215.19, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (5, 1, 201.64, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (93, 2, 167.25, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (15, 1, 105.3, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (43, 1, 127.71, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (65, 1, 100.57, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (23, 2, 138.91, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (29, 1, 340.75, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (19, 2, 231.68, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (13, 2, 121.45, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (28, 2, 297.01, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (64, 1, 262.65, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (94, 2, 432.03, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (38, 1, 129.19, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (11, 2, 403.94, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (39, 1, 362.95, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (67, 1, 475.73, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (57, 2, 319.85, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (4, 2, 403.24, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (89, 2, 436.58, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (4, 1, 211.23, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (56, 2, 203.11, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (44, 2, 439.31, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (28, 2, 450.33, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (70, 1, 274.77, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (56, 1, 103.13, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (47, 1, 404.35, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (29, 2, 328.22, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (43, 2, 363.46, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (80, 1, 129.55, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (38, 1, 373.66, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (59, 2, 120.22, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (66, 2, 113.98, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (61, 1, 142.1, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (12, 1, 151.98, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (65, 2, 227.43, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (85, 1, 141.55, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (36, 2, 483.74, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (44, 1, 382.41, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (52, 2, 457.77, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (78, 1, 229.61, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (66, 1, 240.04, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (56, 1, 163.64, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (10, 1, 286.19, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (60, 2, 364.62, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (22, 2, 422.47, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (90, 2, 177.41, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (79, 1, 467.86, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (78, 1, 291.01, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (66, 2, 143.24, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (2, 2, 261.39, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (35, 2, 109.69, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (86, 2, 427.22, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (84, 1, 497.26, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (62, 1, 115.6, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (69, 1, 478.94, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (43, 2, 485.18, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (16, 1, 107.9, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (33, 2, 281.4, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (79, 1, 296.43, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (88, 2, 119.01, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (8, 1, 258.37, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (18, 2, 379.31, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (61, 1, 408.84, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (68, 2, 288.05, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (27, 1, 264.4, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (91, 1, 338.35, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (7, 2, 107.31, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (85, 1, 121.81, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (21, 2, 242.83, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (40, 2, 448.88, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (32, 2, 455.44, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (84, 1, 241.53, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (19, 2, 468.18, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (35, 1, 287.17, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (28, 1, 107.67, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (18, 1, 489.24, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (78, 1, 244.18, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (6, 1, 413.67, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (34, 2, 455.01, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (28, 1, 227.1, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (21, 2, 185.51, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (20, 1, 186.11, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (9, 1, 292.21, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (40, 2, 148.73, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (86, 2, 443.88, 2);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (30, 1, 317.93, 1);
insert into transactions (account_id, transaction_type_id, amount, state_id) values (74, 1, 176.4, 2);


select * from transactions;


select * from accounts a ;
select * from transactions where account_id = 2 and transaction_type_id = 2;


do $$

declare account_id int;
declare amount numeric(5,2);

declare trans_cursor cursor for
	select account_id, amount from transactions where transaction_type_id = 2;

begin
	
    open trans_cursor;
   
   	loop
	   	fetch next from trans_cursor into account_id, amount;
	    exit when not found;
	    
	   select account_id, amount;
	   --return next;
   		
   	end loop
   	
	close trans_cursor;

end $$;