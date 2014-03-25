#!/usr/bin/ruby

require 'sqlite3'

begin
    
    db = SQLite3::Database.new "main.db"
  
  db.execute "DROP TABLE Ingredient"
  db.execute "DROP TABLE Drink"
  db.execute "DROP TABLE Recipe"
  db.execute "DROP TABLE Pump"
  db.execute "DROP TABLE History"
  
  
	db.execute "CREATE TABLE IF NOT EXISTS Ingredient (
			i_id INTEGER PRIMARY KEY NOT NULL UNIQUE, 
			i_name VARCHAR NOT NULL,
			i_proof INTEGER, 
			i_category VARCHAR)"

	db.execute "CREATE TABLE IF NOT EXISTS Drink (
			d_id INTEGER PRIMARY KEY  NOT NULL, 
			d_name VARCHAR NOT NULL, 
			d_desc VARCHAR,
			d_img BLOB)"

	db.execute "CREATE TABLE IF NOT EXISTS Recipe (
			d_id INTEGER NOT NULL, 
			i_id INTEGER NOT NULL, 
			i_qty FLOAT,
			FOREIGN KEY (d_id) REFERENCES Drink(d_id), 
			FOREIGN KEY (i_id) REFERENCES Ingredient(i_id))"

	db.execute "CREATE TABLE IF NOT EXISTS Pump (
			p_id INTEGER PRIMARY KEY NOT NULL,
			p_loc VARCHAR NOT NULL, 
			i_id INTEGER NOT NULL,
			p_max FLOAT,
			p_curr FLOAT,
			FOREIGN KEY (i_id) REFERENCES Ingredient(i_id))"
        
	db.execute "CREATE TABLE IF NOT EXISTS History (
			t_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
			t_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, 
			d_id INTEGER NOT NULL, 
			d_disp BOOL NOT NULL, 
			FOREIGN KEY (d_id) REFERENCES Drink(d_id))"
	
	db.execute "INSERT INTO Ingredient VALUES(1,'Amaretto',56,'Liqueur');"
	db.execute "INSERT INTO Ingredient VALUES(2,'White Cr me de Cacao',50,'Liqueur');"
	db.execute "INSERT INTO Ingredient VALUES(3,'Grenadine',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(4,'Coffee Liqueur',40,'Liqueur');"
	db.execute "INSERT INTO Ingredient VALUES(5,'Light Rum',80,'Rum');"
	db.execute "INSERT INTO Ingredient VALUES(6,'Vodka',80,'Vodka');"
	db.execute "INSERT INTO Ingredient VALUES(7,'Tequila',80,'Tequila');"
	db.execute "INSERT INTO Ingredient VALUES(8,'Peach Schnapps',46,'Liqueur');"
	db.execute "INSERT INTO Ingredient VALUES(9,'Gin',80,'Gin');"
	db.execute "INSERT INTO Ingredient VALUES(10,'Whiskey',80,'Whiskey');"
	db.execute "INSERT INTO Ingredient VALUES(11,'Dark Rum',80,'Rum');"
	db.execute "INSERT INTO Ingredient VALUES(12,'Bailey s',34,'Irish Cream');"
	db.execute "INSERT INTO Ingredient VALUES(13,'Sour Mix',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(14,'Cranberry Juice',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(15,'Bloody Mary Mix',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(16,'Grapefruit Juice',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(17,'Cr me de Cacao',40,'Liqueur');"
	db.execute "INSERT INTO Ingredient VALUES(18,'Lemon Juice',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(19,'Orange Juice',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(20,'Lime Juice',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(21,'Grand Marnier',80,'Liqueur');"
	db.execute "INSERT INTO Ingredient VALUES(22,'Coke',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(23,'Southern Comfort',70,'Liqueur');"
	db.execute "INSERT INTO Ingredient VALUES(24,'Cream',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(25,'Blue Curacao',60,'Liqueur');"
	db.execute "INSERT INTO Ingredient VALUES(26,'Frangelico',40,'Liqueur');"
	db.execute "INSERT INTO Ingredient VALUES(27,'Pineapple Juice',0,'Mixer');"
	db.execute "INSERT INTO Ingredient VALUES(28,'Club Soda',0,'Mixer');"
	db.execute "INSERT INTO Drink VALUES(1,'Alabama Slammer','Shot','')"
	db.execute "INSERT INTO Drink VALUES(2,'Almond Joy','Shot','')"
	db.execute "INSERT INTO Drink VALUES(3,'Amaretto Sour','Drink','')"
	db.execute "INSERT INTO Drink VALUES(4,'American Flag','Shot','')"
	db.execute "INSERT INTO Drink VALUES(5,'B-52','Shot','')"
	db.execute "INSERT INTO Drink VALUES(6,'B-51','Shot','')"
	db.execute "INSERT INTO Drink VALUES(7,'Bacardi Cocktail','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(8,'Bay Breeze','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(9,'Black Russian','Shot','')"
	db.execute "INSERT INTO Drink VALUES(10,'Bloody Mary','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(11,'Brave Bull','Shot','')"
	db.execute "INSERT INTO Drink VALUES(12,'Californian','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(13,'Cape Cod','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(14,'Cherry Bomb','Shot','')"
	db.execute "INSERT INTO Drink VALUES(15,'Cosmopolitan','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(16,'Daiquiri','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(17,'Fuzzy Navel','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(18,'Gimlet, Vodka','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(19,'Gimlet, Gin','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(20,'Godfather','Shot','')"
	db.execute "INSERT INTO Drink VALUES(21,'Godmother','Shot','')"
	db.execute "INSERT INTO Drink VALUES(22,'Greyhound','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(23,'John Collins','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(24,'Lemon Drop','Shot','')"
	db.execute "INSERT INTO Drink VALUES(25,'Margarita','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(26,'Mudslide','Shot','')"
	db.execute "INSERT INTO Drink VALUES(27,'Orgasm','Shot','')"
	db.execute "INSERT INTO Drink VALUES(28,'Planter''s Punch','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(29,'Quaalude','Shot','')"
	db.execute "INSERT INTO Drink VALUES(30,'Salty Dog, Gin','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(31,'Salty Dog, Vodka','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(32,'Screwdriver','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(33,'Sea Breeze','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(34,'Tennessee Tea','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(35,'Tequila Sunrise','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(36,'Jack & Coke','Cocktail','')"
	db.execute "INSERT INTO Drink VALUES(37,'Rum & Coke','Cocktail','')"
	db.execute "INSERT INTO Recipe VALUES(1,1,0.5)"
	db.execute "INSERT INTO Recipe VALUES(1,6,0.5)"
	db.execute "INSERT INTO Recipe VALUES(1,23,0.5)"
	db.execute "INSERT INTO Recipe VALUES(1,18,0.1)"
	db.execute "INSERT INTO Recipe VALUES(2,2,0.5)"
	db.execute "INSERT INTO Recipe VALUES(2,1,0.5)"
	db.execute "INSERT INTO Recipe VALUES(2,24,2)"
	db.execute "INSERT INTO Recipe VALUES(3,1,1.25)"
	db.execute "INSERT INTO Recipe VALUES(3,13,4)"
	db.execute "INSERT INTO Recipe VALUES(4,3,0.5)"
	db.execute "INSERT INTO Recipe VALUES(4,2,0.5)"
	db.execute "INSERT INTO Recipe VALUES(4,25,0.5)"
	db.execute "INSERT INTO Recipe VALUES(5,4,0.5)"
	db.execute "INSERT INTO Recipe VALUES(5,12,0.5)"
	db.execute "INSERT INTO Recipe VALUES(5,21,0.5)"
	db.execute "INSERT INTO Recipe VALUES(6,4,0.5)"
	db.execute "INSERT INTO Recipe VALUES(6,12,0.5)"
	db.execute "INSERT INTO Recipe VALUES(6,26,0.5)"
	db.execute "INSERT INTO Recipe VALUES(7,5,1.5)"
	db.execute "INSERT INTO Recipe VALUES(7,13,4)"
	db.execute "INSERT INTO Recipe VALUES(7,3,0.6)"
	db.execute "INSERT INTO Recipe VALUES(8,6,2)"
	db.execute "INSERT INTO Recipe VALUES(8,14,3)"
	db.execute "INSERT INTO Recipe VALUES(8,27,3)"
	db.execute "INSERT INTO Recipe VALUES(9,6,0.75)"
	db.execute "INSERT INTO Recipe VALUES(9,4,0.75)"
	db.execute "INSERT INTO Recipe VALUES(10,6,2)"
	db.execute "INSERT INTO Recipe VALUES(10,15,6)"
	db.execute "INSERT INTO Recipe VALUES(11,7,0.75)"
	db.execute "INSERT INTO Recipe VALUES(11,4,0.75)"
	db.execute "INSERT INTO Recipe VALUES(12,6,2)"
	db.execute "INSERT INTO Recipe VALUES(12,16,3)"
	db.execute "INSERT INTO Recipe VALUES(12,19,3)"
	db.execute "INSERT INTO Recipe VALUES(13,6,2)"
	db.execute "INSERT INTO Recipe VALUES(13,14,5)"
	db.execute "INSERT INTO Recipe VALUES(13,28,1)"
	db.execute "INSERT INTO Recipe VALUES(14,6,0.75)"
	db.execute "INSERT INTO Recipe VALUES(14,17,1)"
	db.execute "INSERT INTO Recipe VALUES(14,3,0.5)"
	db.execute "INSERT INTO Recipe VALUES(15,6,1.25)"
	db.execute "INSERT INTO Recipe VALUES(15,18,0.25)"
	db.execute "INSERT INTO Recipe VALUES(15,14,1)"
	db.execute "INSERT INTO Recipe VALUES(16,5,1.5)"
	db.execute "INSERT INTO Recipe VALUES(16,13,4)"
	db.execute "INSERT INTO Recipe VALUES(17,8,2)"
	db.execute "INSERT INTO Recipe VALUES(17,19,6)"
	db.execute "INSERT INTO Recipe VALUES(18,6,1.5)"
	db.execute "INSERT INTO Recipe VALUES(18,20,4.5)"
	db.execute "INSERT INTO Recipe VALUES(19,9,1.5)"
	db.execute "INSERT INTO Recipe VALUES(19,20,4.5)"
	db.execute "INSERT INTO Recipe VALUES(20,10,0.75)"
	db.execute "INSERT INTO Recipe VALUES(20,1,0.75)"
	db.execute "INSERT INTO Recipe VALUES(21,6,0.75)"
	db.execute "INSERT INTO Recipe VALUES(21,1,0.75)"
	db.execute "INSERT INTO Recipe VALUES(22,6,1.5)"
	db.execute "INSERT INTO Recipe VALUES(22,16,4.5)"
	db.execute "INSERT INTO Recipe VALUES(23,10,1.5)"
	db.execute "INSERT INTO Recipe VALUES(23,13,3)"
	db.execute "INSERT INTO Recipe VALUES(23,28,1.5)"
	db.execute "INSERT INTO Recipe VALUES(24,6,1.5)"
	db.execute "INSERT INTO Recipe VALUES(24,13,0.25)"
	db.execute "INSERT INTO Recipe VALUES(24,18,0.25)"
	db.execute "INSERT INTO Recipe VALUES(25,7,1.5)"
	db.execute "INSERT INTO Recipe VALUES(25,13,2)"
	db.execute "INSERT INTO Recipe VALUES(25,21,0.5)"
	db.execute "INSERT INTO Recipe VALUES(25,20,0.5)"
	db.execute "INSERT INTO Recipe VALUES(26,6,0.5)"
	db.execute "INSERT INTO Recipe VALUES(26,4,0.5)"
	db.execute "INSERT INTO Recipe VALUES(26,12,0.5)"
	db.execute "INSERT INTO Recipe VALUES(27,1,0.5)"
	db.execute "INSERT INTO Recipe VALUES(27,12,0.5)"
	db.execute "INSERT INTO Recipe VALUES(27,4,0.5)"
	db.execute "INSERT INTO Recipe VALUES(28,11,1.5)"
	db.execute "INSERT INTO Recipe VALUES(28,5,1.5)"
	db.execute "INSERT INTO Recipe VALUES(28,13,1.5)"
	db.execute "INSERT INTO Recipe VALUES(28,19,1.5)"
	db.execute "INSERT INTO Recipe VALUES(28,3,0.5)"
	db.execute "INSERT INTO Recipe VALUES(29,12,0.5)"
	db.execute "INSERT INTO Recipe VALUES(29,6,0.5)"
	db.execute "INSERT INTO Recipe VALUES(29,26,0.5)"
	db.execute "INSERT INTO Recipe VALUES(30,9,2)"
	db.execute "INSERT INTO Recipe VALUES(30,16,6)"
	db.execute "INSERT INTO Recipe VALUES(31,6,2)"
	db.execute "INSERT INTO Recipe VALUES(31,16,6)"
	db.execute "INSERT INTO Recipe VALUES(32,6,2)"
	db.execute "INSERT INTO Recipe VALUES(32,19,6)"
	db.execute "INSERT INTO Recipe VALUES(33,6,2)"
	db.execute "INSERT INTO Recipe VALUES(33,16,3)"
	db.execute "INSERT INTO Recipe VALUES(33,14,3)"
	db.execute "INSERT INTO Recipe VALUES(34,10,1.5)"
	db.execute "INSERT INTO Recipe VALUES(34,21,1)"
	db.execute "INSERT INTO Recipe VALUES(34,13,1)"
	db.execute "INSERT INTO Recipe VALUES(34,22,3.5)"
	db.execute "INSERT INTO Recipe VALUES(35,7,1.5)"
	db.execute "INSERT INTO Recipe VALUES(35,19,4.5)"
	db.execute "INSERT INTO Recipe VALUES(35,3,0.25)"
	db.execute "INSERT INTO Recipe VALUES(36,10,1.5)"
	db.execute "INSERT INTO Recipe VALUES(36,22,4.5)"
	db.execute "INSERT INTO Recipe VALUES(37,5,1.5)"
	db.execute "INSERT INTO Recipe VALUES(37,22,4.5)"
	db.execute "INSERT INTO Pump VALUES(1,'','',NULL,NULL)"
	db.execute "INSERT INTO Pump VALUES(2,'','',NULL,NULL)"
	db.execute "INSERT INTO Pump VALUES(3,'','',NULL,NULL)"
	db.execute "INSERT INTO Pump VALUES(4,'','',NULL,NULL)"
	db.execute "INSERT INTO Pump VALUES(8,'','',NULL,NULL)"
	db.execute "INSERT INTO Pump VALUES(9,'','',NULL,NULL)"
	db.execute "INSERT INTO Pump VALUES(10,'','',NULL,NULL)"


rescue SQLite3::Exception => e 
    
    puts "Exception occured"
    puts e
    
ensure
    db.close if db
end