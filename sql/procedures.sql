DELIMITER //
CREATE PROCEDURE addCustomer(email varchar(250),password varchar(20),user_name varchar(45))
 BEGIN
 insert into user (email,password,user_name) values (email,password,user_name) ;
 END;//
DELIMITER ;