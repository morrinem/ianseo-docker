use mysql;

create database ianseo;
create user 'ianseo'@'%' identified by 'ianseo';
grant all privileges on ianseo.* to 'ianseo'@'%';
flush privileges;