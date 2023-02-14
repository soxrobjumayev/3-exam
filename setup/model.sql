
create database dtm;

\c dtm;

drop table users cascade;
create table users(
    user_id serial primary key,
    username varchar ,
    email varchar ,
    password varchar(60) 
);


insert into users(username,email,password) values('asad','asad@gmailcom','1234');

drop table fanlar cascade;
create table fanlar(
    fan_id serial primary key,
    fan_nomi varchar 
);

insert into fanlar(fan_nomi) values
('matem'),('engliz_tili'),('fizika'),
('adabiyot'),('tarix'),('kimyo');





drop table universitet cascade;
create table universitet(
    universitet_id serial primary key,
    universitet_nomi varchar ,
    grand_ball varchar,
    kontrakt_ball varchar,
    fan_id int references fanlar(fan_id)

);

insert into universitet(universitet_nomi,grand_ball,kontrakt_ball,fan_id) values
('TATU',100,50,1),
('DIPLOMATIYA',100,50,1),
('JAHON_TILI',100,50,2),
('SHARQSHUNOSLIK',100,50,2),
('TRANSPORT',100,50,3),
('MOSHINASOZLIK',100,50,3),
('UZBEKISRON NEW',100,50,4),
('MILLIY',100,50,4),
('DIPLOMATIYA',100,50,5),
('JAHON_TILI',100,50,5),
('SAMPI',100,50,6),
('TIBBIYOT',100,50,6);



drop table savollar cascade;

create table savollar(
    savol_id serial primary key,
    savol_nomi varchar,
    fan_id int references fanlar(fan_id)
);


insert into savollar(savol_nomi,fan_id) values
('2*2',1),
('2+2',1),
('2-2',1),
('2*10',1),
('2+100',1),
('4-2',1),
('2+10',1),
('2-1',1),
('2-20',1),
('2+50',1),

('_hello_ so''zi tarjimasi',2),
('welcome  so''zi tarjimasi',2),
('YOU **** student',2),
('cars tarjimasi',2),
('go sozi tarjimasi',2),
('___I____  so''zi tarjimasi',2),
('they tarjimasi',2),
('__i am going school__ tarjimasi',2),
('you  so''zi tarjimasi',2),
('we **** student',2),

('binzen nimada iwlatiladi',3),
('motor nima',3),
('magnit nima',3),
('tarozi nima',3),
('samolot nima iw qiladi',3),
('motorga iwlaw ucun nima keri',3),
('mowina gazni nima',3),
('tezlik nimada ulchalinadi',3),
('gentra maksimal tezligi',3),
('nexia_1 maksimal tezligi',3),

(' Alisher Navoiy tugilgan yil',4),
('PUSHKIN tugilgan yil',4),
('Zahiriddin Muhammad Bobur tugilgan yil',4),
('*lisher Navoiy bosh harfi?',4),
('Alisher Navoiy o''lgan yil',4),
('Alisher Navoi* oxirgi harfi?',4),
('Zahiriddin Muhammad Bobur o''lgan yil',4),
('*ushkin bosh harf*?',4),
('Alisher Navoiy',4),
('*ushkin bosh harfi?',4),

('AMIR TEMUR kim',5),
('AMIR TEMUR tugilgan yil',5),
('mustaqillik kuni',5),
('mustaqillik yili',5),
('uzb bayrogi qacon qabul qilingan',5),
('konstitsiya kuni',5),
('bayrogi kuni',5),
('ikkinchi jahon urushi',5),
('birinchi jahon urushi',5),
('ikkinchi jahon urushi tugawi',5),


('nyuton qonuni',6),
('quyosh rangi ',6),
('oy rangi',6),
('spirt nima',6),
('shipris nima',6),
('H2O nima',6),
('spirt nima',6),
('barg rangi',6),
('barg yonadimi',6),
('spirt yomadimi',6);


drop table  cascade;
create table javoblar(
     javoblar_id serial primary key,
     javob varchar,
    status boolean,
    savol_id int references savollar(savol_id)

);


insert into javoblar(javob,status,savol_id)values
('4',true,1),
('1',false,1),
('2',false,1),

('4',false,2),
('4',true,2),
('2',false,2),

