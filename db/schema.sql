DROP DATABASE IF EXISTS users_db;
CREATE DATABASE users_db;

use users_db;


CREATE TABLE userInfo 
(
id INT NOT NULL AUTO_INCREMENT,
userName VARCHAR(15) NOT NULL,
pass VARCHAR(15) NOT NULL,
charName VARCHAR(20) NOT NULL,
attack DECIMAL(10,2) NULL,
defense DECIMAL(10,2) NULL,
intellect DECIMAL(10,2) NULL,
attBoost DECIMAL(10,2) NULL,
defBoost DECIMAL (10,2) NULL,
intBoost DECIMAL (10,2) NULL,
bossOne boolean DEFAULT false,
bossTwo boolean DEFAULT false,
bossThree boolean DEFAULT false,
Primary Key (id)

);

CREATE TABLE items
(
id INT NOT NULL AUTO_INCREMENT,
itemName VARCHAR(15) NOT NULL,
attack DECIMAL(10,2) NULL,
defense DECIMAL(10,2) NULL,
intellect DECIMAL(10,2) NULL,
lvlUnlock boolean DEFAULT false,
Primary Key (id)

);



-- SAM'S SCHEMA

DROP DATABASE IF EXISTS users_db;
CREATE DATABASE users_db;

use users_db;


CREATE TABLE userInfo 
(
id INT NOT NULL auto_increment,
userName VARCHAR(15) NOT NULL,
pass VARCHAR(15) NOT NULL,
charName VARCHAR(20) NOT NULL,
attack DECIMAL(10,2) NULL,
defense DECIMAL(10,2) NULL,
intellect DECIMAL(10,2) NULL,
itemOne VARCHAR(50) NULL,
itemTwo VARCHAR(50) NULL,
itemThree VARCHAR(50) NULL,
bossOne boolean DEFAULT false,
bossTwo boolean DEFAULT false,
bossThree boolean DEFAULT false,
Primary Key (id)

);

CREATE TABLE items
(
itemID INT NOT NULL AUTO_INCREMENT,
itemName VARCHAR(50) NOT NULL,
attack DECIMAL(10,2) NULL,
defense DECIMAL(10,2) NULL,
intellect DECIMAL(10,2) NULL,
lvlUnlock boolean DEFAULT false,
charName VARCHAR(20) NOT NULL,
id INT null,
Primary Key (itemID),
FOREIGN KEY (id) REFERENCES userInfo(id)

);

-- this is jawbonedb




use uhh30oksbmq3o2gs;

drop table userInfo;
drop table items;

CREATE TABLE userInfo 
(
id INT NOT NULL auto_increment,
userName VARCHAR(15) NOT NULL,
pass VARCHAR(15) NOT NULL,
charName VARCHAR(20) NOT NULL,
attack DECIMAL(10,2) NULL,
defense DECIMAL(10,2) NULL,
intellect DECIMAL(10,2) NULL,
itemOne VARCHAR(50) NULL,
itemTwo VARCHAR(50) NULL,
itemThree VARCHAR(50) NULL,
bossOne boolean DEFAULT false,
bossTwo boolean DEFAULT false,
bossThree boolean DEFAULT false,
Primary Key (id)

);

CREATE TABLE items
(
itemID INT NOT NULL AUTO_INCREMENT,
itemName VARCHAR(50) NOT NULL,
attack DECIMAL(10,2) NULL,
defense DECIMAL(10,2) NULL,
intellect DECIMAL(10,2) NULL,
lvlUnlock boolean DEFAULT false,
charName VARCHAR(20) NOT NULL,
id INT null,
Primary Key (itemID),
FOREIGN KEY (id) REFERENCES userInfo(id)

);

INSERT INTO userInfo (userName, pass, charName, attack, defense, intellect, itemOne, itemTwo, itemThree, bossOne, bossTwo, bossThree) 
VALUES ('Smarcus4','sam12345','Sidekick', 15, 2, 10, 'none', 'none', 'none', false, false, false);

INSERT INTO userInfo (userName, pass, charName, attack, defense, intellect, itemOne, itemTwo, itemThree, bossOne, bossTwo, bossThree) 
VALUES ('GODMAN','godone','Hero', 150, 20, 50, 'none', 'none', 'none', false, false, false);

/*********************************************
ITEMSDB SEEDS
*********************************************/



INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Tech Goggles", 0, 0, 10, false,"Hero");

INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Cape of Strength", 8, 0, 0, false,"Hero");

INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Passive: Brawler Might", 0, 15, 0, false,"Hero");



INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Drainer Helm", 0, 15, 0, false,"Sidekick");

INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Dual Grapple Guns", 10, 0, 0, false,"Sidekick");

INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Passive: Steady Aim", 0, 0, 15, false,"Sidekick");



INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Black Belt", 10, 0, 0, false,"Shadowtaken");

INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Melee Prowness", 8, 0, 0, false,"Shadowtaken");

INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Crouching Tiger Hidden Chimera", 0, 10, 0, false,"Shadowtaken");



INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Insect Wings", 0, 15, 0, false,"Mothman");

INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Moth Vision Goggles", 0, 0, 15, false,"Mothman");

INSERT INTO items (itemName, attack, defense, intellect, lvlUnlock, charName) 
VALUES("Wingstorm Wind Strike", 10, 0, 0, false,"Mothman");