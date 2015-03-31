CREATE SCHEMA `hoticket` ;

CREATE TABLE `hoticket`.`movie` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `release_time` DATE NULL DEFAULT '2016-01-01',
  `rating` FLOAT NULL DEFAULT 0.0,
  `length` INT NULL DEFAULT 0,
  `genre` VARCHAR(100) NULL DEFAULT 'null',
  `img_url` VARCHAR(1000) NULL,
  `synopsis` VARCHAR(10000) NULL DEFAULT 'this is a movie!',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
  
  
  CREATE TABLE `hoticket`.`theatre` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(250) NULL DEFAULT 'theatre',
  `city` VARCHAR(45) NULL DEFAULT 'null',
  `state` VARCHAR(45) NULL DEFAULT 'null',
  `zipcode` INT NULL DEFAULT NULL,
  `address` VARCHAR(250) NULL DEFAULT 'null',
  `phone_number` VARCHAR(13) NULL DEFAULT 'null',
  `supported` INT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
  
  CREATE TABLE `hoticket`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name`  VARCHAR(50) NOT NULL UNIQUE,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(250) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `role` INT NOT NULL DEFAULT 0 COMMENT '0:customer\n1:admin\n2:manager',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC));

  CREATE TABLE `hoticket`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `birthday` DATE NULL DEFAULT NULL,
  `gender` INT NULL DEFAULT 2 COMMENT '0:male\n1:female\n2:other',
  `zipcode` INT NULL,
  `genres` VARCHAR(250) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id`
    FOREIGN KEY (`id`)
    REFERENCES `hoticket`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
    
  CREATE TABLE `hoticket`.`employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `hourly_rate` INT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `user_id`
    FOREIGN KEY (`id`)
    REFERENCES `hoticket`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

  
  
  CREATE TABLE `hoticket`.`showing` (
  `theatre_id` INT NOT NULL,
  `movie_id` INT NOT NULL,
  `category` VARCHAR(45) NOT NULL COMMENT 'IMAX,3D,normal\nticket price set according to category\n\n',
  `date` DATE NOT NULL,
  `start_time` TIME NOT NULL,
  `ticket_numer` INT NOT NULL DEFAULT 50 COMMENT 'start with 50 tickets',
  PRIMARY KEY (`theatre_id`, `movie_id`, `date`, `category`, `start_time`),
  UNIQUE INDEX `date_UNIQUE` (`date` ASC),
  CONSTRAINT `movie_id`
    FOREIGN KEY (`movie_id`)
    REFERENCES `hoticket`.`movie` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `theatre_id`
    FOREIGN KEY (`theatre_id`)
    REFERENCES `hoticket`.`theatre` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