('4',false,3),
('200',false,3),
('0',true,3),

('4',false,4),
('200',false,4),
('200',true,4),

('200',true,5),
('20',false,5),
('0',false,5),

('200',false,6),
('2',true,6),
('0',false,6),

('200',false,7),
('20',true,7),
('0',false,7),

('200',false,8),
('210',false,8),
('1',true,8),


('200',false,9),
('18',true,9),
('1',false,9),

('200',false,10),
('100',true,10),
('1',false,10),


-- ingliz tili

('salom',true,1),
('asas1',false,1),
('hayr',false,1),

('hayr',false,2),
('xush kelibsiz',true,2),
('salom',false,2),

('is',false,3),
('am',false,3),
('are',true,3),

('veli',false,4),
('car',false,4),
('moshinalar',true,4),

('bowla',true,5),
('tuxta',false,5),
('hm',false,5),

('sen',false,6),
('men',true,6),
('u',false,6),

('men',false,7),
('ular',true,7),
('sen',false,7),



('hey',false,8),
('hayr',false,8),
('men maktabga boryapman',true,8),


('biz',false,9),
('siz',true,9),
('u',false,9),

('as',false,10),
('are',true,10),
('i',false,10),

-- fizika

('mowina',true,1),
('odam',false,1),
('veli',false,1),

('veli',false,2),
('nimadirni harakatga keliwi',true,2),
('mowina',false,2),

('qum',false,3),
('tow',false,3),
('oziga tortiwi kuchi',true,3),

('veli',false,4),
('car',false,4),
('og''rlik ulcmi',true,4),

('uchadi',true,5),
('tuxta',false,5),
('yuradi',false,5),

('cola',false,6),
('yoqilg''i',true,6),
('suv',false,6),

('hec narsa',false,7),
('yuradi ',true,7),
('yoqvoradi',false,7),



('metr',false,8),
('km',false,8),
('km/s',true,8),


('10',false,9),
('220',true,9),
('100',false,9),

('180',false,10),
('200',true,10),
('50',false,10),


-- adabiyot

('1441',true,1),
('99',false,1),
('1222',false,1),

('5555',false,2),
('1799',true,2),
('2002',false,2),

('1245',false,3),
('7482',false,3),
('1483',true,3),

('v',false,4),
('c',false,4),
('A',true,4),

('1501',true,5),
('1500',false,5),
('1460',false,5),

('c',false,6),
('y',true,6),
('s',false,6),

('1529',false,7),
('1530 ',true,7),
('1520',false,7),



('m',false,8),
('m',false,8),
('p',true,8),


('1444-1501',false,9),
('1441-1501',true,9),
('1441-1502',false,9),

('l',false,10),
('p',true,10),
('j',false,10),


-- tarix

('sarkarda',true,1),
('askar',false,1),
('letinat',false,1),

('1335',false,2),
('1336',true,2),
('1334',false,2),

('8',false,3),
('25',false,3),
('31',true,3),

('1999',false,4),
('1354',false,4),
('1991',true,4),

('1991',true,5),
('2000',false,5),
('01235',false,5),

('20',false,6),
('8',true,6),
('0',false,6),

('20',false,7),
('18',true,7),
('0',false,7),

('2000',false,8),
('1952',false,8),
('1939',true,8),


('2000',false,9),
('1914',true,9),
('1913',false,9),

('2000',false,10),
('1945',true,10),
('1944',false,10),

-- kimyo

('kimyo formulasi',true,1),
('tarix',false,1),
('adabiyot',false,1),

('yawil',false,2),
('sariq',true,2),
('oq',false,2),

('qora',false,3),
('asas',false,3),
('oq',true,3),

('yug',false,4),
('suv',false,4),
('spirt',true,4),

('tanaga wu orqali dori ketadi',true,5),
('bilmiyman',false,5),
('igna',false,5),

('youg',false,6),
('suv',true,6),
('binzen',false,6),


('qizil',false,8),
('oq',false,8),
('yawil',true,8),


('yoq',false,9),
('ha',true,9),
('yoq',false,9),

('yoq',false,10),
('ha',true,10),
('vaziyatga qarab',false,10);







