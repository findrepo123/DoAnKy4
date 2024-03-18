DROP DATABASE IF EXISTS `Fastshop`;
CREATE DATABASE `Fastshop`;
USE `Fastshop`;

CREATE TABLE `accounts`(
	`username` varchar(30) NOT NULL,
	`email` varchar(30) NOT NULL,
	`fullname` varchar(30) NOT NULL,
	`password` varchar(15) NOT NULL,
	`photo` varchar(30) NULL,
	`phone` varchar(15) NOT NULL,
	`active` bit NULL,
	PRIMARY KEY CLUSTERED (`username` ASC)
);

CREATE TABLE `addresses`(
	`id` bigint AUTO_INCREMENT NOT NULL,
	`choose` bit NULL,
	`place` varchar(200) NOT NULL,
	`username` varchar(30) NOT NULL,
	PRIMARY KEY CLUSTERED (`id` ASC)
);

CREATE TABLE `atm`(
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(150) NOT NULL,
	`company` varchar(60) NOT NULL,
	`number` varchar(30) NOT NULL,
	`username` varchar(30) NOT NULL,
	`valid` bit NOT NULL,
	PRIMARY KEY CLUSTERED (`id` ASC)
);

CREATE TABLE `authorities`(
	`id` int AUTO_INCREMENT NOT NULL,
	`username` varchar(30) NULL,
	`roleid` varchar(255) NULL,
	PRIMARY KEY CLUSTERED (`id` ASC)
);

CREATE TABLE `categories`(
	`id` varchar(255) NOT NULL,
	`name` varchar(25) NOT NULL,
	`status` bit NULL,
	`unit` varchar(255) NULL,
    PRIMARY KEY CLUSTERED (`id` ASC)
);

CREATE TABLE `categorydetails`(
	`id` varchar(5) NOT NULL,
	`property` varchar(70) NOT NULL,
	`categoryid` varchar(255) NULL,
	PRIMARY KEY CLUSTERED (`id` ASC)
) ;

CREATE TABLE `comments`(
	`id` int AUTO_INCREMENT NOT NULL,
	`feedback` varchar(250) NULL,
	`productid` int NULL,
	`username` varchar(30) NULL,
	`rate` int NULL,
	`date_post` date NULL,
	PRIMARY KEY CLUSTERED (`id` ASC) 
) ;

CREATE TABLE `discounts`(
	`id` varchar(20) NOT NULL,
	`date_from` date NULL,
	`date_end` date NULL,
	`free` float NULL,
	`dolar` float NULL,
	`number` int NULL,
	PRIMARY KEY CLUSTERED (`id` ASC) 
); 

CREATE TABLE `histories`(
	`id` bigint AUTO_INCREMENT NOT NULL,
	`link` varchar(250) NULL,
	`schedual` datetime NOT NULL,
	`title` varchar(250) NOT NULL,
	`username` varchar(30) NOT NULL,
	`status` bit NULL,
	PRIMARY KEY CLUSTERED (`id` ASC) 
);

CREATE TABLE `notifications`(
	`id` bigint AUTO_INCREMENT NOT NULL,
	`file_name` varchar(200) NULL,
	`sent_date` date NULL,
	`title` varchar(150) NOT NULL,
	`account_id` varchar(30) NULL,
	`status` bit NULL,
	PRIMARY KEY CLUSTERED (`id` ASC) 
) ;

CREATE TABLE `orderdetails`(
	`id` bigint AUTO_INCREMENT NOT NULL,
	`quantity` int NULL,
	`orderid` bigint NOT NULL,
	`productid` int NULL,
	PRIMARY KEY CLUSTERED (`id` ASC) 
) ;

CREATE TABLE `orders`(
	`id` bigint AUTO_INCREMENT NOT NULL,
	`address` varchar(100) NOT NULL,
	`createdate` date NULL,
	`username` varchar(30) NULL,
	`status_id` int NULL,
	`date_confirm` date NULL,
	`total` float NULL,
	PRIMARY KEY CLUSTERED (`id` ASC) 
);

CREATE TABLE `productdetails`(
	`id` bigint AUTO_INCREMENT NOT NULL,
	`category_detail_id` varchar(5) NOT NULL,
	`info` varchar(10000) NULL,
	`product_id` int NULL,
	PRIMARY KEY CLUSTERED (`id` ASC) 
);

CREATE TABLE `products`(
	`id` int AUTO_INCREMENT NOT NULL,
	`createdate` date NULL,
	`image` varchar(255) NULL,
	`name` varchar(50) NOT NULL,
	`price` float NULL,
	`categoryid` varchar(255) NULL,
	`number` int NULL,
	`available` bit NULL,
	`describe` varchar(10000) NULL,
	PRIMARY KEY CLUSTERED (`id` ASC) 
) ;

CREATE TABLE `roles`(
	`id` varchar(255) NOT NULL,
	`name` varchar(255) NULL,
	`level` varchar(255) NULL,
	PRIMARY KEY CLUSTERED (`id` ASC) 
) ;

CREATE TABLE `status`(
	`id` int NOT NULL,
	`kind` varchar(50) NOT NULL,
	PRIMARY KEY CLUSTERED (`id` ASC) 
);