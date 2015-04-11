DELIMITER //
CREATE PROCEDURE addCustomer(email varchar(250),password varchar(20),user_name varchar(45))
 BEGIN
 insert into user (email,password,user_name) values (email,password,user_name) ;
 END;//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE addMovie(id int(11),name varchar(250),release_time date,rating float,length int(11),trailer_url varchar(100),genre varchar(100),img_url varchar(1000),synopsis varchar(10000))
BEGIN
 insert into movie (id,name,release_time,rating,length,trailer_url,genre,img_url,synopsis) values (id,name,release_time,rating,length,trailer_url,genre,img_url,synopsis) ;
 END;//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE addTheatre(id int(11),name varchar(250),city varchar(45), zipcode int(11), state varchar(45),address varchar(250), phone_number varchar(13), supported int(11))
BEGIN
 insert into theatre (id,name,city,zipcode,state,address,phone_number,supported) values (id,name,city,zipcode,state,address,phone_number,supported) ;
 END;//
DELIMITER ;


DELIMITER //
CREATE PROCEDURE hoticket.getMovieByTheatreId(theatre_id int(11))
BEGIN
 select distinct m.* from movie m join showing s where m.id=s.movie_id and s.theatre_id=theatre_id;
 END;//
DELIMITER ;